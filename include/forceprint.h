//
// Created by Xenia Korshunova on 2019-10-24.
//

#ifndef GROMACS_FORCEPRINT_H
#define GROMACS_FORCEPRINT_H

#endif //GROMACS_FORCEPRINT_H

#include <stdio.h>
#include "typedefs.h"

void print_force(t_commrec *cr, rvec * force, gmx_large_int_t step, int natoms, int num);