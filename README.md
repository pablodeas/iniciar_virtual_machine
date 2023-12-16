# Virtual Machine Starter Script

This is a simple Zsh script designed to start virtual machines (VMs) using the `virsh` command-line tool. The script presents a list of available VMs, prompts the user to choose one by entering the corresponding number, and then starts the selected VM.

## Prerequisites

- This script assumes that you have the `virsh` command-line tool installed on your system.
- Ensure that your user has the necessary permissions to start and manage VMs.

## Usage

1. Make the script executable:

    ```bash
    chmod +x start_vm.zsh
    ```

2. Run the script:

    ```bash
    ./start_vm.zsh
    ```

3. Follow the on-screen instructions to choose a VM and start it.

## Script Details

- The available VMs are defined as variables (e.g., `vm1="regolith_i3"`).
- The script clears the terminal, displays the list of available VMs, and prompts the user to enter the corresponding number.
- The `case` statement is used to handle the user's choice and start the selected VM using the `virsh start` command.
- If an invalid option is chosen, a message indicating the invalid choice is displayed.

Feel free to customize the script according to your specific VM configuration and requirements.
