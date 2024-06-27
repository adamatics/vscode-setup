# VSCode Setup Script

This repository contains a script to set up VSCode (code-server) with the necessary extensions and configurations for Python development. The script installs essential extensions and configures Git for the user.

## Purpose

The purpose of this script is to streamline the setup process for Python developers, ensuring they have all the tools they need for Python development in a consistent environment.

## Content

- `vscode-setup.sh`: A shell script that installs VSCode extensions, necessary Python tools, and configures Git.
- `settings.json`: A configuration file for VSCode settings.

## How to Use

1. **Clone the Repository**

    Open your terminal and run the following command:
    ```sh
    git clone https://github.com/adamatics/vscode-setup.git
    ```

2. **Navigate to the Repository Directory**

    ```sh
    cd vscode-setup
    ```

3. **Run the Setup Script**

    ```sh
    bash vscode-setup.sh
    ```

4. **Follow the Prompts**

    The script will prompt you to enter your Git username and email. Provide the necessary information when asked.

## Included Extensions

The script will install the following VSCode extensions:
- `donjayamanne.python-environment-manager`
- `ms-python.black-formatter`
- `ms-python.debugpy`
- `ms-python.python`
- `ms-toolsai.jupyter`
- `ms-toolsai.jupyter-keymap`
- `ms-toolsai.jupyter-renderers`
- `ms-toolsai.vscode-jupyter-cell-tags`
- `ms-toolsai.vscode-jupyter-slideshow`
- `njpwerner.autodocstring`
- `charliermarsh.ruff`

## Additional Python Tools

The script will also install the following Python tools:
- `black`
- `ruff`

## Git Configuration

The script will configure your Git settings for you. You will be prompted to enter your Git username and email during the setup process.

## Notes

- Ensure you have `pip` installed and available in your PATH.
- This script is intended to be run in a `code-server` environment.
- **Important:** The script will copy the `settings.json` file to the VSCode settings directory, which will overwrite any existing configuration. Make sure to back up your current VSCode settings if you need to preserve them.

Feel free to reach out if you have any issues or questions regarding the setup process.
