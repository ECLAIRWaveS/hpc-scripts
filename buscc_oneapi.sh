# need to load newer GCC first so that C++ works
module load gcc/12.2.0

module load intel/2024.0
module load openmpi/4.1.5_intel-2024

export CC=icx CXX=icpx FC=ifx
