FROM ubuntu:latest
WORKDIR /app
COPY ./main main
RUN apt-get update -y | apt-get install golang-go -y
EXPOSE 8000
CMD ./main
