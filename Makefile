# Define variables
PYTHON = python  # Use python3 if not specified
BUILD= pyinstaller

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
	@$(BUILD) --onefile --name mogit src/main.py

lint: init
	@black .
	
clean:
ifeq ($(OS),Unix)
	rm -rf mogit.spec dist/ build/
else
	del mogit.spec dist/ build/
endif