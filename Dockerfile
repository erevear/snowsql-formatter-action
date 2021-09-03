# Base image
FROM ubuntu:latest

# installes required packages for our script
RUN apt-get update \
  && apt-get install -y curl \
  && curl -sL https://deb.nodesource.com/setup_14.x | bash - \
  && apt-get install -y nodejs \
  && curl -L https://www.npmjs.com/install.sh | sh

WORKDIR /usr/app

RUN npm install snowsql-formatter-cli -g

# RUN npm install sql-formatter -g
# Copies your code file  repository to the filesystem
COPY entrypoint.sh /entrypoint.sh

# change permission to execute the script and
RUN chmod +x /entrypoint.sh

RUN echo 'WHAT IS HAPPENINIG'


# file to execute when the docker container starts up
ENTRYPOINT ["/entrypoint.sh"]