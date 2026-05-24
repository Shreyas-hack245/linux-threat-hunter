#!/bin/bash

echo "======================================"
echo " Open Ports Scanner"
echo "======================================"

echo "[+] Listening Ports:"
ss -tulnp

echo ""
echo "[+] Established Connections:"
ss -antp | grep ESTAB

echo ""
echo "[+] Processes Using Network Ports:"
lsof -i -P -n
