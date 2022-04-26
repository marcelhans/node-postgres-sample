FROM node:alpine

WORKDIR /app
COPY . .
RUN npm ci --production

ENV PORT=3000
EXPOSE 3000
VOLUME [ "/tmp" ]
ENTRYPOINT ["npm", "start"]
