#!/bin/bash

# Colors
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
BLUE="\e[34m"
CYAN="\e[36m"
RESET="\e[0m"

clear

echo -e "${CYAN}"
echo "================================================="
echo "            LINUX THREAT HUNTER"
echo "================================================="
echo -e "${RESET}"

echo -e "${GREEN} Blue Team Threat Hunting Toolkit ${RESET}"
echo ""

echo -e "${YELLOW}[1]${RESET} Process Scan"
echo -e "${YELLOW}[2]${RESET} Failed Login Detection"
echo -e "${YELLOW}[3]${RESET} Open Ports Scanner"
echo -e "${YELLOW}[4]${RESET} Hidden Files Detection"
echo -e "${YELLOW}[5]${RESET} Cron Persistence Detection"
echo -e "${YELLOW}[6]${RESET} Network Connections Monitoring"
echo -e "${YELLOW}[7]${RESET} Run Full Scan"
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

        ./scripts/process_scan.sh
        ./scripts/failed_logins.sh
        ./scripts/open_ports.sh
        ./scripts/hidden_files.sh
        ./scripts/cron_persistence.sh
        ./scripts/network_connections.sh
        ;;
    0)
        echo -e "${RED}Exiting...${RESET}"
        ;;
    *)
        echo -e "${RED}Invalid option${RESET}"
        ;;
esac
