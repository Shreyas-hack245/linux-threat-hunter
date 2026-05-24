#!/bin/bash

# ==============================
# Colors
# ==============================

RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
BLUE="\e[34m"
CYAN="\e[36m"
RESET="\e[0m"

# ==============================
# Time & Report
# ==============================

TIME=$(date +"%Y-%m-%d_%H-%M-%S")
REPORT="reports/threat_report_$TIME.txt"

clear

# ==============================
# Banner
# ==============================

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

echo -e "${GREEN}        Linux Threat Hunter${RESET}"
echo -e "${BLUE}      Blue Team Security Toolkit${RESET}"
echo -e "${YELLOW}             made by shreyas${RESET}"

echo ""
echo -e "${YELLOW}[1]${RESET} Process Scan"
echo -e "${YELLOW}[2]${RESET} Failed Login Detection"
echo -e "${YELLOW}[3]${RESET} Open Ports Scanner"
echo -e "${YELLOW}[4]${RESET} Hidden Files Detection"
echo -e "${YELLOW}[5]${RESET} Cron Persistence Detection"
echo -e "${YELLOW}[6]${RESET} Network Connections Monitoring"
echo -e "${YELLOW}[7]${RESET} Run Full Scan + Save Report"
echo -e "${RED}[0]${RESET} Exit"

echo ""
read -p "Select an option: " choice

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
        echo -e "${BLUE}[+] Running Full Threat Hunt...${RESET}"

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

        } | tee "$REPORT"

        echo ""
        echo -e "${GREEN}[+] Report Saved:${RESET} $REPORT"
        ;;

    0)
        echo -e "${RED}Exiting...${RESET}"
        ;;

    *)
        echo -e "${RED}Invalid option${RESET}"
        ;;
esac
