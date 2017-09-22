# Mon dockerfile
FROM  fedora:latest

RUN dnf -y update && dnf install wget tar git


WORKDIR /home/fedora/wrk
# installer wget tar git
# Copier la base de donnees sqlite Chinook_Sqlite.sqlite
COPY Chinook_Sqlite.sqlite /home/fedora/wrk
# Copier votre script de requetes SQL (celui avec des jointures) dans votre directory de travail
COPY db.py /home/fedora/wrk
# lancer le programme ( python3,<nom du script>  avec la commande CMD
CMD["python3.5", "db.py"]