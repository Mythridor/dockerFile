FROM  fedora:latest

RUN dnf -y update && dnf install wget tar git sqlite sqlite-devel -y
RUN wget https://bootstrap.pypa.io/get-pip.py
CMD ["python","get-pip.py"]
CMD ["pip","sqlite3"]

WORKDIR /home/fedora/wrk
COPY Chinook_Sqlite.sqlite /home/fedora/wrk
COPY db.py /home/fedora/wrk
CMD ["python3.5","db.py"]
