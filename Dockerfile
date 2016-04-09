FROM thoughtbot/heroku-haskell-stack:lts-5.5

ONBUILD RUN apt-get update && apt-get install -y nodejs npm

ONBUILD RUN npm config set registry https://registry.npmjs.org/ && npm install

ONBUILD RUN node_modules/elm/binwrappers/elm-package install
ONBUILD RUN node_modules/webpack/bin/webpack.js -p -d
