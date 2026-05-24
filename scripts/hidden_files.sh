#!/bin/bash

echo "======================================"
echo " Hidden Files Detection"
echo "======================================"

echo "[+] Hidden Files in /home:"
find /home -type f -name ".*" 2>/dev/null

echo ""
echo "[+] Hidden Directories in /tmp:"
find /tmp -type d -name ".*" 2>/dev/null

echo ""
echo "[+] Suspicious Hidden Files:"
find / -type f \( -name ".*sh" -o -name ".*py" \) 2>/dev/null
