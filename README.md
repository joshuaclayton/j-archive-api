# J-Archive API

This is an experimental [Yesod] application inspired very heavily by
[jService].

[Yesod]: http://www.yesodweb.com/
[jService]: http://jservice.io/

## Installation

Run:

```sh
bin/setup-db
```

And install any dependencies:

```sh
cabal install
stack install
npm install
```

## Development

### Yesod

```sh
stack exec -- yesod devel
```

### Webpack

```sh
node_modules/webpack/bin/webpack.js --watch
```

### LiveReload

```sh
node_modules/livereload/bin/livereload.js . -e 'hamlet julius lucius cassius hs js css'
```

Note that LiveReload is occasionally too fast to catch changes to `*.hs`
files.

## Deployment

Via [Docker] to [Heroku]; see [bin/deploy](bin/deploy).

[Docker]: https://www.docker.com/
[Heroku]: https://www.heroku.com/

Be aware that certain images generated might be very large; as such, take care
to periodically clean up unused or temporary images.

## License

Copyright 2016 Josh Clayton; see the [LICENSE](LICENSE) for details.
