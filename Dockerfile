FROM node:15-alpine

RUN ln -sf /usr/share/zoneinfo/Asia/ShangHai /etc/localtime
RUN echo "Asia/Shanghai" > /etc/timezone

COPY package.json /app/dependencies/package.json
COPY yarn.lock /app/dependencies/yarn.lock
RUN cd /app/dependencies \
    && yarn install --frozen-lockfile --registry=https://registry.npm.taobao.org \
    && yarn cache clean \
    && mkdir /app/micro-ssr \
    && ln -s /app/dependencies/node_modules /app/micro-ssr/node_modules

COPY ./ /app/micro-ssr/

WORKDIR /app/micro-ssr
EXPOSE 7001

RUN yarn build
CMD yarn start
