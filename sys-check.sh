#!/bin/bash

echo "=== PORNEȘTE DIAGNOZA SISTEMULUI ==="

# 1. Afișăm data și ora curentă
echo "Data investigației: $(date)"

# 2. Verificăm memoria RAM liberă (stocăm doar linia cu totalul)
echo "-------------------------------------"
echo "Status Memorie RAM:"
free -h

# 3. Testăm dacă avem conexiune la internet prin ping rapid
echo "-------------------------------------"
echo "Testare conectivitate internet..."
if ping -c 1 google.com > /dev/null 2>&1; then
    echo "[OK] Conexiunea la internet funcționează!"
else
    echo "[ERROR] Lipsă conexiune internet sau DNS blocat!"
fi

echo "====================================="