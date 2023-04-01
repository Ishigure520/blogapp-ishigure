const ManifestPlugin = require('webpack-manifest-plugin');

module.exports = {
    // ...他の設定...
    plugins: [
      new ManifestPlugin()
    ]
  }
  