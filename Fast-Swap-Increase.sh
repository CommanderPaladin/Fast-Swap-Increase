#!/bin/bash

# Define the size of the swap file
SWAP_SIZE="8G"
SWAP_FILE="/swapfile"

# Check existing swap space
echo "Checking existing swap space..."
sudo swapon --show

# Turn off all swap
echo "Turning off all swap..."
sudo swapoff -a

# Create a new swap file
echo "Creating a new swap file of size $SWAP_SIZE..."
sudo fallocate -l $SWAP_SIZE $SWAP_FILE

# If fallocate is not available, uncomment the following line and comment the fallocate line above
# sudo dd if=/dev/zero of=$SWAP_FILE bs=1M count=8192

# Set the correct permissions
echo "Setting the correct permissions on the swap file..."
sudo chmod 600 $SWAP_FILE

# Set up the swap file
echo "Setting up the swap file..."
sudo mkswap $SWAP_FILE

# Enable the swap file
echo "Enabling the swap file..."
sudo swapon $SWAP_FILE

# Verify the swap space
echo "Verifying the swap space..."
sudo swapon --show

# Make the swap file permanent
echo "Adding the swap file to /etc/fstab to make it permanent..."
sudo cp /etc/fstab /etc/fstab.bak
echo "$SWAP_FILE none swap sw 0 0" | sudo tee -a /etc/fstab

echo "Swap setup complete. Swap space is now $SWAP_SIZE."
