FROM ubuntu:latest
EXPOSE 8000
WORKDIR /app
ENV HOST=localhost PORT=5432
ENV USER=root PASSWORD=root DBNAME=root
COPY ./main main
RUN apt-get update -y | apt-get install golang-go -y
CMD ./main
