FROM node:12.8.0-alpine

ENV NODE_ENV=production

# set working directory
RUN mkdir -p /react_redux_ui/build
WORKDIR /react_redux_ui

# add a bash shell
RUN apk add --no-cache bash

# install production deplendencies
RUN npm install --production 

# start app
CMD ["npm", "start"]