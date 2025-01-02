# Builder Image

FROM node:20.13-alpine3.20 AS builder

RUN apk add g++ make \
    linux-headers \
    ca-certificates \
    libusb-dev \
    nodejs \
    yarn

WORKDIR /app

COPY package*.json ./

RUN npm install --no-audit

COPY . .

RUN  npm run build

FROM node:20.13-alpine3.20 AS release

RUN apk add g++ make \
    ca-certificates \
    yarn

WORKDIR /app

RUN mkdir -p logs

COPY package*.json ./

COPY . .

RUN NODE_ENV=production npm install --only=production --no-audit

COPY --from=builder /app/build ./build

ENV NODE_ENV production

ENV PORT=3000

EXPOSE 3000

VOLUME /app/logs

ENV NODE_ENV="production"

CMD ["npm", "start", "--", "--host", "0.0.0.0", "--no-open"]
