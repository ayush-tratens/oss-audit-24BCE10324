#  The Open Source Audit: Python

> **Course:** Open Source Software (OSS NGMC)
> **Student Name:** Ayush Singh
> **Roll Number:** 24BCE10324
> **Chosen Software:** Python

---

##  Project Overview

This repository contains a suite of **five Bash shell scripts** developed for an Ubuntu Linux environment. The scripts demonstrate core system administration, package management, and file processing tasks  centred around an audit of the **Python** open-source ecosystem.

---

##  Repository Structure

```
oss-audit-24BCE10324/
 README.md          � You are here
 script1.sh         � System Identity Report
 script2.sh         � FOSS Package Inspector
 script3.sh         � Disk and Permission Auditor
 script4.sh         � Log File Analyzer
 script5.sh         � Open Source Manifesto Generator
```

---

##  Script Descriptions

### `script1.sh`  System Identity Report

Gathers and displays core system information relevant to the OSS audit. It uses command substitution to dynamically collect:

- OS distribution name (read from `/etc/os-release`)
- Linux kernel version (`uname -r`)
- Current logged-in user (`whoami`)
- System uptime (`uptime -p`)
- Home directory path (`$HOME`)
- Current date and time (`date`)
- Applicable open-source license (GPLv2 for the Linux kernel)

All output is formatted in a clean, human-readable report.

---

### `script2.sh`  FOSS Package Inspector

Uses `dpkg` and `grep` to verify the installation status of **Python 3** on the system. It outputs a dynamic software description including:

- Whether Python 3 is currently installed
- Package version details
- A brief description of Python as a FOSS project

---

### `script3.sh`  Disk and Permission Auditor

Automates a storage and security audit of key system directories. For directories such as `/etc` and `/var/log`, the script reports:

- Total size on disk (`du`)
- Owner and group (`ls -ld`)
- Permission bits

This demonstrates how OSS systems handle file ownership and access control.

---

### `script4.sh`  Log File Analyzer

Reads a log file line-by-line to search for a specific keyword and produces a summary report. Features:

- Counts total occurrences of a keyword in the log
- Prints the last 5 matching lines for context
- Demonstrates `while read` loops and pattern matching in Bash

---

### `script5.sh`  Open Source Manifesto Generator

An interactive script that captures user input to dynamically generate a customized, timestamped `.txt` file declaring an open-source manifesto. It:

- Prompts the user for their name and a personal statement on open source
- Appends a timestamp and project metadata
- Writes everything to a uniquely named output file

---

##  Prerequisites

### Operating System

>  **A Debian-based Linux environment is required** (Ubuntu, Linux Mint, or WSL on Windows). Script 2 relies on the `dpkg` package manager, which is specific to Debian/Ubuntu systems.

### Required Tools

All of the following are included by default on Ubuntu:

| Tool | Used By | Purpose |
|------|---------|---------|
| `bash` | All scripts | Script interpreter |
| `uname` | script1.sh | Kernel version info |
| `uptime` | script1.sh | System uptime |
| `dpkg` | script2.sh | Package inspection |
| `grep` | script2.sh, script4.sh | Pattern matching |
| `du` | script3.sh | Disk usage |
| `ls` | script3.sh | File permissions |
| `date` | script1.sh, script5.sh | Timestamps |

### Optional

- `sudo` access  only needed if you need to install missing packages flagged by `script2.sh`

---

##  How to Run (Step-by-Step, Linux)

### Step 1  Clone the Repository

Open a terminal and run:

```bash
git clone https://github.com/ayush-tratens/oss-audit-24BCE10324.git
cd oss-audit-24BCE10324
```

### Step 2  Make Scripts Executable

Grant execute permissions to all scripts at once:

```bash
chmod +x script1.sh script2.sh script3.sh script4.sh script5.sh
```

### Step 3  Run Each Script

**Script 1  System Identity Report:**
```bash
./script1.sh
```

**Script 2  FOSS Package Inspector:**
```bash
./script2.sh
```

**Script 3  Disk and Permission Auditor:**
```bash
./script3.sh
```

**Script 4  Log File Analyzer:**
```bash
./script4.sh
```
>  This script expects a log file as input. If it prompts for a path, provide a valid log file (e.g., `/var/log/syslog`).

**Script 5  Open Source Manifesto Generator:**
```bash
./script5.sh
```
>  This script is interactive. Follow the on-screen prompts to enter your name and statement.

---

##  Troubleshooting

**Permission denied error?**
```bash
chmod +x scriptN.sh   # Replace N with the script number
```

**`dpkg` not found (script2.sh)?**
This means you are not on a Debian/Ubuntu system. Use WSL (Windows Subsystem for Linux) or a Ubuntu VM.

**Script runs but shows no output?**
Ensure you are running with `bash` explicitly:
```bash
bash script1.sh
```

---

##  License

This project is submitted for academic purposes under the Open Source Software course. The chosen software, **Python**, is licensed under the [Python Software Foundation License (PSF)](https://docs.python.org/3/license.html), which is OSI-approved and compatible with GPL.

---

*Submitted as part of the OSS Audit Capstone Project  Vellore Institute of Technology*
