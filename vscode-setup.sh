#!/bin/bash

# vscode-setup.sh
# This script sets up VSCode (code-server) with the necessary extensions and configurations for Python development.

# Function to install VSCode extensions
install_extension() {
    code-server --install-extension $1
}

# Prompt the user for their Git configuration
echo "Configuring Git..."

# Check for username in environment variables
if [ -z "$USER" ]; then
    if [ -z "$LOGNAME" ]; then
        read -p "Enter your Git username: " git_username
    else
        git_username=$LOGNAME
    fi
else
    git_username=$USER
fi

git config --global user.name "$git_username"

# Prompt for email as before
read -p "Enter your Git email: " git_email
git config --global user.email "$git_email"

# List of VSCode extensions to be installed
extensions=(
    donjayamanne.python-environment-manager
    ms-python.black-formatter
    ms-python.debugpy
    ms-python.python
    ms-toolsai.jupyter
    ms-toolsai.jupyter-keymap
    ms-toolsai.jupyter-renderers
    ms-toolsai.vscode-jupyter-cell-tags
    ms-toolsai.vscode-jupyter-slideshow
    njpwerner.autodocstring
    charliermarsh.ruff
)

# Install each extension
echo "Installing VSCode extensions..."
for extension in "${extensions[@]}"; do
    install_extension $extension
done

# Install local extension from vsix file
echo "Installing local VSCode extension..."
code-server --install-extension shared/adalab-1.7.0.vsix

# Install necessary Python tools
echo "Installing Python tools..."
pip install black ruff

# Copy VSCode settings
echo "Configuring VSCode settings..."
vscode_settings_path="$HOME/.local/share/code-server/User/settings.json"

# Ensure the settings directory exists
mkdir -p "$(dirname "$vscode_settings_path")"

# Copy the settings file
cp settings.json "$vscode_settings_path"

echo "Setup complete! Your VSCode environment is now configured."
