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
To run these scripts, you need a Linux environment (Ubuntu/WSL) with the Bash shell. 

Make the scripts executable before running:
```bash
chmod +x script1.sh
./script1.sh
