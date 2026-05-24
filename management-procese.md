# ⚙️ Managementul Proceselor în Linux

În Linux, orice program în execuție este un proces identificat printr-un **PID (Process ID)** unic.

## ⌨️ Comenzi esențiale
* `ps aux` - Listează toate procesele active din sistem.
* `top` / `htop` - Monitorizarea resurselor (CPU, RAM) în timp real.
* `Ctrl + Z` - Suspendă procesul curent din terminal și îl trimite în fundal (Background).
* `jobs` - Afișează procesele trimise în fundal din sesiunea curentă.
* `kill %1` - Oprește politicos jobul nr. 1 (`SIGTERM`).
* `kill -9 <PID>` - Oprește forțat și instantaneu un proces blocat (`SIGKILL`).