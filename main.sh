#!/bin/bash

# ==============================
# COLORS
# ==============================

RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
BLUE="\e[34m"
CYAN="\e[36m"
WHITE="\e[97m"
RESET="\e[0m"

# ==============================
# REPORT
# ==============================

TIME=$(date +"%Y-%m-%d_%H-%M-%S")
REPORT="reports/threat_report_$TIME.txt"

clear

# ==============================
# BANNER
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

echo -e "${CYAN}┌──────────────────────────────────────────────┐${RESET}"
echo -e "${CYAN}│${RESET}      ${GREEN}Linux Threat Hunter${RESET}                 ${CYAN}│${RESET}"
echo -e "${CYAN}│${RESET}    ${BLUE}Blue Team Security Toolkit${RESET}            ${CYAN}│${RESET}"
echo -e "${CYAN}│${RESET}         ${YELLOW}made by shreyas${RESET}                  ${CYAN}│${RESET}"
echo -e "${CYAN}└──────────────────────────────────────────────┘${RESET}"

echo ""

# ==============================
# MENU
# ==============================

echo -e "${GREEN}[1]${RESET} Process Scan"
echo -e "${GREEN}[2]${RESET} Failed Login Detection"
echo -e "${GREEN}[3]${RESET} Open Ports Scanner"
echo -e "${GREEN}[4]${RESET} Hidden Files Detection"
echo -e "${GREEN}[5]${RESET} Cron Persistence Detection"
echo -e "${GREEN}[6]${RESET} Network Connections Monitoring"
echo -e "${GREEN}[7]${RESET} Run Full Scan + Save Report"
echo -e "${RED}[0]${RESET} Exit"

echo ""
echo -ne "${CYAN}Select an option:${RESET} "
read choice

# ==============================
# OPTIONS
# ==============================

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
        echo -e "\n${BLUE}[+] Running Full Threat Hunt...${RESET}"

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

