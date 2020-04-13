FROM debian:buster

RUN apt update
RUN apt install -y build-essential systemtap-sdt-dev
COPY main.c .
RUN gcc main.c -o ticker
CMD [ "./ticker" ]