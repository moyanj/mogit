# Define variables
PYTHON = python  # Use python3 if not specified
BUILD = pyinstaller
SRC = mogit

DIST_DIR := dist
BUILD_DIR := build

ifeq ($(OS),Windows_NT)
  OS := Windows
else
  OS := Unix
endif


# Define targets and dependencies
all: build

init:
	@echo "开始安装环境"
	@$(PYTHON) -m pip install -r requirements.txt
	@$(PYTHON) -m pip install -r requirements.dev.txt

build: init
	@$(BUILD) --onefile --name mogit $(SRC)/main.py

lint: init
	@black .
	
build_pypi: lint
	$(PYTHON) setup.py bdist_wheel -d $(DIST_DIR) sdist -d $(DIST_DIR) bdist_egg -d $(DIST_DIR) 

clean:
ifeq ($(OS),Unix)
	rm -rf mogit.spec dist/ build/ mogit.egg-info/
else
	del mogit.spec dist/ build/ mogit.egg-info/
endif