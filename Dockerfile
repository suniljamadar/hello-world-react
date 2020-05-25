FROM node:14.2.0 as builder
LABEL application="react-app"
LABEL owner="raja"
RUN mkdir /code
WORKDIR /code
COPY package*.json ./
RUN npm install
COPY . .
RUN yarn build
# EXPOSE 3000
# CMD ["npm","start"]




# stage 2


FROM nginx
COPY --from=builder /code/build/ /usr/share/nginx/html

