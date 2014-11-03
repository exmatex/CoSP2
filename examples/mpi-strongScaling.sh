# Simple strong scaling study using polyethylene chain of 1024 atoms and 12,288 atoms
mpirun -np 1 ../bin/CoSP2Parallel --hmatName data/hmatrix.1024.mtx -N 12288 -M 256
mpirun -np 2 ../bin/CoSP2Parallel --hmatName data/hmatrix.1024.mtx -N 12288 -M 256
mpirun -np 4 ../bin/CoSP2Parallel --hmatName data/hmatrix.1024.mtx -N 12288 -M 256
mpirun -np 8 ../bin/CoSP2Parallel --hmatName data/hmatrix.1024.mtx -N 12288 -M 256
mpirun -np 16 ../bin/CoSP2Parallel --hmatName data/hmatrix.1024.mtx -N 12288 -M 256
