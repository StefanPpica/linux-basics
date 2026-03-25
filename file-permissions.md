# 🛡️ Linux File Permissions (Securitate și Acces)

În Linux, totul este un fișier, iar accesul la aceste fișiere este controlat prin permisiuni stricte. Înțelegerea acestora este vitală pentru a preveni incidentele de securitate în Cloud.

## 👤 Cele 3 Tipuri de Entități
Fiecare fișier sau director are permisiuni setate pentru trei grupuri:
1. **User (u):** Proprietarul fișierului.
2. **Group (g):** Utilizatorii care fac parte din grupul asociat fișierului.
3. **Others (o):** Toți ceilalți utilizatori din sistem.

## 🛠️ Moduri de Acces (rwx)
| Simbol | Acțiune | Semnificație | Valoare Numerică |
| :--- | :--- | :--- | :--- |
| **r** | **Read** | Citirea conținutului unui fișier / Listarea unui folder | **4** |
| **w** | **Write** | Modificarea fișierului / Crearea sau ștergerea în folder | **2** |
| **x** | **Execute** | Rularea unui script sau program / Intrarea într-un folder | **1** |

---

## 🔢 Reprezentarea Numerică (Octal)
Suma valorilor de mai sus determină permisiunea finală:
* **7 (4+2+1):** Acces complet (`rwx`)
* **6 (4+2):** Citire și scriere (`rw-`)
* **5 (4+1):** Citire și execuție (`r-x`)
* **4:** Doar citire (`r--`)



## ⌨️ Comenzi Esențiale de Gestionare

| Comandă | Nume Complet | Utilitate | Exemplu |
| :--- | :--- | :--- | :--- |
| **`ls -l`** | List Long | Vezi permisiunile actuale (ex: `-rwxr-xr--`) | `ls -l script.sh` |
| **`chmod`** | Change Mode | Schimbă permisiunile (numeric sau simbolic) | `chmod 755 script.sh` |
| **`chown`** | Change Owner | Schimbă proprietarul fișierului | `sudo chown stefan app.log` |
| **`chgrp`** | Change Group | Schimbă grupul asociat fișierului | `chgrp devops config.txt` |

---

## 💡 Scenariu de Incident Management (Exemplu)
Dacă un serviciu de monitorizare (ex: Prometheus) nu poate citi logurile aplicației tale, vei vedea eroarea `Permission Denied`. 
**Rezolvare:** Verifici cu `ls -l` și observi că logul are permisiuni `600` (doar userul are acces). Folosești `chmod 644` pentru a permite și altor servicii să citească datele.