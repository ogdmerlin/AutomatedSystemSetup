# Automated System Setup Script

This Bash script automates the installation of essential software packages and system configurations on a new Linux system. It is designed to work on Debian-based systems (e.g., Ubuntu) and uses the `apt` package manager. The script installs popular packages like Vim, Git, Node.js, npm, Python 3, and more. Additionally, it configures the system by setting Zsh as the default shell, installing oh-my-zsh for shell customization, and configuring tmux with a predefined terminal color scheme.

## Prerequisites

- A new Linux system running a Debian-based distribution (e.g., Ubuntu) with the `apt` package manager.
- Internet connectivity to download and install the required software packages.

## Usage

1. Clone this repository to your local machine or download the `setup_system.sh` script directly.
2. Open a terminal and navigate to the directory containing the `setup_system.sh` script.
3. Make the script executable using the following command:
4. Run the script with root privileges (using `sudo`) as it requires administrative access to install packages and configure the system:
5. Follow the on-screen prompts during the installation process.

## What it does

The script performs the following actions:

1. Installs the following software packages:
- Vim
- Git
- wget
- curl
- tmux
- zsh
- Node.js and npm (Node Package Manager)
- Python 3 and pip (Python Package Installer)

2. Sets Zsh as the default shell using `chsh` and installs oh-my-zsh, a popular shell customization framework.

3. Sets Vim as the default text editor using `update-alternatives`.

4. Configures tmux with a predefined terminal color scheme by creating a `~/.tmux.conf` file.

5. Starts a new tmux session after the installation is complete.

6. Installs a few additional useful packages like `htop`, `neofetch`, and `ranger`.

## Notes

- Please review the `software_packages` array in the script and add or remove packages as needed for your specific requirements.

- Make sure to run the script on a new system or in a controlled environment, as it will make changes to your system configuration.

- Verify your internet connection is working before running the script, as it needs to download packages during installation.

- This script is designed for Debian-based systems using `apt`. For other Linux distributions, you may need to modify the script to use the appropriate package manager (e.g., `yum` for Red Hat-based systems).

## License

This script is licensed under the [MIT License](LICENSE).

Feel free to customize the script to suit your needs and happy system setup!


