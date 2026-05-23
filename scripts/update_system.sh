#!/bin/bash
set -ex

# Update package lists
sudo apt update -y

# Upgrade installed packages
sudo apt upgrade -y

# Perform full upgrade
sudo apt full-upgrade -y

# Remove unused packages
sudo apt autoremove -y

# Clean package cache
sudo apt clean -y

echo "System update complete."
