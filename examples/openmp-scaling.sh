# Simple scaling study using polyethylene chain of 1024 atoms and 12,288 atoms
# using OpenMP
export OMP_NUM_THREADS=1; ../bin/CoSP2 --hmatName data/hmatrix.1024.mtx -N 12288 -M 256
export OMP_NUM_THREADS=2; ../bin/CoSP2 --hmatName data/hmatrix.1024.mtx -N 12288 -M 256
export OMP_NUM_THREADS=4; ../bin/CoSP2 --hmatName data/hmatrix.1024.mtx -N 12288 -M 256
export OMP_NUM_THREADS=8; ../bin/CoSP2 --hmatName data/hmatrix.1024.mtx -N 12288 -M 256
export OMP_NUM_THREADS=16; ../bin/CoSP2 --hmatName data/hmatrix.1024.mtx -N 12288 -M 256
