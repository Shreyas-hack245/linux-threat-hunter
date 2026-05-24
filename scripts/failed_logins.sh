#!/bin/bash

echo "======================================"
echo " Failed Login Detection"
echo "======================================"

echo "[+] Recent Failed Login Attempts:"
lastb | head

echo ""
echo "[+] Failed SSH Login Attempts:"
grep "Failed password" /var/log/auth.log 2>/dev/null

echo ""
echo "[+] Invalid User Attempts:"
grep "Invalid user" /var/log/auth.log 2>/dev/null
