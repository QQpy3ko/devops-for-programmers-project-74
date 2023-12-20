FROM node:14.18.1-slim

RUN echo "deb http://security.debian.org/debian-security bullseye-security main contrib non-free" > /etc/apt/sources.list

RUN echo ls

WORKDIR /app

COPY package.json .
COPY package-lock.json .

RUN npm ci

COPY . .

CMD ["bash", "-c", "npm run migrate && npx fastify start -a 0.0.0.0 -l info -P app.js"]
