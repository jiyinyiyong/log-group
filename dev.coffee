
require("calabash").do "log group",
  "coffee -o lib/ -wbc coffee/"
  "node-dev test/test.coffee"