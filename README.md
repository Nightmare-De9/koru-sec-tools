# Koru Sec Tools v1

**Project Name**: Koru Sec Tools v1  
**Author**: @Nightmare-De9  
**Description**: A collection of interactive scripts for installing and verifying security and privacy tools on Linux and Windows. This project aims to provide an easy-to-use solution for users seeking to enhance their privacy and anonymity.

---

## Table of Contents

- [Introduction](#introduction)
- [Installation](#installation)
  - [Linux (Bash)](#linux-bash)
  - [Windows (PowerShell)](#windows-powershell)
- [Usage](#usage)
- [Contribution](#contribution)
- [License](#license)

---

## Introduction

Koru Sec Tools v1 consists of two scripts:
1. **Linux (Bash Script)**: `bskoru.sh` for Linux-based systems.
2. **Windows (PowerShell Script)**: `pswkoru.ps1` for Windows systems.

Both scripts allow users to install various security and privacy tools, check whether they are installed, and guide users through installing missing tools interactively. The scripts provide a colorful command-line interface (CUI) for a smooth and user-friendly experience.

---

## Installation

### Linux (Bash)

1. **Clone the repository** or download the `bskoru.sh` script:

   ```bash
   git clone https://github.com/Nightmare-De9/koru-sec-tools.git
   cd koru-sec-tools
   ```

2. **Make the script executable**:

   ```bash
   chmod +x bskoru.sh
   ```

3. **Run the script**:

   ```bash
   sudo ./bskoru.sh
   ```

   - The script will prompt you to select tools to install by entering numbers separated by spaces.
   - It will check if the tools are installed and only install the ones that are missing.

### Windows (PowerShell)

1. **Download the `pswkoru.ps1` script**:

   - You can clone the repository or download the script directly from [GitHub](https://github.com/Nightmare-De9/koru-sec-tools).

2. **Run PowerShell as Administrator**.

3. **Set the execution policy** (if not already set):

   ```powershell
   Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
   ```

4. **Run the script**:

   Navigate to the directory where `pswkoru.ps1` is located and run:

   ```powershell
   .\pswkoru.ps1
   ```

   - You will be prompted to choose which tools to install.
   - The script will verify which tools are installed and install the missing ones.

---

## Usage

### Linux (Bash Script)

- The script will show a list of tools available for installation.
- Each tool is displayed with its corresponding number. You can select one or more tools to install by entering the numbers (separated by spaces).
- The script checks whether each selected tool is already installed and installs any missing ones.

### Windows (PowerShell Script)

- The PowerShell script functions similarly to the Bash version. You will be prompted to select the tools you want to install.
- If a tool is not installed, the script will automatically install it (via Chocolatey, where applicable). If the tool requires manual installation, it will provide instructions or direct you to the website.

---

## Contribution

If you'd like to contribute to Koru Sec Tools v1, follow these steps:

1. **Fork the repository** on GitHub.
2. **Clone your fork** to your local machine:

   ```bash
   git clone https://github.com/yourusername/koru-sec-tools.git
   cd koru-sec-tools
   ```

3. **Create a new branch** for your feature or fix:

   ```bash
   git checkout -b feature/your-feature-name
   ```

4. **Make your changes** in the code and commit them:

   ```bash
   git add .
   git commit -m "Add new feature or fix"
   ```

5. **Push the changes** to your fork:

   ```bash
   git push origin feature/your-feature-name
   ```

6. **Create a pull request** to the `main` branch of the original repository.

### Reporting Issues

If you encounter any bugs or issues, please open an issue on the [GitHub repository](https://github.com/Nightmare-De9/koru-sec-tools/issues). Provide as much detail as possible, including your OS version, script output, and a description of the problem.

---

## License

Koru Sec Tools v1 is released under the **MIT License**. See the [LICENSE](LICENSE) file for more information.

---

### About the Author

This tool was developed by **@Nightmare-De9**, with the goal of helping users enhance their security and privacy while maintaining a user-friendly interface.

--- 

### End of README

This README provides a comprehensive guide on how to install and use the tools, how to contribute, and information about the license. Adjust the `yourusername` placeholders with your actual GitHub username or repository information when preparing the project for public use.
