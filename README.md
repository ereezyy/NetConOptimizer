# ⚡ NetConOptimizer: Network Connection Optimizer

[![PowerShell](https://img.shields.io/badge/PowerShell-5.1%2B-blue.svg)](https://docs.microsoft.com/en-us/powershell/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Build Status](https://img.shields.io/badge/Build-Passing-brightgreen.svg)](https://github.com/ereezyy/NetConOptimizer/actions)

## 🚀 Overview

**NetConOptimizer** is a powerful and easy-to-use PowerShell script designed to diagnose and resolve common network connectivity issues on Windows systems. It automates a series of network optimization commands to improve internet speed, stability, and overall network performance. Whether you're experiencing slow internet, frequent disconnections, or DNS resolution problems, NetConOptimizer provides a quick and effective solution.

## ✨ Features

-   **Flush DNS Cache**: Clears outdated DNS records to ensure faster and more accurate domain name lookups.
-   **Release and Renew IP**: Refreshes your IP address, resolving potential conflicts and obtaining a new lease from your DHCP server.
-   **Reset TCP/IP Stack**: Repairs corrupted TCP/IP settings, which can fix various connectivity problems.
-   **Reset Winsock**: Addresses issues with the Windows Sockets API, often resolving problems with network applications.
-   **Disable Wi-Fi Power-Saving Mode**: Ensures your wireless adapter operates at maximum performance by preventing it from entering power-saving states.
-   **Prioritize Active Wi-Fi Connection**: Optimizes network traffic to favor your currently active Wi-Fi connection for better reliability.
-   **Restart Networking Services**: Refreshes critical network services to ensure they are running optimally.

## 🛠️ Installation & Usage

### Prerequisites

-   Windows Operating System (Windows 7 or later)
-   PowerShell 5.1 or newer (usually pre-installed on modern Windows versions)
-   Administrator privileges are required to run the script.

### Steps

1.  **Download the Script**:
    Clone the repository or download the `NetConOptimize.ps1` file directly:
    ```bash
    git clone https://github.com/ereezyy/NetConOptimizer.git
    cd NetConOptimizer
    ```

2.  **Open PowerShell as Administrator**:
    Search for 
PowerShell in the Start Menu, right-click on it, and select "Run as administrator."

3.  **Navigate to the Script Directory**:
    Use the `cd` command to go to the directory where you saved `NetConOptimize.ps1`.
    ```powershell
    cd C:\path\to\NetConOptimizer
    ```

4.  **Run the Script**:
    Execute the script. You might need to adjust your PowerShell execution policy if you encounter errors (run `Set-ExecutionPolicy RemoteSigned -Scope CurrentUser` once).
    ```powershell
    .\NetConOptimize.ps1
    ```

5.  **Follow On-Screen Prompts**:
    The script will guide you through the optimization process. It will display messages indicating which actions are being performed.

## ⚠️ Important Notes

-   **Administrator Privileges**: The script requires administrator privileges to function correctly. Without them, some network commands may fail.
-   **Execution Policy**: If you encounter an error like "cannot be loaded because running scripts is disabled on this system," you may need to temporarily change your PowerShell execution policy. Run `Set-ExecutionPolicy RemoteSigned -Scope CurrentUser` in an administrator PowerShell window. You can revert it later with `Set-ExecutionPolicy Restricted -Scope CurrentUser`.
-   **Reboot Recommended**: For some changes to take full effect, a system reboot might be necessary after running the script.

## 🤝 Contributing

We welcome contributions to improve NetConOptimizer! Please see our [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines on how to contribute.

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 📞 Contact

For questions, suggestions, or issues, please open an issue on this GitHub repository.

---

**"Optimize your network, enhance your experience."** 🚀
