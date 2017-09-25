FROM fedora:latest

RUN dnf update -y && dnf install git wget -y  && wget https://bootstrap.pypa.io/get-pip.py
RUN git clone https://github.com/Mythridor/json-server.git json

RUN pwd

WORKDIR /wrk
RUN cp -r /json /wrk
EXPOSE 5000

RUN pip3 install flask flask-script
CMD ["python3", "/wrk/json/json-server.py", "runserver"]
