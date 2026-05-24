#!/bin/bash

clear

echo "=========================================="
echo "        Linux Threat Hunter"
echo "=========================================="
echo " Blue Team Threat Hunting Toolkit"
echo "=========================================="

echo ""
echo "[1] Process Scan"
echo "[2] Failed Login Detection"
echo "[3] Open Ports Scanner"
echo "[4] Hidden Files Detection"
echo "[5] Cron Persistence Detection"
echo "[6] Network Connections Monitoring"
echo "[7] Run Full Scan"
echo "[0] Exit"
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
        echo "[+] Running Full Threat Hunt..."

        ./scripts/process_scan.sh
        ./scripts/failed_logins.sh
        ./scripts/open_ports.sh
        ./scripts/hidden_files.sh
        ./scripts/cron_persistence.sh
        ./scripts/network_connections.sh
        ;;
    0)
        echo "Exiting..."
        ;;
    *)
        echo "Invalid option"
        ;;
esac
