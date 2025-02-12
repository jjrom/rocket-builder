FROM node:10.1.0-stretch
LABEL maintainer="jerome.gasperi@gmail.com"

WORKDIR "/"
COPY package.json /package.json
RUN npm install --verbose

COPY GruntFile.js /GruntFile.js
ENTRYPOINT ["node_modules/grunt/bin/grunt", "--gruntfile", "GruntFile.js"]

