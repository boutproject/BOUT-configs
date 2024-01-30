# Configuration scripts

This repo contains scripts to setup the environment and provide build 
configurations for BOUT++ on deployment machines.

There is one sub-directory for each machine ("cori", "lassen", "perlmutter").
See the README of each sub-directory for machine specific instructions.

The repo includes `spack` (release v0.21.1) as a submodule, used to create
reproducible, self-contained environments on different machines.

:construction: This repo is under active development, `perlmutter` configuration
is in a stable state, other machines are under update.
Issues and PRs to `main` are welcome.

## Usage

Clone the repo and initialize submodules
```
git clone --recurse-submodules https://github.com/boutproject/BOUT-configs.git
```

Enter the machine sub-directory desired and follow the instructions.
Typical usage is to `source setup-env.sh` to activate the spack enviroment,
which will install any needed software dependencies through `spack`, and
configure BOUT++ using either scripts under the machine's `scripts` directory
or with the user's own configuration.

## Contact

Feel free to contact Giorgis Georgakoudis <georgakoudis1@llnl.gov> for comments,
suggestions, or questions.
