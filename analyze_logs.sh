#!/bin/bash

echo "--- RAPORT INCIDENTE ---"

# 1. Numaram cate erori au fost in total
echo -n "Total Erori: "
grep "ERROR" server.log | wc -l 

# 2. Veddem care a fost cea mai frecventa eroare (folosim sort si uniq)
echo "Cea mai frecventa eroare:"
grep "ERROR" server.log | cut -d " " -f 4 | sort | uniq -c

# 3. Extrage lista de utilizatori care s-au logat
echo "Utilizatori logati:"
grep "Login_Success" server.log | cut -d " " -f 3 | cut -d ":" -f 2 | sort | uniq
