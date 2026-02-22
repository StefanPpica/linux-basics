# Redirecționarea Fluxurilor și Pipe-uri (I/O Redirection)

| Comanda | Nume | Descriere | Exemplu |
| :--- | :--- | :--- | :--- |
| `>` | **Overwrite** (stdout) | Trimite rezultatul unei comenzi într-un fișier (șterge conținutul vechi). | `echo "Salut" > fisier.txt` |
| `>>` | **Append** (stdout) | Adaugă rezultatul la finalul fișierului (păstrează conținutul vechi). | `echo "Linie noua" >> fisier.txt` |
| `<` | **Standard In** (stdin) | Ia date dintr-un fișier și le dă unei comenzi ca intrare. | `cat < fisier.txt` |
| `2>` | **Standard Error** (stderr) | Redirecționează doar mesajele de eroare într-un fișier. | `ls folder_gresit 2> erori.log` |
| `\|` | **Pipe** | Trimite rezultatul unei comenzi direct către altă comandă. | `ls -la \| grep ".md"` |
| `tee` | **T-splitter** | Afișează rezultatul pe ecran ȘI îl salvează și în fișier simultan. | `ls \| tee lista.txt` |