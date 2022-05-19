FROM node:16.15.0-alpine as Deps

WORKDIR /app

COPY ./package.json ./yarn.lock ./

RUN yarn install --frozen-lockfile

FROM node:16.15.0-alpine as Builder

WORKDIR /app

COPY --from=Deps /app .

RUN yarn build

FROM node:16.15.0-alpine as Runner

WORKDIR /app

COPY --from=Builder /app .

# EXPOSE 4000
ENV NODE_ENV=production

CMD ["yarn", "start"]