FROM almalinux:9
RUN echo "This is a RUN instruction in Dockerfile"

RUN dnf install -y nginx && \
    dnf uninstall -y nginx && \
    dnf clean all