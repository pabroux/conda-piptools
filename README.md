## <img width="35" height="35" src="https://gitlab.com/uploads/-/system/project/avatar/26713933/python__6_.png" alt="Banner"> CondaPipManager
By Sulfyderz.

## About
CondaPipManager is a way to better handle your Python packages and keep them up-to-date. It handles their dependencies and their compatibilities thanks to `conda` and `pip-tools`. More precisely, it requires you to only specify minimal constraints (for instance: `torch >= 1.7` and `numpy`) and CondaPipManager will then figure out exact and mutually compatible versions (for instance: `torch==1.7.1` and `numpy==1.19.5`).

## Requirements
You need to have `conda` installed.

## How to use it?
Follow the steps:
1. Specify your Python and CUDA (optional) versions in `environment.yml`;
2. Use `./setEnvName.sh "envName"` to set the name of the new or existing conda environment;
3. Specify your requirements for the development and the production respectively in `requirements/dev.in` and `requirements/prod.in`;
4. Use `make` to create and/or update all your packages (use `make force` if you want to force it). 
