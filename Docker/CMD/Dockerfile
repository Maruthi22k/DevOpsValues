FROM almalinux:9
RUN dnf update -y && dnf install nginx -y 
WORKDIR /app/
COPY . /app/

CMD ["nginx", "-g", "daemon off"]