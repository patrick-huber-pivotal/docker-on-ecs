FROM ubuntu:xenial

# add nodejs and python
RUN apt-get update && \
    apt-get install nodejs npm python python-dev python-pip python-virtualenv && \
    git clone repo1 && \
    git clone repo2

WORKDIR /app

# create the runtime conatiner
FROM python3.6
COPY --from=0 /app .
CMD ["manage.py", "/app"]
