FROM 727482340929.dkr.ecr.us-east-1.amazonaws.com/docker-hub/node16:latest


ENV PATH=$PATH:/usr/src/app/node_modules/.bin \
    NODE_ENV=development

EXPOSE 4200

WORKDIR /usr/src/app
RUN npm i npm@latest -g

COPY package.json ./
COPY package-lock.json ./

COPY . /usr/src/app

CMD ["tail", "-f", "/dev/null"]
