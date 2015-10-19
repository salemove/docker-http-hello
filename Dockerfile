FROM    ubuntu:15.04

RUN apt-get install --yes curl
RUN curl --silent --location https://deb.nodesource.com/setup_0.12 | bash -
RUN apt-get install --yes nodejs

# App
ADD . /src
# Install app dependencies
#RUN cd /src; npm install

#EXPOSE  8080
ENTRYPOINT ["node", "/src/index.js"]
