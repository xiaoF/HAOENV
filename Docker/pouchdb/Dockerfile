FROM couchdb

RUN apt-get -qq update && \
    apt-get -y --no-install-recommends install g++ python make git wget

# Install NodeJS

RUN curl -sSLO "https://nodejs.org/dist/v4.4.7/node-v4.4.7-linux-x64.tar.gz" && \
    tar -xzf "node-v4.4.7-linux-x64.tar.gz" -C /usr/local --strip-components=1 && \
    rm "node-v4.4.7-linux-x64.tar.gz" && \
    npm install -g npm@3.10.5 && \
    npm install -g pouchdb-server && \
    npm cache clear

RUN apt-get -y purge g++ make python git && \
    apt-get -y autoremove && \
    apt-get -y autoclean


EXPOSE 5984


CMD ["pouchdb-server", "-p", "5984", "-o", "0.0.0.0"]