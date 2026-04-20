FROM Node:20
WORKDIR /app/user/
EXPOSE 8080
COPY package.json .
COPY *.js .
RUN dnf update -y && npm install
ENV MONGO="true" \
    REDIS_URL="redis://redis:6379" \
    MONGO_URL="mongodb://mongodb:27017/user"
CMD ["node", "server.js"]