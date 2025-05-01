#!/bin/bash

# ✅ Script: Install and Configure ProxyChains + Tor in Kali Linux
# 🛡️ Description:
# This script installs Tor and ProxyChains, starts the Tor service,
# and updates the ProxyChains configuration to route traffic through the Tor network.

#echo "📦 Step 1: Updating system packages..."
sudo apt update && sudo apt upgrade -y

#echo "🛠️ Step 2: Installing Tor..."
sudo apt install tor -y

#echo "🔌 Step 3: Starting and enabling Tor service..."
sudo systemctl start tor         # Start Tor now
sudo systemctl enable tor        # Start Tor automatically at boot

#echo "🔍 Checking Tor service status..."
sudo systemctl status tor

#echo "🧰 Step 4: Installing ProxyChains (if not already installed)..."
sudo apt install proxychains -y

#echo "📝 Step 5: Configuring ProxyChains..."
#Use dynamic_chain (recommended)
#Open the configuration file:
sudo nano /etc/proxychains.conf

#Use dynamic_chain (recommended)
#Uncomment this line by removing the #:
dynamic_chain
#Comment out strict_chain and proxy_dns if they are active.

Add Tor's SOCKS5 Proxy at the Bottom
socks5 127.0.0.1 9050
#Make sure this line exists at the end of the file:

#Save and exit:
#Press Ctrl + O, then Enter
#Press Ctrl + X

#Test ProxyChains with Tor
proxychains curl https://check.torproject.org



