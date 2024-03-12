# source this script

module unload amd/aocc/4.0.0
# that unsets $CC $FC $CXX

module unload penguin/openmpi/4.1.4/aocc
# no MPI for AOCC

# I leave amd/aocl/aocc/4.0 enabled as that 'should' be GCC ABI compatible?

module load penguin/openmpi/5.0.1/gcc-8.5.0
# OpenMPI for GCC
