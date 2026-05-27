# Linux Threat Hunter

### Blue Team Security Toolkit for Linux Threat Hunting and Incident Response

Linux Threat Hunter is a Blue Team security toolkit built using Bash scripting for Linux systems. It helps detect suspicious processes, failed login attempts, hidden files, unusual network connections, persistence mechanisms, and possible malware activity.

The toolkit automates several security checks commonly used during Linux threat hunting and incident response. It also provides an interactive terminal interface, automated report generation, activity logging, and real-time monitoring features.

Developed and tested on Kali Linux.

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
- Real-Time Monitoring
- Automated Report Generation
- Activity Logging
- Interactive SOC-Style Dashboard

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

## Installation

Clone the repository:

```bash
git clone https://github.com/yourusername/linux-threat-hunter.git
```

Navigate to the project directory:

```bash
cd linux-threat-hunter
```

Grant execution permissions:

```bash
chmod +x main.sh
chmod +x scripts/*.sh
```

Install required dependencies:

```bash
sudo apt update
sudo apt install -y net-tools lsof chkrootkit dos2unix
```

Convert Windows line endings if required:

```bash
dos2unix main.sh
dos2unix scripts/*.sh
```

---

## Usage

Run the toolkit using:

```bash
./main.sh
```

Select the required module from the interactive dashboard to perform threat hunting and security analysis operations.

---

## Available Modules

| Module | Description |
|---|---|
| Process Scan | Detects suspicious running processes |
| Failed Login Detection | Monitors failed authentication attempts |
| Open Ports Scanner | Identifies active listening ports |
| Hidden Files Detection | Discovers hidden files and directories |
| Cron Persistence Detection | Detects suspicious cron jobs |
| Network Connections Monitoring | Monitors active network connections |
| Malware Keyword Scanner | Searches for suspicious malware-related keywords |
| Rootkit Detection | Performs rootkit checks |
| System Information | Displays host system information |
| Real-Time Monitoring | Continuously monitors suspicious activity |
| Full Scan & Report | Executes all modules and generates reports |

---

## Future Enhancements

- JSON-Based Reporting
- SIEM Integration
- Email Alert System
- File Integrity Monitoring
- Threat Intelligence Integration
- Web-Based Monitoring Dashboard
- Real-Time Alerting System

---

## Disclaimer

This project is intended strictly for educational purposes and authorized security testing only.

---

## Author

Shreyas
