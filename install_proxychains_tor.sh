#!/bin/bash

# ✅ Script: Install and Configure ProxyChains + Tor in Kali Linux
# 🛡️ Description:
# This script installs Tor and ProxyChains, starts the Tor service,
# and updates the ProxyChains configuration to route traffic through the Tor network.

echo "📦 Step 1: Updating system packages..."
sudo apt update && sudo apt upgrade -y

echo "🛠️ Step 2: Installing Tor..."
sudo apt install tor -y

echo "🔌 Step 3: Starting and enabling Tor service..."
sudo systemctl start tor         # Start Tor now
sudo systemctl enable tor        # Start Tor automatically at boot

echo "🔍 Checking Tor service status..."
sudo systemctl status tor

echo "🧰 Step 4: Installing ProxyChains (if not already installed)..."
sudo apt install proxychains -y

echo "📝 Step 5: Configuring ProxyChains..."
# Use dynamic_chain (recommended)
# Open the configuration file:
sudo nano /etc/proxychains.conf

# Inside the config file:
# Uncomment this line by removing the #:
# dynamic_chain

# Comment out these lines if they exist:
# strict_chain
# proxy_dns

# Add Tor's SOCKS5 Proxy at the bottom:
echo "socks5 127.0.0.1 9050" | sudo tee -a /etc/proxychains.conf

# Save and exit Nano:
echo "💾 Save and exit Nano by pressing Ctrl + O, then Enter, then Ctrl + X"

# Test ProxyChains with Tor
proxychains curl https://check.torproject.org
