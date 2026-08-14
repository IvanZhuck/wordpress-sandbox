const path = require('path');

module.exports = {
    entry: {
        'common': './js/common.js',
    },
    output: {
        path: path.resolve(__dirname, '../wp-theme/assets/js'),
        filename: '[name].bundle.js',
    },
    mode: 'development',
    module: {
        rules: [
            {
                test: /\.js$/,
                exclude: /node_modules/,
                use: {
                    loader: 'babel-loader',
                    options: {
                        presets: [
                            ['@babel/preset-env', { targets: '> 0.1%' }]
                        ]
                    }
                }
            }
        ]
    }
};