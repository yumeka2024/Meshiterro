const { environment } = require('@rails/webpacker')

module.exports = environment

// カリキュラムの指示で追記4-24
const webpack = require('webpack')
environment.plugins.prepend(
  'Provide',
  new webpack.ProvidePlugin({
    $: 'jquery/src/jquery',
    jQuery: 'jquery/src/jquery',
    Popper: 'popper.js'
  })
)