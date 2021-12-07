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
    * For the optimised version run `sbatch test.job`, and examine the output in
      `test.log` and `test.err`.
    * For the optimised version run `sbatch test-debug.job`, and examine the
      output in `test-debug.log` and `test-debug.err`.
    * At the time of writing `test-drift-instability` fails with a result
      marginally outside the tolerance. The unit tests seem to have some error
      during finalisation, and for the debug build the segmentation fault
      signal test fails.
6. To build your `PhysicsModel`, see the instructions at
   https://bout-dev.readthedocs.io/en/latest/user_docs/installing.html#using-cmake-with-your-physics-model
