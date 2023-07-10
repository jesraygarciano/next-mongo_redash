FROM node:18-alpine3.17
WORKDIR /app
COPY . .
RUN yarn install --frozen-lockfile
RUN yarn build
EXPOSE 3000
CMD ["yarn", "start"]
