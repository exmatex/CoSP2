# Simple scaling study using polyethylene chain of 1024 atoms and 12,288 atoms
# using MPI + OpenmP
export OMPI_MCA_opal_paffinity_alone=0
export OMP_NUM_THREADS=16
mpirun -np 1 -bynode -x OMP_NUM_THREADS ../bin/CoSP2Parallel --hmatName data/hmatrix.1024.mtx -N 12288 -M 256
mpirun -np 2 -bynode -x OMP_NUM_THREADS ../bin/CoSP2Parallel --hmatName data/hmatrix.1024.mtx -N 12288 -M 256
mpirun -np 4 -bynode -x OMP_NUM_THREADS ../bin/CoSP2Parallel --hmatName data/hmatrix.1024.mtx -N 12288 -M 256
mpirun -np 8 -bynode -x OMP_NUM_THREADS ../bin/CoSP2Parallel --hmatName data/hmatrix.1024.mtx -N 12288 -M 256
mpirun -np 16 -bynode -x OMP_NUM_THREADS ../bin/CoSP2Parallel --hmatName data/hmatrix.1024.mtx -N 12288 -M 256
