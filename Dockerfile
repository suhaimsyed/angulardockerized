# base image
FROM node:alpine

COPY package.json /usr/src/app/
WORKDIR /usr/src/app/

# add `/usr/src/app/node_modules/.bin` to $PATH
ENV PATH /usr/src/app/node_modules/.bin:$PATH

RUN npm install
RUN npm install -g @angular/cli

# add app
COPY ./ /usr/src/app

# start app
CMD ng serve --host 0.0.0.0
