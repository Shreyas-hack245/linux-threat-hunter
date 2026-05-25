#!/bin/bash

echo "======================================"
echo " Suspicious Process Scanner"
echo "======================================"

echo "[+] Top Running Processes:"
ps aux --sort=-%cpu | head

echo ""
echo "[+] Processes Running as Root:"
ps -U root -u root u

echo ""
echo "[+] Suspicious Processes:"
ps aux | grep -E "nc|netcat|nmap|hydra|john|meterpreter" | grep -v grep

echo ""
echo "[+] Scan Completed"
