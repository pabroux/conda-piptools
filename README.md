# <img width="40" height="40" src="https://gitlab.com/uploads/-/system/project/avatar/26713933/module.png?width=96" alt="Banner"> PXC
By Sulfyderz.

## About
PXC is a way to better handle your Python packages and keep them up-to-date. It handles their dependencies and their compatibilities thanks to `conda` and `pip-tools`. More precisely, it requires you to only specify minimal constraints (e.g. `torch >= 1.7` and `numpy`) and PXC will then figure out exact and mutually compatible versions (e.g. `torch==1.7.1` and `numpy==1.19.5`).

## Requirements
You need to have `conda` installed.

## Usage
Follow these steps:
1. Specify your Python and CUDA (optional) versions in `environment.yml`;
2. Use the `setEnvName.sh` script to set the name of the new or existing conda environment:
```
❯ ./setEnvName.sh "yourEnvironmentName"
```
3. Specify your requirements for the development and the production respectively in `requirements/dev.in` and `requirements/prod.in`;
4. Use the `make` command to create and/or update all your packages (use `make force` if you want to force it):
```
❯ make
```

## Multiple conda?
If you have multiple `conda` installed from different providers (e.g. _Miniforge_, _Miniconda_ or _Anaconda_) or with different architectures (e.g. _x86_ and _arm64_), use PXC inside the `base` environment of the targeted `conda`.
