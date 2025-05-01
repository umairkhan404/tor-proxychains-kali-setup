# ✅ Tor + ProxyChains Setup on Kali Linux

This project provides a simple bash script to install and configure **Tor** and **ProxyChains** on **Kali Linux**, allowing you to route your traffic anonymously through the Tor network.

---

## 📁 Files Included

- `install_proxychains_tor.sh` – The main script that automates the installation and setup process.

---

<h2>🚀 How to Use</h2>

<ol>
  <li>
    <strong>Clone the Repository</strong><br>
    <pre><code>git clone https://github.com/umairkhan404/tor-proxychains-kali-setup.git
cd tor-proxychains-kali-setup</code></pre>
  </li>

  <li>
    <strong>Make the Script Executable</strong><br>
    <pre><code>chmod +x install_proxychains_tor.sh</code></pre>
  </li>

  <li>
    <strong>Run the Script</strong><br>
    <pre><code>./install_proxychains_tor.sh</code></pre>
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

