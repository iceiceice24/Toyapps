const { environment } = require('@rails/webpacker')

const ManifestPlugin = require('webpack-manifest-plugin')
environment.plugins.append('Manifest', new ManifestPlugin())

module.exports = environment
