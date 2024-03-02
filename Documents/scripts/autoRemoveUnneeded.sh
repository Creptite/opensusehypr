#!/bin/bash

# Update package list
sudo zypper refresh

# Find and list unneeded packages
sudo zypper packages --unneeded

# Prompt user to confirm removal
read -p "Do you want to remove these unneeded packages? (y/n): " response
if [[ "$response" =~ ^[Yy]$ ]]; then
    # Remove unneeded packages
    sudo zypper remove $(sudo zypper packages --unneeded --terse | awk '{print $3}')
    
    # Clean up residual data
    sudo zypper clean
    echo "Unneeded packages have been removed."
else
    echo "No packages were removed."
fi

