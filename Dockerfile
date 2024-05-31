FROM python:3.10-slim

ENV LANG="C.UTF-8" \
    TZ="Asia/Shanghai"


COPY ./requirements.txt requirements.txt
RUN pip config set global.index-url https://mirrors.tuna.tsinghua.edu.cn/pypi/web/simple \
    && pip install --no-cache-dir -r requirements.txt

RUN mkdir /app
COPY . /app
WORKDIR /app
EXPOSE 27701

ENTRYPOINT [ "/app/entrypoint" ]