#!/bin/bash

LOG_FILE="auth.log"

echo "=== RAPORT DE SECURITATE - $(date) ==="
echo "--------------------------------------"

# 1. Identigicam IP-ul cu cele mai multe esecuri
MOST_ACTIVE_IP=$(grep "Failed" $LOG_FILE | awk '{print $11}' | sort | uniq -c | head -n 1 )

echo "Atacatorul principal (incercari | IP):"
echo "$MOST_ACTIVE_IP"
echo "-------------------------------------"

# 2. Listam utilizatorii care trebuie sa isi schimbe parola(cei care au Accepted)
echo "Logari reusite (Audit):"
grep "Accepted" $LOG_FILE | awk '{print $9 " de la IP-ul " $11}'