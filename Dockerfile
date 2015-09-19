FROM    ubuntu

RUN      apt-get update && apt-get install -y curl
RUN      curl -sL https://deb.nodesource.com/setup | bash -
RUN      apt-get install -y nodejs
RUN      apt-get install -y npm

# App
ADD . /web


EXPOSE  8080
CMD ["node", "/web/server.js"]