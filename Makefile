VIRTUALENV = ~/.venv/n_body/bin/activate

# Text Color Usage: @echo "$(RED) error message $(NORMAL)"
RED = \x1b[31;01m
GREEN = \x1b[32;01m
YELLOW = \x1b[33;01m
NORMAL = \x1b[m

run:
	@echo "$(GREEN)Running n-body simulation$(NORMAL)"; \
	source $(VIRTUALENV)
	python n_body

install:
	@echo "$(GREEN)Installing dependencies$(NORMAL)"; \
	source $(VIRTUALENV); \
	python3 -m pip install -r requirements/dev.txt -r requirements/base.txt --upgrade --upgrade-strategy=eager
	@echo "$(GREEN)Currently installed packages:$(NORMAL)"; \
	source $(VIRTUALENV); \
	python3 -m pip freeze

clean:
	@echo "$(GREEN)Installing dependencies$(NORMAL)"; \
	source $(VIRTUALENV); \

clean-install: clean install

test:
	@echo "TODO - no tests implemented"

lint:
	@echo "TODO - no lint command implemented"

pre-commit: lint test

help:
	@echo "TODO - help command not implemented"

.PHONY: help
