FROM  fedora:latest

RUN dnf update -y && dnf install wget tar -y

WORKDIR /home/fedora/wrk
COPY Chinook_Sqlite.sqlite /home/fedora/wrk
COPY db.py /home/fedora/wrk

CMD ["python3","db.py"]
