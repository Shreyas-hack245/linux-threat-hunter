#!/bin/bash

echo "======================================"
echo " Network Connections Monitoring"
echo "======================================"

echo "[+] Active Network Connections:"
ss -tunap

echo ""
echo "[+] Established Connections:"
ss -antp | grep ESTAB

echo ""
echo "[+] External IP Connections:"
ss -tunap | grep -v "127.0.0.1"

echo ""
echo "[+] Top Network Processes:"
lsof -i -n -P
