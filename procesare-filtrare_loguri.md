# 🛠️ Tabel de Comenzi Esențiale

| Comandă | Nume | Descriere | Exemplu Practic |
| :--- | :--- | :--- | :--- |
| `grep` | **Global Regular Expression Print** | Caută un tipar/text specific | `grep "ERROR" system.log` |
| `tail` | **Tail (Coadă)** | Vezi ultimele linii (cele mai recente) | `tail -f /var/log/syslog` |
| `head` | **Head (Cap)** | Vezi primele linii (începutul fișierului) | `head -n 15 app.log` |
| `wc` | **Word Count** | Numără liniile, cuvintele sau caracterele | `grep "404" access.log | wc -l` |
| `sort` | **Sort** | Ordonează datele (alfabetic/numeric) | `cat users.txt | sort` |
| `uniq` | **Unique** | Elimină liniile duplicate (după sortare) | `sort log.txt | uniq` |
| `cut` | **Cut (Tăiere)** | Extrage coloane specifice dintr-un text | `cut -d ":" -f 1 /etc/passwd` |
| `tr` | **Translate** | Înlocuiește sau șterge caractere | `cat file.txt | tr 'a-z' 'A-Z'` |
| `sed` | **Stream Editor** | Modifică textul din mers (avansat) | `sed 's/vechi/nou/g' file.txt` |
| `awk` | **(Numele autorilor: Aho, Weinberger, Kernighan)** | Procesare avansată pe coloane/rapoarte | `awk '{print $1}' access.log` |