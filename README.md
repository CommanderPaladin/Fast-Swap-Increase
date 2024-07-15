
# Fast Swap Increase

This script automates the process of increasing the swap memory to 8GB or any value you set on a Linux system.

## Usage

1. **Download the script**:
   ```bash
   wget https://raw.githubusercontent.com/CommanderPaladin/Fast-Swap-Increase/main/Fast-Swap-Increase.sh
   ```

2. **Make the script executable**:
   ```bash
   chmod +x Fast-Swap-Increase.sh
   ```

3. **Run the script with root privileges**:
   ```bash
   sudo ./Fast-Swap-Increase.sh
   ```

## What the Script Does

1. **Checks existing swap space**:
   The script displays the current swap space on your system.

2. **Turns off all swap**:
   It temporarily disables all active swap spaces.

3. **Creates a new swap file**:
   The script creates a new swap file with the size specified by the user (default is 8GB).

4. **Sets the correct permissions**:
   Ensures the swap file has the correct permissions for security.

5. **Sets up the swap file**:
   Prepares the newly created file to be used as swap space.

6. **Enables the swap file**:
   Activates the new swap file for use by the system.

7. **Verifies the swap space**:
   Displays the new swap space to confirm the changes.

8. **Makes the swap file permanent**:
   Adds the new swap file entry to `/etc/fstab` to ensure it is used after reboot.


## Customizing Swap Size

To customize the swap size, modify the `SWAP_SIZE` variable in the script:
```bash
SWAP_SIZE="8G" # Change this value to your desired swap size, e.g., "16G" for 16GB.
```

## Notes

- The script creates a backup of the `/etc/fstab` file as `/etc/fstab.bak` before making changes.
- It is recommended to review the script and understand its steps before execution.


