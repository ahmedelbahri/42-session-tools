# Scripts for Fixing Intra 42 Problems on New Ubuntu

This repository contains scripts designed to solve certain issues encountered on new Ubuntu installations for 42 Intra. These problems include installing **Homebrew** and **Node.js** in the `goinfre` directory to ensure proper configuration and functioning of development tools.

---

## Overview

The scripts provided in this repository address the following:

1. **Homebrew Installation**: Tweaked an existing script to install Homebrew on Ubuntu. This ensures the proper setup of package management using Homebrew in your environment.
   - source :
     ```
     https://github.com/kube/42homebrew
     ```

3. **Node.js Installation in `goinfre`**: I created a custom script that installs Node.js in the `goinfre` directory, making it usable without interfering with system configurations. This is particularly helpful when working within the Intra environment.

---

## Scripts

### 1. **brew_install.sh**
   - This script installs **Homebrew** on Ubuntu. The original script has been modified to work more seamlessly with the Intra environment and the new Ubuntu setup.
   - To run it:
     ```bash
     ./installBrew.sh
     ```

### 2. **node_install.sh**
   - This is a custom script I created to install **Node.js** into the `goinfre` directory, allowing it to be isolated from the system and ensuring smooth operation within the Intra 42 environment.
   - To run it:
     ```bash
     ./installNode.sh
     ```

---

## Usage

1. Clone the repository:
   ```bash
   git clone https://github.com/ahmedelbahri/42-session-tools.git
   cd 42-session-tools
   ```
## Future Scripts
New scripts may be added to the repository in the future to address additional issues or improve the setup process.

