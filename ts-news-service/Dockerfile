FROM harbor.mcdchina.net/devops/mrrm/web.go
WORKDIR /app
ADD ./src/main/main.go /app
ENV GOPROXY=https://goproxy.cn
RUN go build
CMD [ "./app" ]
EXPOSE 12862
