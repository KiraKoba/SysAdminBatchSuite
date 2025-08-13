# ⚙️ Batch Tools Suite for Technical Support

![GitHub repo size](https://img.shields.io/github/repo-size/KiraKoba/SysAdminBatchSuite?style=flat-square)
![GitHub language count](https://img.shields.io/github/languages/count/KiraKoba/SysAdminBatchSuite?style=flat-square)
![GitHub open issues](https://img.shields.io/github/issues/KiraKoba/SysAdminBatchSuite?style=flat-square)
![GitHub open pull requests](https://img.shields.io/github/issues-pr/KiraKoba/SysAdminBatchSuite?style=flat-square)

This repository provides a powerful collection of Windows batch scripts tailored for IT support and system administrators. The tool features a user-friendly command-line interface with categorized menus, helping users perform system diagnostics, manage network settings, and execute common maintenance tasks quickly and efficiently.

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