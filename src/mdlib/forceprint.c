//
// Created by Xenia Korshunova on 2019-10-24.
//

#ifndef GROMACS_FORCEPRINT_H
#define GROMACS_FORCEPRINT_H

#endif //GROMACS_FORCEPRINT_H

#include <stdio.h>
#include "typedefs.h"

void print_force(t_commrec *cr, rvec * force, gmx_large_int_t step, int natoms, int num) {

    int i;
    FILE * ptr_force;
    char fnamebuf[200];

    if (MASTER(cr)) {

        sprintf(fnamebuf, "force_all_atoms_%d.dat", num); //sprintf(fnamebuf, "F_%d.dat", (int)step);
        ptr_force = fopen(fnamebuf, "a");
        fprintf(ptr_force, "%5d", (int) step);
        for (i = 0; i < natoms; i++) {
            fprintf(ptr_force, "%10.3f%10.3f%10.3f", force[i][0], force[i][1],
                    force[i][2]);
        }
        fprintf(ptr_force, "\n");

        fclose(ptr_force);
    }

}