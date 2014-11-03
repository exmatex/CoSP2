/// \file
/// SP2 loop functions.

#ifndef __SP2LOOP_H
#define __SP2LOOP_H

#include <stdio.h>

#include "decomposition.h"
#include "sparseMatrix.h"
#include "mytype.h"

void sp2Loop(struct SparseMatrixSt* xmatrix, struct DomainSt* domain);
void reportResults(int iter, struct SparseMatrixSt* xmatrix, struct SparseMatrixSt* x2matrix, struct DomainSt* domain);

#endif
