# 📡 Networking Basics în Linux

Ghid rapid pentru diagnosticarea rețelei și inspectarea porturilor.

## ⌨️ Comenzi esențiale
* `ip a` - Afișează interfețele de rețea și adresele IP active (înlocuiește vechiul `ifconfig`).
* `ping -c 4 <host>` - Testează conectivitatea de bază cu un server extern (trimite 4 pachete ICMP).
* `curl -I <url>` - Trimite o cerere HTTP și afișează doar header-ul de răspuns (ex: `200 OK`, `404`).
* `ss -tulpn` - Inspectează toate porturile deschise din sistem și arată ce procese le dețin (`LISTEN`).