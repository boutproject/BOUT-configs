Quick start
-----------

1. Clone this repo/branch on Marconi
    ```
    git clone git@github.com:boutproject/BOUT-configs -b marconi
    ```
2. `cd BOUT-configs/marconi-gnu-openmpi`
3. Set up your environment
    ```
    source bout.env
    ```
    * If you usually want BOUT++ on Marconi, it is probably useful to put this
      setup into your .bashrc, e.g. add a line like
        ```
        source /work/FUA35_SOLBOUT5/yourusername/BOUT-configs/marconi-gnu-openmpi/bout.env
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

5. Set up Python environment for tests. The configuration here is set up to be
   compatible with `conda`, so it is suggested to use `conda` to install the
   needed Python packages.
    ```
    conda install importlib-metadata netcdf4 numpy scipy
    ```
6. To run the tests, run
    ```
    ./test.sh
    ```
    to test the optimised build, or
    ```
    ./test-debug.sh
    ```
    for the debugging build.
7. To build your `PhysicsModel`, see the instructions at
   https://bout-dev.readthedocs.io/en/latest/user_docs/installing.html#using-cmake-with-your-physics-model.
   The build directories are at
   ```
   BOUT-configs/BOUT-dev/build-gnu-openmpi
   BOUT-configs/BOUT-dev/build-gnu-openmpi-debug
   ```
