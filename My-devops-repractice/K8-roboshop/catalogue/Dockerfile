FROM node:20.18.0-alpine3.20
EXPOSE 8080
RUN addgroup -S roboshop && adduser -S appuser -G appgroup
WORKDIR /opt/server
#ENV MONGO=true  #We can pass this from kubernetes env, instead of here
RUN chown roboshop:roboshop /opt/server
USER roboshop
COPY package.json /opt/server/
COPY server.js /opt/server/
RUN npm install
CMD [ "node", "server.js" ]