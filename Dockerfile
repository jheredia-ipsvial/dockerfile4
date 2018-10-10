#FROM node:10.11-alpine
FROM nginx:1.15.5

ARG workDir=/opt/project
#ENV USER test_enginx
ENV  DIR  $workDir
#RUN npm install -g http-server && mkdir -p $DIR
#RUN  addgroup $USER && adduser -s /bin/ash -D -G $USER $USER
#RUN chown $USER:$USER $DIR
#USER $USER
COPY index.html $DIR/index.html
COPY nginx.conf /etc/nginx/conf.d/default.conf
WORKDIR $DIR
EXPOSE 90/tcp 
VOLUME $DIR
ENTRYPOINT ["nginx", "-g", "daemon off;"] 

