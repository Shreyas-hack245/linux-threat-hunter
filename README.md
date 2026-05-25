# Linux Threat Hunter

Linux Threat Hunter is a SOC-inspired Blue Team security toolkit developed for Linux environments using Bash scripting. The project focuses on threat hunting, security monitoring, and incident response by identifying suspicious processes, persistence mechanisms, authentication anomalies, hidden files, and unusual network activity.

Designed and tested on Kali Linux, the toolkit automates multiple security checks commonly performed during defensive security operations and system investigations.

---

## Features

- Suspicious Process Detection
- Failed Login Monitoring
- Open Ports Scanning
- Hidden Files Discovery
- Cron Persistence Detection
- Network Connection Monitoring
- Malware Keyword Scanning
- Rootkit Detection
- System Information Gathering
- Real-Time Monitoring Mode
- Automated Report Generation
- Activity Logging
- SOC-Style Interactive Dashboard

---

## Technologies Used

- Bash / Shell Scripting
- Kali Linux
- Linux Security Utilities
- grep
- awk
- ss
- lsof
- journalctl
- chkrootkit

---

## Project Structure

```bash
linux-threat-hunter/
│
├── scripts/
├── logs/
├── reports/
├── screenshots/
├── docs/
│
├── main.sh
├── install.sh
├── README.md
└── LICENSE
```

---

## Installation

Clone the repository:

```bash
git clone https://github.com/yourusername/linux-threat-hunter.git
```

Navigate into the project directory:

```bash
cd linux-threat-hunter
```

Make all scripts executable:

```bash
chmod +x main.sh
chmod +x scripts/*.sh
```

Install required dependencies:

```bash
sudo apt update
sudo apt install -y net-tools lsof chkrootkit
```

---

## Usage

Run the toolkit:

```bash
./main.sh
```

---

## Detection Modules

| Module | Purpose |
|---|---|
| Process Scan | Detect suspicious processes |
| Failed Login Detection | Identify failed authentication attempts |
| Open Ports Scanner | Detect active listening ports |
| Hidden Files Detection | Discover hidden files and directories |
| Cron Persistence Detection | Identify suspicious scheduled tasks |
| Network Monitoring | Monitor active network connections |
| Malware Scanner | Search for suspicious malware-related keywords |
| Rootkit Detection | Perform rootkit checks |
| System Information | Collect host system information |

---
## Dashboard Preview

Add screenshots of the toolkit interface inside the `screenshots/` directory and reference them here.

```markdown
![Dashboard](screenshots/dashboard.png)
```

---

## Future Enhancements

- JSON Report Generation
- Email Alert System
- SIEM Integration
- Threat Intelligence Support
- File Integrity Monitoring
- Real-Time Alerting
- Web-Based Dashboard

---

