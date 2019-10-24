//
// Created by Xenia Korshunova on 2019-06-07.
//

#ifndef _nb_generic_hadress_fen_h_ //#ifndef GROMACS_NB_GENERIC_HADRESS_FEN_H
#define _nb_generic_hadress_fen_h_ //#define GROMACS_NB_GENERIC_HADRESS_FEN_H

#include "types/simple.h"
#include "typedefs.h"

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
                          gmx_bool                 bCG);

#endif //GROMACS_NB_GENERIC_HADRESS_FEN_H

