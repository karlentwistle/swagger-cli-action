FROM node:14.15-alpine

RUN npm install -g @apidevtools/swagger-cli@4.0.4

COPY entrypoint.sh /usr/local/bin/

RUN ln -s /usr/local/bin/entrypoint.sh / # backwards compat

ENTRYPOINT ["entrypoint.sh"]
