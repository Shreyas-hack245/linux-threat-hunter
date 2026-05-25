#!/bin/bash

echo "======================================"
echo " Failed Login Detection"
echo "======================================"

echo "[+] Failed SSH Login Attempts:"
journalctl | grep "Failed password"

echo ""
echo "[+] Invalid User Attempts:"
journalctl | grep "Invalid user"

echo ""
echo "[+] Authentication Failures:"
journalctl | grep "authentication failure"
