# base image 
FROM node:16-alpine 
# set working directory 
WORKDIR /app 
# add `/app/node_modules/.bin` to $PATH 
ENV PATH /app/node_modules/.bin:$PATH 
# install and cache app dependencies 
COPY package.json /app/package.json 
RUN npm install -g npm@8.9.0

RUN npm install react-swipeable-views --legacy-peer-deps
# RUN npm install --silent 
# RUN npm install react-scripts -g --silent 

COPY ./ ./
# start app 
CMD ["npm", "start"]