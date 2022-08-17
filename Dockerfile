FROM debian:11
RUN apt update -y \
&& apt install vim nmap ndiff php less -y