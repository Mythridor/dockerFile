FROM fedora:latest

RUN git clone https://github.com/Mythridor/json-server.git
RUN dnf update -y && wget https://bootstrap.pypa.io/get-pip.py
CMD ["python3", "get-pip.py"]

WORKDIR /home/fedora/wrk
COPY ./json-server/* /home/fedora/wrk
EXPOSE 5000

CMD ["pip3", "install Flask"]