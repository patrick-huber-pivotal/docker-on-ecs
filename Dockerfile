FROM ubuntu:latest

# add nodejs and 
RUN apt-get update && \
    apt-get install nodejs npm python3.6
