# HPC scripts

General source scripts useful for particular HPC to load compiler environments.

These scripts are generally meant to be "source"d from a fresh HPC login e.g.:

```sh
source nautilus_gcc_openmpi.sh
```

## Debug / Test

To verify an environment is working (particularly important for MPI), try a 
[simple test program](https://github.com/scivision/fortran-mpi-examples).

## MPI-3 Fortran support

Sometimes a particular MPI library on a particular system/compiler is missing MPI-3 Fortran support that we require.
The key telltale for this is "mpi_f08.mod" is not present in the include directories for the MPI library--it should be in the same directory as "mpi.mod".
To find this without using CMake as in the [MPI test project](https://github.com/scivision/fortran-mpi-examples), you can do it by hand like:

```sh
mpicc -show
```

this will reveal the MPI include directories with "-I" flags--there might be only one or two "-I" directories to look in.
Doing an "ls" in that directory should have "mpi.h" for C, "mpi.mod" for MPI-2 Fortran, and importantly "mpi_f08.mod" for MPI-3 Fortran.
If you see "mpi.mod" but not "mpi_f08.mod" consider asking the system admin to build MPI with MPI-3 Fortran, or 
[build MPI yourself](https://github.com/gemini3d/external/blob/main/scripts/build_openmpi.cmake).
On HPC particularly large/complex systems like Cray, we suggest having the system admins build MPI to help ensure the HPC is being used efficiently.
