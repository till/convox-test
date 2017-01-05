FROM ubuntu:16.04

COPY . /app
RUN apt-get update -y -q
RUN apt-get install -y -q iputils-ping
#RUN whereis ping


RUN echo "This is a test! :-)"

#ENTRYPOINT "/bin/true > /dev/null"
CMD /bin/ping -i 20 127.0.0.1
