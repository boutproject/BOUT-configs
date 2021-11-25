#!/usr/bin/env bash
module purge
export SPACK_ROOT=/usr/WS2/BOUT-GPU/lassen/env/spack
. $SPACK_ROOT/share/spack/setup-env.sh
eval `spack --config-scope /usr/workspace/BOUT-GPU/lassen/env env activate --sh bout_petsc_with_hypre`

module refresh
module --ignore-cache load gcc/8.3.1
module --ignore-cache load cmake/3.14.5
module --ignore-cache load spectrum-mpi/rolling-release
module --ignore-cache load cuda/10.1.243
module --ignore-cache load totalview/2020.1.13
echo "Loading bout_petsc_with_hypre Group Environment"
source /usr/WS2/BOUT-GPU/lassen/env/spack/var/spack/environments/bout_petsc_with_hypre/loads

module list


