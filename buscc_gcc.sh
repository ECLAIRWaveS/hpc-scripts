unset MKLROOT
unset I_MPI_ROOT
# in case used Intel compiler previously

# HPC often have some compiler versions that are broken.
# here's one we know works.
module load gcc/12.2.0

module load openmpi/4.1.5
