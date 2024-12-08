# <img width="20" height="20" src="https://gitlab.com/uploads/-/system/project/avatar/26713933/module.png?width=96" alt="Banner"> conda-piptools

## About
conda-piptools makes your conda environment and Python package management easier:
- It allows you to specify easily the exact Python version as well as other things you want (e.g. CUDA and CUDNN versions) for a conda environment;
- It allows you to better handle the dependencies and the compatibilities of your Python packages. More precisely, it requires you to only specify minimal constraints (e.g. `torch >= 1.7` and `numpy`) and conda-piptools will then figure out exact and mutually compatible versions (e.g. `torch==1.7.1` and `numpy==1.19.5`).
`

> ⓘ Note: conda-piptools uses conda and pip-tools underneath.

## Requirements
You need to have conda installed.

## Usage
Follow these steps:
1. Specify your Python version as well as the versions of other things (e.g. CUDA and CUDNN versions) you want for a conda environment in the `environment.yml` file;
2. Use the `setEnvName.sh` script to set the name of the new or existing conda environment:
```
❯ ./setEnvName.sh "yourEnvironmentName"
```
3. Specify your Python package requirements for the development and the production respectively in `requirements/dev.in` and `requirements/prod.in`;
4. Use the `make` command to create and/or update all your Python packages (use `make force` if you want to force it):
```
❯ make
```

## Multiple conda installed
If you have multiple conda installed from different providers (e.g. _Miniforge_, _Miniconda_ or _Anaconda_) or with different architectures (e.g. _x86_ and _arm64_), use conda-piptools inside the _base_ conda environment of the targeted conda.
