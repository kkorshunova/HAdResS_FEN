//
// Created by Xenia Korshunova on 2019-06-07.
//

#ifdef HAVE_CONFIG_H
#include <config.h>
#endif

#include <math.h>

#include "types/simple.h"
#include "vec.h"
#include "typedefs.h"
#include "nb_generic_hadress_fen.h"

void
gmx_nb_generic_hadress_fen_kernel(t_mdatoms *          mdatoms,
                                  t_forcerec *         fr,
                                  int                  icoul,
                                  int                  ivdw,
                                  int                  nri,
                                  int *                iinr,
                                  int *                jindex,
                                  int *                jjnr,
                                  int *                shift,
                                  real *               shiftvec,
                                  real *               fshift,
                                  int *                gid,
                                  real *               x,
                                  real *               f,
                                  real *               chargeA,
                                  real *               chargeB,
                                  real                 facel,
                                  real                 krf,
                                  real                 crf,
                                  real                 ewc,
                                  real *               Vc,
                                  int *                typeA,
                                  int *                typeB,
                                  int                  ntype,
                                  real *               nbfp,
                                  real *               Vvdw,
                                  real                 tabscale,
                                  real *               VFtab,
                                  real                 lambda,
                                  real *               dvdlambda,
                                  real                 alpha,
                                  int                  lam_power,
                                  real                 sigma6_def,
                                  real                 sigma6_min,
                                  gmx_bool                 bDoForces,
                                  int *                outeriter,
                                  int *                inneriter,
                                  gmx_bool                 bCG)
{
    int           n,ii,is3,ii3,k,nj0,nj1,jnr,j3,ggid;
    real          shX,shY,shZ;
    real          Fscal,FscalA,FscalB,tx,ty,tz;
    real          VcoulA,VcoulB,VvdwA,VvdwB;
    real          rinv6,r,rt;
    real          iqA,iqB;
    real          qqA,qqB,vcoul,vctot,krsq;
    int           ntiA,ntiB;
    int           tjA,tjB;
    real          rinvsix;
    real          Vvdw6,Vvdwtot;
    real          Vvdw12;
    real          ix,iy,iz,fix,fiy,fiz;
    real          dx,dy,dz,rsq,r4,r6,rinv;
    real          c6A,c12A,c6B,c12B;
    real          dvdl,L1,alfA,alfB,dalfA,dalfB;
    real          sigma6a,sigma6b;
    real          rA,rinvA,rinv4A,rB,rinvB,rinv4B;
    int           do_coultab,do_vdwtab,do_tab,tab_elemsize;
    int           n0,n1,nnn;
    real          Y,F,G,H,Fp,Geps,Heps2,eps,eps2,VV,FF;
    double        isp=0.564189583547756;

    real *     wf;
    real       weight_cg1;
    real       weight_cg2;
    real       weight_product; //don't need that, just use hybscal
    real       hybscal;
    real       force_cap;
    real *     V_tot;
    // gmx_bool   bCG; //TODO is bCG necessary as argument above? can it be declared locally?
    real          rinvsq;


    V_tot            = mdatoms->V_tot; //no V_tot because correction is only for SOL-SOL interactions, this is all perturbed
    wf               = mdatoms->wf;
    force_cap        = fr->adress_ex_forcecap;


    /* avoid compiler warnings for cases that cannot happen */
    nnn                 = 0;
    vcoul               = 0.0;
    eps                 = 0.0;
    eps2                = 0.0;
    nj1 = 0;
    n1  = 0;

    dvdl = 0;
    L1   = 1.0 - lambda;

    alfA  = alpha*(lam_power==2 ? lambda*lambda : lambda);
    alfB  = alpha*(lam_power==2 ? L1*L1 : L1);
    dalfA = alpha*lam_power/6.0*(lam_power==2 ? lambda : 1);
    dalfB = alpha*lam_power/6.0*(lam_power==2 ? L1 : 1);


    tab_elemsize = 12; // table_nelements in generic_adress

    for(n=0; (n<nri); n++){
        is3              = 3*shift[n];
        shX              = shiftvec[is3];
        shY              = shiftvec[is3+1];
        shZ              = shiftvec[is3+2];
        nj0              = jindex[n];
        nj1              = jindex[n+1];
        ii               = iinr[n];
        ii3              = 3*ii;
        ix               = shX + x[ii3+0];
        iy               = shY + x[ii3+1];
        iz               = shZ + x[ii3+2];
        iqA              = facel*chargeA[ii];
        iqB              = facel*chargeB[ii];
        ntiA             = 2*ntype*typeA[ii];
        ntiB             = 2*ntype*typeB[ii];
        vctot            = 0;
        Vvdwtot          = 0;
        fix              = 0;
        fiy              = 0;
        fiz              = 0;

        if (fr->adress_group_explicit[ mdatoms->cENER[ii] ]) {
            bCG = FALSE;
        } else {
            bCG = TRUE;
        }

        weight_cg1       = wf[ii];

        for(k=nj0; (k<nj1); k++){
            jnr              = jjnr[k];
            j3               = 3*jnr;
            dx               = ix - x[j3];
            dy               = iy - x[j3+1];
            dz               = iz - x[j3+2];
            rsq              = dx*dx+dy*dy+dz*dz;
            rinv             = gmx_invsqrt(rsq);
            rinvsq           = rinv*rinv;
            r                = rsq*rinv;
            tjA              = ntiA+2*typeA[jnr];
            tjB              = ntiB+2*typeB[jnr];
            c6A              = nbfp[tjA];
            c6B              = nbfp[tjB];
            c12A             = nbfp[tjA+1];
            c12B             = nbfp[tjB+1];
            qqA              = iqA*chargeA[jnr];
            qqB              = iqB*chargeB[jnr];

            weight_cg2       = wf[jnr];
            hybscal   = (weight_cg1+weight_cg2)*0.5;

            if(bCG){
                hybscal = 1.0 - hybscal;
            }


            // from FEN kernel : determine the value of the sigma^6 for rA and rB
            if((c6A > 0) && (c12A > 0))
            {
                sigma6a      = c12A/c6A;
                if (sigma6a < sigma6_min)
                {
                    sigma6a  = sigma6_min;
                }
            }
            else
            {
                sigma6a      = sigma6_def;
            }
            if((c6B > 0) && (c12B > 0))
            {
                sigma6b      = c12B/c6B;
                if (sigma6b < sigma6_min)
                {
                    sigma6b  = sigma6_min;
                }
            }
            else
            {
                sigma6b      = sigma6_def;
            }

            r4               = rsq*rsq;
            r6               = r4*rsq;


            //STATE A
            FscalA           = 0;
            VcoulA           = 0;
            VvdwA            = 0;
            rinv4A           = 0;

            /* Only spend time on A state if it is non-zero */
            if( (qqA != 0) || (c6A != 0) || (c12A != 0) ){

            } //END STATE A


            //STATE B
            FscalB           = 0;
            VcoulB           = 0;
            VvdwB            = 0;
            rinv4B           = 0;

            /* Only spend time on B state if it is non-zero */
            if( (qqB != 0) || (c6B != 0) || (c12B != 0) ){

            } //END STATE B


            Fscal = 0;

            // Soft-core Ewald interaction not implemented
            if(icoul==5){
                gmx_fatal(FARGS,"Soft-core Ewald interaction not implemented for H-AdResS free energy kernel.\n");
            }


            // HERE COMES THE BIG PART! POSSIBLY MULTIPLY BY HYBSCAL HERE???
            /* Assemble A and B states */
            vctot         += (lambda*VcoulB + L1*VcoulA)*hybscal; //multiple by hybscal
            Vvdwtot       += (lambda*VvdwB  + L1*VvdwA)*hybscal; //multiple by hybscal

            Fscal         += (L1*FscalA*rinv4A + lambda*FscalB*rinv4B)*r4*hybscal; //multiple by hybscal
            dvdl          += (VcoulB + VvdwB) - (VcoulA + VvdwA);
            dvdl          += lambda*dalfB*FscalB*sigma6b*rinv4B
                             - L1*dalfA*FscalA*sigma6a*rinv4A; // dvdl shouldn't be scaled by hybscal since it's for perturbed interaction only

//TODO logic of kernel choice needs to be restructured...
            if (bDoForces)
            {
                tx         = Fscal*dx;
                ty         = Fscal*dy;
                tz         = Fscal*dz;
                fix        = fix + tx;
                fiy        = fiy + ty;
                fiz        = fiz + tz;
                f[j3]      = f[j3]   - tx;
                f[j3+1]    = f[j3+1] - ty;
                f[j3+2]    = f[j3+2] - tz;
            }


        } // end of k<nj1 loop (J particles of current I particle)

        if (bDoForces)
        {
            f[ii3]         = f[ii3]        + fix;
            f[ii3+1]       = f[ii3+1]      + fiy;
            f[ii3+2]       = f[ii3+2]      + fiz;
            fshift[is3]    = fshift[is3]   + fix;
            fshift[is3+1]  = fshift[is3+1] + fiy;
            fshift[is3+2]  = fshift[is3+2] + fiz;
        }
        ggid               = gid[n];
        Vc[ggid]           = Vc[ggid] + vctot;
        Vvdw[ggid]         = Vvdw[ggid] + Vvdwtot;

    } // end of n<nri loop (I particles of the current nlist)

    *dvdlambda      += dvdl;
    *outeriter       = nri;
    *inneriter       = nj1;



}
