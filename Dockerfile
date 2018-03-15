FROM ubuntu:xenial

# add nodejs and python
RUN apt-get update && \
    apt-get install -y python3 python3-pip nodejs npm && \
    pip3 install --upgrade pip && \
    pip3 install pipenv && \
    pip3 install django

WORKDIR /app

# create the runtime conatiner
FROM python:3.6
COPY --from=0 /app .
CMD ["manage.py", "/app"]
