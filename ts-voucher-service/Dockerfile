FROM harbor.mcdchina.net/devops/python:3.10

RUN /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' >/etc/timezone
WORKDIR /app
COPY requirements.txt ./
RUN pip install cryptography -i https://mirrors.aliyun.com/pypi/simple
RUN pip install --no-cache-dir -r requirements.txt -i https://mirrors.aliyun.com/pypi/simple 

ADD ./server.py /app/
CMD [ "python", "server.py" ]

EXPOSE 16101