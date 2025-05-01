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
sudo systemctl start tor
sudo systemctl enable tor

echo "🔍 Checking Tor service status..."
sudo systemctl status tor

echo "🧰 Step 4: Installing ProxyChains (if not already installed)..."
sudo apt install proxychains -y

echo "📝 Step 5: Configuring ProxyChains..."

# ✅ a. Use dynamic_chain
sudo sed -i 's/^#dynamic_chain/dynamic_chain/' /etc/proxychains.conf
sudo sed -i 's/^strict_chain/#strict_chain/' /etc/proxychains.conf
sudo sed -i 's/^proxy_dns/#proxy_dns/' /etc/proxychains.conf

# ✅ b. Add Tor's SOCKS5 Proxy at the bottom if it's not already there
if ! grep -q "socks5 127.0.0.1 9050" /etc/proxychains.conf; then
  echo "socks5 127.0.0.1 9050" | sudo tee -a /etc/proxychains.conf
fi

echo ""
echo "✅ All done! Tor and ProxyChains are now configured."
echo "To test:"
echo "  proxychains curl https://check.torproject.org"
echo "  proxychains firefox https://check.torproject.org"
