FROM harbor.mcdchina.net/devops/python:3.9

RUN /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' >/etc/timezone

RUN sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list.d/debian.sources \
    && sed -i -e 's|security.debian.org/\? |security.debian.org/debian-security |g' \
    -e 's|security.debian.org|mirrors.ustc.edu.cn|g' \
    -e 's|deb.debian.org/debian-security|mirrors.ustc.edu.cn/debian-security|g' \
    /etc/apt/sources.list.d/debian.sources \
    && apt update -y \
    && apt install -y cmake libgl1-mesa-glx

ENV PYTHONUNBUFFERED=TRUE

ADD . /app
WORKDIR /app
RUN pip install -r requirements.txt -i https://mirrors.aliyun.com/pypi/simple
CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:17001", "app:app"]

EXPOSE 17001