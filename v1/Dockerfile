FROM  fedora:latest

RUN dnf update -y && dnf install wget tar -y

WORKDIR /home/wrk
COPY Chinook_Sqlite.sqlite /home/wrk
COPY db.py /home/wrk

CMD ["python3","db.py"]
