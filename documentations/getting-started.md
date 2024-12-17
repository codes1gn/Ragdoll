# Getting Started

To get started with the project, follow these steps to set up the Python sandbox environment, install dependencies, build the project, and run tests.

---

## 1. Create a Python Sandbox Execution Environment

Start by creating a virtual environment to isolate your project’s dependencies. This ensures that the project uses its own dependencies, avoiding conflicts with other Python projects.

```bash
make bootstrap
```

This will create a Python sandbox, which includes the environment and necessary packages.

## 2. Activate the Sandbox Environment
Once the sandbox environment is set up, you need to activate it. This is done depending on the shell you are using.

For Bash or Zsh:

```bash
source ./sandbox/bin/activate
```

For C-shell (csh or tcsh):
```bash
source ./sandbox/bin/activate.csh
```
For Fish shell:
```bash
source ./sandbox/bin/activate.fish

```

Activating the environment will ensure that your project uses the correct dependencies installed within the sandbox.

## 3. Compile Project Dependencies
Before building the project, you need to compile its dependencies, which include LLVM, MLIR, IREE, and other necessary libraries. Use the following command to compile and set up these dependencies:

```bash
make setup
```
This will ensure that all necessary dependencies are compiled and ready for use in the project.

## 4. Build and Install the Project
Once the dependencies are set up, you can proceed to build the project. This step compiles and prepares the project's source code for use.

This will compile the project, including the core components and any necessary extensions.

After the build completes successfully, the next step is to install the project on your system. This will copy the necessary files and configurations to their appropriate locations for runtime use.
```bash
make build
```

## 5. Verify the Installation
To verify that the project has been correctly set up, you can run the tests to ensure everything is working as expected. The following command will execute the project’s test suite:
```bash
make test
```
This will run the tests and output the results, allowing you to confirm that the setup and installation were successful.
