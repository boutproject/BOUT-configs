Quick start
-----------

1. Clone this repo/branch on ARCHER2
    ```
    git clone git@github.com:boutproject/BOUT-configs -b archer
    ```
    * Note that you should put the repo on the `/work` filesystem, not `/home`,
      so that libraries, etc. are accessible from the compute nodes.
2. `cd BOUT-configs/archer`
3. Set up your environment
    ```
    source bout.env
    ```
    * If you usually want BOUT++ on ARCHER2, it is probably useful to put this
      setup into your .bashrc, e.g. add a line like
        ```
        source /work/e281/e281/yourusername/BOUT-configs/archer/bout.env
        ```
    * Warning: this setup has only been tested when starting with the default
      modules. If you have modules loaded for another project then there may be
      conflicts...
4. Build the dependencies
    ```
    ./build-dependencies.sh
    ```
4. Build BOUT++ using one of the scripts provided here. Either
    ```
    ./build.sh
    ```
    for an optimised build, or
    ```
    ./build-debug.sh
    ```
    for a debugging build with all checks enabled.
      * The builds are done using CMake, so are out-of-source builds. Therefore
        both optimised and debug builds can be compiled at the same time, from
        the same source code.
5. The tests must be run in the batch queue.
    * Note that the job scripts provided assume that you have access to ARCHER2
      through the e281-bout project, which is a subgroup of the e281 account
      belonging to the Plasma HEC Consortium. If this is not the case then you
      will need to change the `#SBATCH --account=e281-bout` line.
    * For the optimised version run `sbatch test.job`, and examine the output
      in `test.log` and `test.err`.
    * For the optimised version run `sbatch test-debug.job`, and examine the
      output in `test-debug.log` and `test-debug.err`.
    * At the time of writing `test-drift-instability` fails with a result
      marginally outside the tolerance. The unit tests seem to have some error
      during finalisation, and for the debug build the segmentation fault
      signal test fails.
6. To build your `PhysicsModel`, see the instructions at
   https://bout-dev.readthedocs.io/en/latest/user_docs/installing.html#using-cmake-with-your-physics-model
   Note: you will likely need to use the flag `-DCMAKE_CXX_COMPILER=CC` when 
   compiling your application with CMake. This can help CMake find BLAS
   correctly in ARCHER2's Cray environment.


Notes
-----
Optimised build uses flags recommended by Cray, i.e. `-fast` (equivalent to
`-Ofast -flto`), see
https://support.hpe.com/hpesc/public/docDisplay?docId=a00115299en_us&page=Performance_Options.html
The exception is PETSc, which gives a configuration error if C/C++ flags
include `-fast`:
```
Unknown Fortran name mangling: Are you sure the C and Fortran compilers are compatible?
  Perhaps one is 64 bit and one is 32 bit?
```
PETSc configuration instead uses `-Ofast` for C, C++ and Fortran.
