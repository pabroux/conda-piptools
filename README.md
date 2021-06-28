# CondaPipManager
By Sulfyderz.

## About:
CondaPipManager is a way to better handle your Python packages and keep them up-to-date. It handles their dependencies and their compatibilities thanks to `conda` and `pip-tools`. More precisely, it requires you to only specify minimal constraints (`torch >= 1.7` and `numpy`). CondaPipManager will then figure out exact and mutually compatible versions (`torch==1.7.1` and `numpy==1.19.5`).

## Prerequisite:
You need to have `conda` installed.

## How to use ?
Follow the steps:
1. Specify your Python and CUDA (optional) versions in `environment.yml`;
2. Use `./setEnvName.sh "envName"` to set a name for the new conda environment;
3. Specify your requirements for the production and the development respectively in `requirements/prod.in` and `requirements/dev.in`;
4. Use `make` to create and/or update all your packages (use `make force` if you want to force it). 

