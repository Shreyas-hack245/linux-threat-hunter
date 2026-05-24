#!/bin/bash

echo "======================================"
echo " Cron Persistence Detection"
echo "======================================"

echo "[+] Current User Cron Jobs:"
crontab -l 2>/dev/null

echo ""
echo "[+] System-wide Cron Jobs:"
cat /etc/crontab 2>/dev/null

echo ""
echo "[+] Cron Directories:"
ls -la /etc/cron.*

echo ""
echo "[+] Suspicious Cron Entries:"
grep -RiE "wget|curl|nc|bash|sh" /etc/cron* 2>/dev/null
