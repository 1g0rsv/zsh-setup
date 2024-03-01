# Zsh and Oh My Zsh Setup Script

This script automates the installation of Zsh, Oh My Zsh, and the zsh-autosuggestions plugin.

## Usage

1. Clone this repository to your local machine or server.
2. Make the script executable: `chmod +x setup_zsh.sh`.
3. Run the script: `./setup_zsh.sh`.

## What the Script Does:

- Updates the package list.
- Installs Zsh if not already installed.
- Installs Oh My Zsh.
- Clones the zsh-autosuggestions plugin if not already installed.
- Adds the zsh-autosuggestions plugin to your `.zshrc` if not already present.
- Applies the changes by switching to Zsh.

Ensure you have administrator rights or use `sudo` to run the script if necessary.

##For server-side execution, after cloning your repository which contains the script:

Navigate to the script's directory.
Ensure the script is executable: chmod +x setup_zsh.sh.
Execute the script: sudo ./setup_zsh.sh.
This process will set up Zsh, Oh My Zsh, and the zsh-autosuggestions plugin on the server, following the script's instructions. Always verify the script's content for safety before running it on your server.