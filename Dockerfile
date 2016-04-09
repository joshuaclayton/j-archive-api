FROM thoughtbot/heroku-haskell-stack:lts-5.5

ONBUILD RUN apt-get update && apt-get install -y nodejs npm

ONBUILD RUN npm config set registry https://registry.npmjs.org/ && npm install

ONBUILD RUN npm install webpack -g
