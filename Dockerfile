FROM python:3.10-slim

ENV LANG="C.UTF-8" \
    TZ="Asia/Shanghai"

COPY ./requirements.txt requirements.txt
RUN cp /usr/share/zoneinfo/$TZ /etc/localtime \
    && echo "$TZ" > /etc/timezone \
    && pip install --no-cache-dir -r requirements.txt \
    && mkdir /app

COPY . /app
WORKDIR /app
EXPOSE 27701

ENTRYPOINT [ "/app/entrypoint" ]