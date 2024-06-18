echo "Setting up BOUT++ spack env on $(hostname)..."
module purge 2> /dev/null
. /opt/cray/pe/cpe/23.12/restore_lmod_system_defaults.sh
module load PrgEnv-gnu
module load cmake/3.24.3
module load gcc-native/12.3
module load craype-x86-milan
module load libfabric
module load cudatoolkit/12.2

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
