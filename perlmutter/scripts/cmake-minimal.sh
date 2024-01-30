rm -rf build
cmake -S BOUT-dev -B build \
    -DCMAKE_C_COMPILER=gcc \
    -DCMAKE_CXX_COMPILER=g++ \
    -DBOUT_ENABLE_RAJA=on \
    -DBOUT_ENABLE_UMPIRE=on \
    -DBOUT_ENABLE_CUDA=on \
    -DCMAKE_CUDA_ARCHITECTURES=80 \
    -DCUDA_ARCH=compute_80,code=sm_80 \
    -DBOUT_ENABLE_WARNINGS=off \
    -DBOUT_USE_SYSTEM_FMT=on
