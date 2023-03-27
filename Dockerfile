FROM node:10
WORKDIR /usr/src/app
COPY package.json ./
RUN yarn install --ignore-engine
COPY ./ ./
ENTRYPOINT [ "yarn" ]
CMD [ "start" ]
