FROM centos
RUN yum module install nodejs:16 -y
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
Copy . .
EXPOSE 8080
CMD [ "node", "server.js" ]

