#!/bin/bash

# ==========================================
#           LINUX THREAT HUNTER
# ==========================================
# Blue Team Security Toolkit
# ==========================================

# COLORS
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
BLUE="\e[34m"
CYAN="\e[36m"
WHITE="\e[97m"
RESET="\e[0m"

# TIME + REPORT
TIME=$(date +"%Y-%m-%d_%H-%M-%S")
REPORT="reports/threat_report_$TIME.txt"

# THREAT COUNTERS
HIGH=0
MEDIUM=0
LOW=0

clear

# ==========================================
# ASCII BANNER
# ==========================================

echo -e "${CYAN}"

echo "████████╗██╗  ██╗██████╗ ███████╗ █████╗ ████████╗"
echo "╚══██╔══╝██║  ██║██╔══██╗██╔════╝██╔══██╗╚══██╔══╝"
echo "   ██║   ███████║██████╔╝█████╗  ███████║   ██║   "
echo "   ██║   ██╔══██║██╔══██╗██╔══╝  ██╔══██║   ██║   "
echo "   ██║   ██║  ██║██║  ██║███████╗██║  ██║   ██║   "
echo "   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝   ╚═╝   "

echo ""
echo "██╗  ██╗██╗   ██╗███╗   ██╗████████╗███████╗██████╗ "
echo "██║  ██║██║   ██║████╗  ██║╚══██╔══╝██╔════╝██╔══██╗"
echo "███████║██║   ██║██╔██╗ ██║   ██║   █████╗  ██████╔╝"
echo "██╔══██║██║   ██║██║╚██╗██║   ██║   ██╔══╝  ██╔══██╗"
echo "██║  ██║╚██████╔╝██║ ╚████║   ██║   ███████╗██║  ██║"
echo "╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═══╝   ╚═╝   ╚══════╝╚═╝  ╚═╝"

echo -e "${RESET}"

echo ""
echo -e "${CYAN}=================================================${RESET}"
echo -e "${GREEN}               Linux Threat Hunter${RESET}"
echo -e "${BLUE}        Blue Team Security Toolkit${RESET}"
echo -e "${YELLOW}                  Shreyas${RESET}"
echo -e "${CYAN}=================================================${RESET}"
echo ""

# ==========================================
# MENU
# ==========================================

echo -e "${GREEN}[1]${RESET} Process Scan"
echo -e "${GREEN}[2]${RESET} Failed Login Detection"
echo -e "${GREEN}[3]${RESET} Open Ports Scanner"
echo -e "${GREEN}[4]${RESET} Hidden Files Detection"
echo -e "${GREEN}[5]${RESET} Cron Persistence Detection"
echo -e "${GREEN}[6]${RESET} Network Connections Monitoring"
echo -e "${GREEN}[7]${RESET} Malware Keyword Scanner"
echo -e "${GREEN}[8]${RESET} Rootkit Detection"
echo -e "${GREEN}[9]${RESET} System Information"
echo -e "${GREEN}[10]${RESET} Real-Time Monitoring"
echo -e "${GREEN}[11]${RESET} Run Full Scan + Save Report"
echo -e "${RED}[0]${RESET} Exit"

echo ""
echo -ne "${CYAN}Select an option:${RESET} "
read choice

# ==========================================
# OPTIONS
# ==========================================

case $choice in

    1)
        ./scripts/process_scan.sh
        ;;

    2)
        ./scripts/failed_logins.sh
        ;;

    3)
        ./scripts/open_ports.sh
        ;;

    4)
        ./scripts/hidden_files.sh
        ;;

    5)
        ./scripts/cron_persistence.sh
        ;;

    6)
        ./scripts/network_connections.sh
        ;;

    7)
        ./scripts/malware_scan.sh
        ;;

    8)
        ./scripts/rootkit_scan.sh
        ;;

    9)
        ./scripts/system_info.sh
        ;;

    10)

        while true
        do
            clear

            echo -e "${RED}[+] Real-Time Threat Monitoring Enabled${RESET}"
            echo ""

            ./scripts/process_scan.sh

            echo ""
            echo -e "${YELLOW}Refreshing in 10 seconds...${RESET}"

            sleep 10
        done
        ;;

    11)

        echo -e "${BLUE}[+] Initializing Threat Hunt...${RESET}"
        sleep 1

        echo -e "${BLUE}[+] Loading Security Modules...${RESET}"
        sleep 1

        echo -e "${BLUE}[+] Starting System Scan...${RESET}"
        sleep 1

        {
            echo "========== Linux Threat Hunter Report =========="
            echo "Generated: $(date)"
            echo ""

            ./scripts/process_scan.sh
            echo ""

            ./scripts/failed_logins.sh
            echo ""

            ./scripts/open_ports.sh
            echo ""

            ./scripts/hidden_files.sh
            echo ""

            ./scripts/cron_persistence.sh
            echo ""

            ./scripts/network_connections.sh
            echo ""

            ./scripts/malware_scan.sh
            echo ""

            ./scripts/system_info.sh

        } | tee "$REPORT"

        echo ""
        echo -e "${GREEN}[+] Report Saved:${RESET} $REPORT"

        echo "$(date) - Full Threat Hunt Executed" >> logs/activity.log

        echo ""
        echo "========== Threat Summary =========="
        echo "HIGH Threats   : $HIGH"
        echo "MEDIUM Threats : $MEDIUM"
        echo "LOW Threats    : $LOW"
        echo "===================================="

        ;;

    0)

        echo -e "${RED}Exiting Linux Threat Hunter...${RESET}"
        ;;

    *)

        echo -e "${RED}Invalid Option${RESET}"
        ;;

esac
