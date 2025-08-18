# ⚙️ Batch Tools Suite for Technical Support

![GitHub repo size](https://img.shields.io/github/repo-size/KiraKoba/SysAdminBatchSuite?style=flat-square)
![GitHub language count](https://img.shields.io/github/languages/count/KiraKoba/SysAdminBatchSuite?style=flat-square)
![GitHub open issues](https://img.shields.io/github/issues/KiraKoba/SysAdminBatchSuite?style=flat-square)
![GitHub open pull requests](https://img.shields.io/github/issues-pr/KiraKoba/SysAdminBatchSuite?style=flat-square)

This repository provides a powerful collection of Windows batch scripts tailored for IT support and system administrators. The tool features a user-friendly command-line interface with categorized menus, helping users perform system diagnostics, manage network settings, and execute common maintenance tasks quickly and efficiently.

## 📑 Table of Contents

- [Features](#-features)
- [Requirements](#️-requirements)
- [Documentation](#-documentation)
- [Usage Instructions](#-usage-instructions)
- [Acknowledgments](#-acknowledgments)
- [Contact](#-contact)
- [License](#-license)

## ✨ Features

- __Network Tools__:
    - View IP settings (`ipconfig`).
    - Release and renew IP addresses.
    - Display and flush DNS cache.
    - Generate detailed network reports.
    - Connectivity tests using `ping`, `tracert`, `netstat`, and `nslookup`.

- __System Diagnostics__:
    - Generate system information reports.
    - Scan and repair system files.
    - Check disk integrity.
    - Perform memory diagnostics.
    - Run a full system checkup.

- __Utilities__:
    - Clean, format, and defragment disks.
    - Repair Windows image (`DISM`).
    - Backup drivers using PowerShell.
    - Launch System Restore.
    - Restart print spooler service.
    - Reboot PC.
    - List installed programs.
    - Use `winget` for package management.


## 🛠️ Requirements

- __OS:__ Windows 10 or newer.
- __Permissions:__ Some actions require Administrator privileges.
- __PowerShell:__ Required for driver backup functionality.
- __Winget:__ Available by default on Windows 11, or via update on Windows 10.

## 📚 Documentation
- __Batch File Commands | Microsoft Docs__:
For comprehensive information regarding Batch File Commands in Windows, including syntax rules, command references, and scripting techniques, refer to the official [Windows Command Line Documentation](https://learn.microsoft.com/en-us/windows-server/administration/windows-commands/windows-commands).
This resource is essential for understanding how to automate tasks, manage system utilities, and build robust `.bat` scripts using built-in command-line tools.

- __Using Batch Files | SS64__:
For practical information on writing and executing batch files, including syntax breakdowns, variable usage, and control flow structures, refer to [Using Batch Files on SS64](https://ss64.com/nt/syntax.html).
This resource provides concise, real-world examples and quick reference guides, making it ideal for both beginners and experienced script authors working with Windows command-line automation.

- __Introduction to Batch Programming - Computer Hope__:
For a beginner-friendly overview of batch programming, including foundational concepts, command usage, and script structure, consult the Introduction to [Batch Programming by Computer Hope(https://www.computerhope.com/batch.htm)].
This guide is especially useful for those new to scripting in Windows, offering clear explanations, examples, and tips to get started with creating and debugging `.bat` files.

- __CMD Command Reference__:
For complete documentation, visit the [Windows Command-Line Referene](https://learn.microsoft.com/en-us/windows-server/administration/windows-commands/windows-commands).

__Network & Diagnostics__
- [`ipconfig`](https://learn.microsoft.com/en-us/windows-server/administration/windows-commands/ipconfig) - Network configuration.
- [`ping`](https://learn.microsoft.com/en-us/windows-server/administration/windows-commands/ping) - Connectivity test.
- [`tracert`](https://learn.microsoft.com/en-us/windows-server/administration/windows-commands/tracert) - Route tracing.
- [`netstat`](https://learn.microsoft.com/en-us/windows-server/administration/windows-commands/netstat) - Active connections.
- [`nslookup`](https://learn.microsoft.com/en-us/windows-server/administration/windows-commands/nslookup) - DNS lookup.
- [`systeminfo`](https://learn.microsoft.com/en-us/windows-server/administration/windows-commands/systeminfo) - System summary.

**System Maintenance**
- [`sfc`](https://learn.microsoft.com/en-us/windows-server/administration/windows-commands/sfc) - System file check.
- [`chkdsk`](https://learn.microsoft.com/en-us/windows-server/administration/windows-commands/chkdsk?tabs=hdd%2Cevent-viewer) - Disk check.


**Utilities**
- [`cleanmgr`](https://learn.microsoft.com/en-us/windows-server/administration/windows-commands/cleanmgr) - Disk cleanup.
- [`defrag`](https://learn.microsoft.com/en-us/windows-server/administration/windows-commands/defrag) - Disk defragmentation.
- [`diskpart`](https://learn.microsoft.com/en-us/windows-server/administration/windows-commands/diskpart) - Disk partitioning.

**System Control**
- [`shutdown`](https://learn.microsoft.com/en-us/windows-server/administration/windows-commands/shutdown) - System shutdown/restart.
- [`winget`](https://learn.microsoft.com/en-us/windows/package-manager/winget/) - Package manager.

## 🚀 Usage Instructions

1. __Retrieve the script__
Obtain the script by either of the following methods:
- Save the file locally with a `.bat` extension.
- Donwload directly from repository: Download [helper.bat](https://github.com/KiraKoba/batch-tools-support-suite/raw/refs/heads/main/helper.bat)
> ⚠️ __Ensure that the file retains the `.bat` extension for correct execution within the Windows Command Line Interface.__

\
2. __Launch with administrative privileges__
To ensure full access to system-level operations, it's recommended to run the script with elevated permissions:
- Right-click on `helper.bat`.
- Select "Run as administrator"
> 🔐 __Some features (e.g., Driver backup, system diagnostics and disk part) require administrative access.__

\
3. __Navigate the interface__
Upon execution, the script will initialize a text-based interfacem presenting a structured main manu.
Input the number corresponding to the desired operation and press __ENTER__ to proceed.

\
4. __Execution behabvior__
- Select task will execute eitheir in-line or via a Command Prompt and PowerShell window.
- Outputs are paused for review and may generate reports saved to the Desktop or predefined locations.
> __💡The script is modular and reusable. Afeter completing an operation, users are returned to the appropriate menu__

## 📝 Acknowledgments

This tool assumes a basic level of technical knowledge in the following areas:
- __Command Line and PowerShell Fundamentals__ - Users should understand the general purpose of key commands (e.g., `ipconfig`, `sfc`, `netstat`, etc) in order to choose the most appropriate option for each scenario.
- __Windows System Basics__ - Familiarity with the Windows OS and common maintenance tasks is recommended for effective use.
> __⚠️This script is designed as a support tool for technical users. While it simplifies access to system diagnostics and utilities, it does not replace technical expertise.__

## 📞 Contact
For futher inquiries or support, feel free to reach out:
- GitHub: [https://github.com/KiraKoba](https://github.com/KiraKoba)

## 📜 License
This project is licensed under the MIT License -see the [LICENSE](https://github.com/KiraKoba/batch-tools-support-suite/blob/main/LICENSE) file for details.