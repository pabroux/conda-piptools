# Oneshell means all lines in a recipe run in the same shell
.ONESHELL:

# Need to specify bash in order for conda activate to work
SHELL=/bin/bash

# Note that the extra activate is needed to ensure that the activate floats env to the front of PATH
CONDA_ACTIVATE=source $$(conda info --base)/etc/profile.d/conda.sh; conda activate; conda activate

# Same name as in environment.yml
CONDA_ENV=project-name

all: conda-env-update pip-compile pip-sync

# Force mode
force: conda-env-update pip-compile-force pip-sync

# Clean generated requirements
clean-generated-requirements:
	-rm requirements/prod.txt && rm requirements/dev.txt

# Create or update conda env
conda-env-update:
	conda env update --prune

# Compile exact pip packages
pip-compile: clean-generated-requirements
	$(CONDA_ACTIVATE) $(CONDA_ENV) && pip-compile -v requirements/prod.in && pip-compile -v requirements/dev.in

# Compile exact pip packages (force mode)
pip-compile-force: clean-generated-requirements
	$(CONDA_ACTIVATE) $(CONDA_ENV) && pip-compile --allow-unsafe -v requirements/prod.in && pip-compile --allow-unsafe -v requirements/dev.in

# Install pip packages
pip-sync:
	$(CONDA_ACTIVATE) $(CONDA_ENV) && pip-sync requirements/prod.txt requirements/dev.txt
