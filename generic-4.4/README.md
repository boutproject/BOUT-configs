This branch contains configuration for the 4.4 series of BOUT++, on a generic
Linux machine (e.g. laptop/desktop). It was tested with Linux Mint 20.2.

Quick start
-----------

1. Ensure you have some compilers, MPI, FFTW, Lapack, NetCDF, cmake and
    clang-format installed, e.g.
    ```
    sudo apt install g++ openmpi-bin libfftw3-dev liblapack-dev libnetcdf-c++4-dev cmake clang-format
    ```
2. Clone this repo/branch
    ```
    git clone git@github.com:boutproject/BOUT-configs -b generic-4.4
    ```
3. `cd BOUT-configs/generic-4.4`
4. Build the dependencies
    ```
    ./build-dependencies.sh
    ```
5. Build BOUT++ using one of the scripts provided here. Note: it is suggested
    to deactivate your `conda` environment (if you are using one) before
    configuring to avoid library conflicts. To build BOUT++, run either
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
6. Run the tests
    ```
    ./test.sh
    ```
    for the optimised build, or
    ```
    ./test-debug.sh
    ```
    for the debugging build.
7. To build your `PhysicsModel`, see the instructions at
   https://bout-dev.readthedocs.io/en/latest/user_docs/installing.html#using-cmake-with-your-physics-model
