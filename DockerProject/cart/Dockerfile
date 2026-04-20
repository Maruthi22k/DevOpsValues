FROM node:20
WORKDIR /app/cart/
EXPOSE 8080
COPY *.json .
COPY *.js .
RUN npm install
ENV REDIS_HOST="redis" \
    REDIS_PORT="catalogue" \
    CATALOGUE_PORT=8080

CMD ["node", "server.js"]