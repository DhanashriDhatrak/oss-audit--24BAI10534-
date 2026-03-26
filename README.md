# OSS Capstone Project: Python Audit & Shell Script Collection

**Student Name:** Dhanashri Dhatrak  
**Registration Number:** 24BAI10534  
**Course:** Open Source Software (NGMC)  
**Software Audited:** Python Programming Language  
**License Type:** Python Software Foundation (PSF) License  
**Development Environment:** Ubuntu 24.04 LTS (WSL2 on Windows)

---

##  Abstract

This project presents a comprehensive audit of the Python programming language from an open-source perspective. Python is one of the most influential programming languages in modern computing, widely used in data science, artificial intelligence, web development, automation, and scientific research.

The audit examines Python’s origins, governance model, licensing framework, ethical considerations, and its significance within the global open-source ecosystem. Additionally, the project demonstrates practical Linux skills through the development of Bash shell scripts that automate system inspection and analysis tasks.

---

##  Introduction

Open Source Software (OSS) plays a vital role in today’s technological landscape by promoting transparency, collaboration, and innovation. Python exemplifies these principles through its active community, permissive licensing, and extensive ecosystem of libraries.

The Python Software Foundation (PSF) maintains the language and ensures that it remains freely available to individuals, organizations, and researchers. This project evaluates Python both as a programming language and as a successful open-source initiative.

---

##  Project Objectives

- Analyze Python as an open-source software project  
- Understand the PSF licensing model  
- Explore Python’s development community and governance  
- Study ethical and legal aspects of OSS  
- Gain hands-on experience with Linux and Bash scripting  
- Automate system auditing tasks  
- Demonstrate practical application of OSS concepts  

---

##  System Requirements

### Recommended Platform

- Ubuntu 24.04 LTS  
- Windows Subsystem for Linux (WSL2) or native Linux  
- Bash Shell  
- Python 3.x  

### Required Command-Line Utilities

- `grep` — text search  
- `awk` — pattern processing  
- `cut` — column extraction  
- `du` — disk usage  
- `ls` — file listing  
- `dpkg` — package management  
- `uptime` — system runtime  
- `whoami` — current user  

### Installing Python

```bash
sudo apt update
sudo apt install python3
```

---

##  Shell Script Collection (Audit Tools)

This repository also includes a set of Linux shell scripts developed to demonstrate system auditing, monitoring, and automation using Bash.

---

###  script1.sh — System Identity Report

Generates a structured report describing the system’s identity and current status.  
It retrieves hostname, logged-in user, kernel version, system uptime, date/time, CPU architecture, and Linux distribution details.  
Useful for diagnostics, documentation, and troubleshooting.

---

###  script2.sh — Python Package Inspector

Checks whether Python is installed on the system.  
If available, the script displays the installed version and retrieves package metadata such as license, maintainer/vendor, and description using the system package manager (`dpkg`).  
Helpful for dependency verification and environment auditing.

---

###  script3.sh — Disk & Permission Auditor

Scans important directories such as `/home`, `/var`, and `/etc` to analyze disk usage and security settings.  
Reports directory size, ownership, group information, and permission levels.  
Useful for identifying storage consumption and detecting insecure access permissions.

---

###  script4.sh — Log File Analyzer

Processes a specified log file line-by-line and searches for a user-defined keyword (e.g., **error**, **warning**, **failed**).  
Counts occurrences and can display matching entries.  
Useful for system monitoring, debugging, and incident analysis.

---

###  script5.sh — Open Source Manifesto Generator

An interactive script that collects user input (name, goals, philosophy) and generates a personalized open-source manifesto.  
Demonstrates prompts, variables, and formatted output in Bash scripting.

---

##  How to Run the Scripts

1. Clone the repository:

```bash
git clone https://github.com/DhanashriDhatrak/oss-audit--24BAI10534-.git
cd oss-audit--24BAI10534-
```

2. Give execute permission:

```bash
chmod +x script*.sh
```

3. Run any script:

```bash
./script1.sh
```

---

##  Use Cases

- System auditing and diagnostics  
- Software inspection  
- Security checks  
- Log analysis  
- Learning Bash scripting  
- Automation practice  

---

##  Author

**Dhanashri Dhatrak**

---

##  License

This project is created for educational purposes as part of an academic assignment.  
You may modify and reuse the scripts for learning and non-commercial use.
