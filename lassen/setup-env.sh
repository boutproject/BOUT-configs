echo "Setting up BOUT++ spack env on $(hostname)..."
module purge 2> /dev/null
module load gcc/12.2.1
module load cmake/3.29.2
module load cuda/12.2.2

# Set the path to the parent directory.
BOUT_CONFIG_PATH=$(dirname "${BASH_SOURCE[0]:-$0}")
echo "BOUT_CONFIG_PATH = ${BOUT_CONFIG_PATH}"

# Import spack and setup packages
export SPACK_USER_CONFIG_PATH=${BOUT_CONFIG_PATH}/.spack
export SPACK_USER_CACHE_PATH=${BOUT_CONFIG_PATH}/.spack
. ${BOUT_CONFIG_PATH}/../spack/share/spack/setup-env.sh
spack env activate -p ${BOUT_CONFIG_PATH}/boutdev-spack-env
set -x
spack install --fail-fast
set +x
