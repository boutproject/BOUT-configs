# Usage

Clone the repo and initialize submodules:
```
git clone --recurse-submodules https://github.com/boutproject/BOUT-configs.git
```

Source `setup-env.sh`  to activate the spack enviroment and install software
dependencies (installation happens only the first time):
```
source setup-env.sh
```

There is a minimal cmake configuration script under `scripts`, invoke it at the
same path where the `BOUT-dev` directory is and it will output a minimal, GPU-enabled
configuration under a created `build` directory:
```
<path>/cmake-minimal.sh
cd build
make -j
```
