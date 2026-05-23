#!/bin/bash
set -ex

# Append setting to resolved.conf
echo "DNSStubListener=no" | sudo tee -a /etc/systemd/resolved.conf

# Restart systemd-resolved
sudo systemctl restart systemd-resolved

echo "systemd-resolved updated successfully."
