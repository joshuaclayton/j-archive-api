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

### Webpack and Livereload

You'll need [Foreman].

[Foreman]: http://ddollar.github.io/foreman/

```sh
foreman start -f Procfile.dev
```

Note that [LiveReload] is occasionally too fast to catch changes to `*.hs`
files.

[LiveReload]: https://www.npmjs.com/package/livereload

## Deployment

Via [Docker] to [Heroku]; see [bin/deploy](bin/deploy).

[Docker]: https://www.docker.com/
[Heroku]: https://www.heroku.com/

Be aware that certain images generated might be very large; as such, take care
to periodically clean up unused or temporary images.

## License

Copyright 2016 Josh Clayton; see the [LICENSE](LICENSE) for details.
