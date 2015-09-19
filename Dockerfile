FROM    ubuntu

RUN      apt-get update && apt-get install -y curl
RUN      apt-get install -y nodejs
RUN      apt-get install -y npm

# App
ADD . /web
ADD ./web/server.js /web/server.js


EXPOSE  8080
CMD ["nodejs", "/web/server.js"]