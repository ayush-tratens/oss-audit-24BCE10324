# The Open Source Audit: Python
**A Capstone Project for Open Source Software (OSS NGMC)**

**Student Name:** Ayush Singh  
**Registration Number:** 24BCE10324  
**Chosen Software:** Python  

## Project Overview
This repository contains a suite of five Bash shell scripts developed for an Ubuntu Linux environment. The scripts demonstrate core system administration, package management, and file processing tasks, centered around an audit of the Python open-source ecosystem.

## The Scripts

* **`script1.sh` (System Identity Report):** Gathers and displays core system information, including OS distribution, kernel version, uptime, and the applicable open-source license.
* **`script2.sh` (FOSS Package Inspector):** Uses `dpkg` and `grep` to verify the installation status of Python 3 and outputs a dynamic software description.
* **`script3.sh` (Disk and Permission Auditor):** Automates a storage and security audit of key system directories (like `/etc` and `/var/log`), reporting size, owner, and permissions.
* **`script4.sh` (Log File Analyzer):** Reads a log file line-by-line to count occurrences of a specific keyword and prints a summary along with the last 5 matching lines.
* **`script5.sh` (Open Source Manifesto Generator):** An interactive script that captures user input to dynamically generate a customized, timestamped text file declaring an open-source manifesto.

## Prerequisites & Execution

### Prerequisites
To run these scripts successfully, your system must meet the following requirements:
* **Operating System:** A Debian-based Linux environment (like Ubuntu or WSL on Windows) is strictly required. This is because Script 2 relies on the `dpkg` package manager to inspect software.
* **Environment:** The Bash shell.
* **Permissions:** Standard user permissions are sufficient to run the core audit. `sudo` access is only suggested if you need to install missing packages flagged by Script 2.

### Execution Instructions
Follow these steps to download and run the audit toolkit on your local machine:

**1. Clone the repository:**
First, pull the scripts down to your local environment and navigate into the folder:
```bash
git clone [https://github.com/your-username/oss-audit-24BCE10324.git](https://github.com/your-username/oss-audit-24BCE10324.git)
cd oss-audit-24BCE10324
