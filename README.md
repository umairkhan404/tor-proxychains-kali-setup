# ✅ Tor + ProxyChains Setup on Kali Linux

This project provides a simple bash script to install and configure **Tor** and **ProxyChains** on **Kali Linux**, allowing you to route your traffic anonymously through the Tor network.

---

## 📁 Files Included

- `install_proxychains_tor.sh` – The main script that automates the installation and setup process.

---

<h2>🚀 How to Use</h2>

<ol>
<p><strong>Clone the Repository:</strong></p>
<pre><code>git clone https://github.com/umairkhan404/tor-proxychains-kali-setup.git</code></pre>

<p><strong>Navigate into the repository:</strong></p>
<pre><code>cd tor-proxychains-kali-setup</code></pre>

  <li>
    <strong>Make the Script Executable</strong><br>
    <pre><code>chmod +x install_proxychains_tor.sh</code></pre>
  </li>

  <li>
    <strong>Run the Script</strong><br>
    <pre><code>./install_proxychains_tor.sh</code></pre>
  </li>
</ol>

<h2>🛡️ Install and Configure ProxyChains + Tor in Kali Linux</h2>

<p>This script installs <strong>Tor</strong> and <strong>ProxyChains</strong>, enables the Tor service, and configures ProxyChains to route traffic through the Tor network.</p>

<h3>📜 Bash Script Overview</h3>

<ol>
  <li>
    <strong>Update System Packages</strong><br>
    <pre><code>sudo apt update && sudo apt upgrade -y</code></pre>
  </li>

  <li>
    <strong>Install Tor</strong><br>
    <pre><code>sudo apt install tor -y</code></pre>
  </li>

  <li>
    <strong>Start and Enable Tor</strong><br>
    <pre><code>sudo systemctl start tor
sudo systemctl enable tor</code></pre>
  </li>

  <li>
    <strong>Check Tor Status</strong><br>
    <pre><code>sudo systemctl status tor</code></pre>
  </li>

  <li>
    <strong>Install ProxyChains</strong><br>
    <pre><code>sudo apt install proxychains -y</code></pre>
  </li>

  <li>
    <strong>Edit ProxyChains Configuration</strong><br>
    <pre><code>sudo nano /etc/proxychains.conf</code></pre>

  <p><strong>Inside the config file:</strong></p>

<p>✅ Uncomment the following line:</p>
<pre><code>dynamic_chain</code></pre>

<p>❌ Comment out these lines if they exist:</p>
<pre><code># strict_chain</code></pre>

proxy_dns</code></pre>
      </li>

  

<p>✅ Add this line at the bottom of the file:</p>
<pre><code>socks5 127.0.0.1 9050</code></pre>

<p><strong>💾 Save and exit Nano:</strong></p>

<p>Press <code>Ctrl + O</code>, then <code>Enter</code></p>

<p>Press <code>Ctrl + X</code> to exit</p>

  </li>

  <li>
    <strong>Test ProxyChains with Tor</strong><br>
    <pre><code>proxychains curl https://check.torproject.org</code></pre>
    <p>If everything is set up correctly, it should show that you are using Tor!</p>
  </li>
</ol>

<h2 align="left">⏱️ "#Here are the essential systemctl commands to manage the Tor service on Kali Linux:"</h2>

<h2>✅ Start Tor:</h2>
<pre><code>sudo systemctl start tor</code></pre>
<p>🔹 Starts the Tor service immediately.</p>

<br>

<h2>⏹️ Stop Tor:</h2>
<pre><code>sudo systemctl stop tor</code></pre>
<p>🔹 Stops the Tor service.</p>

<br>

<h2>🔁 Restart Tor:</h2>
<pre><code>sudo systemctl restart tor</code></pre>
<p>🔹 Restarts the Tor service (helpful after config changes).</p>

<br>

<h2>📶 Check Tor Status:</h2>
<pre><code>sudo systemctl status tor</code></pre>
<p>🔹 Shows whether Tor is active, inactive, or failed.</p>

<br>

<h2>⚙️ Enable Tor (Start at Boot):</h2>
<pre><code>sudo systemctl enable tor</code></pre>
<p>🔹 Automatically starts Tor every time the system boots.</p>

<br>

<h2>❌ Disable Tor (Remove from Boot):</h2>
<pre><code>sudo systemctl disable tor</code></pre>
<p>🔹 Stops Tor from starting automatically at boot.</p>

