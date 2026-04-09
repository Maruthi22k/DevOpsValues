FROM almalinux:9

RUN dnf install -y nginx && dnf clean all

CMD ["nginx", "-g", "daemon off;"]