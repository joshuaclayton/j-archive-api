const elmSource = __dirname + '/js/elm';
var ExtractTextPlugin = require('extract-text-webpack-plugin');
const path = require("path");

module.exports = {
  entry: {
    app: [
      "./js/index.js",
      "./js/elm/Main.elm"
    ]
  },
  output: {
    filename: "bundle.js",
    path: path.join(__dirname, "static", "js")
  },
  module: {
    loaders: [
      {
        test: /\.elm$/,
        exclude: /(node_modules|elm-stuff)/,
        loader: `elm-webpack?cwd=${elmSource}`
      },
      {
        test: /\.js$/,
        exclude: /(node_modules|bower_components)/,
        loader: 'babel',
        query: {
          presets: ['es2015']
        }
      },
      {
        test: /\.scss$/,
        loader: ExtractTextPlugin.extract('css!sass')
      }
    ]
  },
  plugins: [
    new ExtractTextPlugin('../css/bundle.css', {
      allChunks: true
    })
  ]
};
