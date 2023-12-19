# HPC scripts

General source scripts useful for particular HPC to load compiler environments.

These scripts are generally meant to be "source"d from a fresh HPC login e.g.:

```sh
source nautilus_gcc_openmpi.sh
```

## Debug / Test

To verify an environment is working (particularly important for MPI), try a 
[simple test program](https://github.com/scivision/fortran-mpi-examples).
