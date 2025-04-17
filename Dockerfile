FROM node:12-alpine
#install git
RUN apk add --no-cache git
#clone repository
RUN  git clone -q https://github.com/lghchimsarah21/todo-app.git
WORKDIR /todo-app
RUN install --production
CMD {"node", "/src/index.js"}
