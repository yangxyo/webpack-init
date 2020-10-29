echo "输入项目名："
read projName
mkdir -p $projName && cd $projName
yarn init -y
yarn add webpack webpack-cli webpack-dev-server html-webpack-plugin clean-webpack-plugin style-loader css-loader html-loader -D
jq '.scripts.start="webpack serve"' package.json > package.tmp && mv -f package.tmp package.json
cp ../config/webpack.config.js ./
mkdir src && cd src
touch index.html index.js index.css
echo 'import "./index.css"\nimport "./index.html"' > index.js
