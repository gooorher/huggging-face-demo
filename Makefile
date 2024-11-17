# Install dependencies
install:    
    pip install --upgrade pip &&\
        pip install -r requirements.txt

# Run tests
test:
    $(PYTHON) -m unittest discover -s tests

# Debug
debug:
    $(PYTHON) -m pdb main.py

# Run a single test
one-test:
    $(PYTHON) -m unittest $(TEST)

# Clean up
clean:
    rm -rf venv

.PHONY: install test debug one-test clean