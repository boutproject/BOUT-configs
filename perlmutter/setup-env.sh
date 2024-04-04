echo "Setting up spack env on $(hostname)"
# Disable MPICH GPU to avoid runtime error
# TODO: fix
export MPICH_GPU_SUPPORT_ENABLED=0

# Import spack and setup packages
export SPACK_USER_CONFIG_PATH=${PWD}/.spack
export SPACK_USER_CACHE_PATH=${PWD}/.spack
. ${PWD}/../spack/share/spack/setup-env.sh
spack env activate -p boutdev-spack-env
echo $(spack install)
