rm -rf build-hypre
cmake -S BOUT-dev -B build-hypre \
    -DCMAKE_C_COMPILER=gcc \
    -DCMAKE_CXX_COMPILER=g++ \
    -DBUILD_SHARED_LIBS=off \
    -DBOUT_ENABLE_RAJA=on \
    -DBOUT_ENABLE_UMPIRE=on \
    -DBOUT_ENABLE_CUDA=on \
    -DBOUT_USE_HYPRE=on \
    -DCMAKE_CUDA_ARCHITECTURES=70 \
    -DCUDA_ARCH=compute_70,code=sm_70 \
    -DBOUT_ENABLE_WARNINGS=off \
    -DBOUT_USE_SYSTEM_FMT=on

# HYPRE_ROOT
