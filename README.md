# Databases 2 LaTeX Cheatsheet

This repository contains the source files for a comprehensive, three-column cheatsheet for a Databases 2 course, created using LaTeX. The project is structured for easy management and compilation.

## Project Overview

The goal of this project is to create a compact, landscape-oriented cheatsheet covering key topics in a second-level database course. The content is organized into logical sections, and the compilation process is automated with a `Makefile`.

### Topics Covered

* Concurrency Control
* Ranking Algorithms
* JPA (Java Persistence API)
* Database Triggers
* Physical Database Design

## Prerequisites

To compile this project, you will need a working LaTeX distribution installed on your system. Common distributions include:

* **TeX Live:** For Linux and Windows.
* **MiKTeX:** For Windows.
* **MacTeX:** For macOS.

The `latexmk` utility, which is included in most modern TeX distributions, is required for the `Makefile` to work correctly.

## Project Structure

The repository is organized as follows:

```
.
├── .vscode/
│   └── tasks.json      # VS Code tasks for building and cleaning
├── Makefile            # Automates the compilation process
├── main.tex            # The main LaTeX file that ties everything together
├── out/                # (Generated) Output directory for the PDF
├── preamble.tex        # Contains all LaTeX packages and document settings
└── sections/
    ├── concurrency_control.tex
    ├── ranking.tex
    ├── jpa.tex
    ├── triggers.tex
    └── physical_databases.tex
```

* **`main.tex`**: The root document. It sets up the title page and includes the content from the `sections/` folder.
* **`preamble.tex`**: Defines the document class, page geometry (landscape, 3-column), and imports all necessary LaTeX packages.
* **`sections/`**: This directory contains the actual content of the cheatsheet, split into multiple `.tex` files for better organization.
* **`Makefile`**: Provides two main commands: `make` to compile the project and `make clean` to remove generated files.
* **`.vscode/tasks.json`**: Defines tasks for Visual Studio Code to easily run the `make` commands from the editor.
* **`out/`**: This directory is created automatically by the `Makefile` and will contain the final `main.pdf` file along with other compilation artifacts.

## How to Compile

You can compile the cheatsheet using the command line or directly within Visual Studio Code if you have it set up.

### Using the Command Line

1. Open a terminal or command prompt.
2. Navigate to the root directory of this project.
3. Run the following command to build the PDF:
   ```
   make
   ```
4. The compiled PDF will be located at `out/main.pdf`.
5. To clean up all generated files (including the `out/` directory), run:
   ```
   make clean
   ```

### Using Visual Studio Code

1. Open the project folder in VS Code.
2. Open the Command Palette (`Ctrl+Shift+P` or `Cmd+Shift+P`).
3. Type "Run Task" and select one of the following:
   * **Build Cheatsheet**: Compiles the project (equivalent to `make`). You can also use the shortcut `Ctrl+Shift+B` or `Cmd+Shift+B`.
   * **Clean Project**: Cleans the project directory (equivalent to `make clean`).
