for key, value of require('./cta/common')
  eval("var #{key} = value;")

module.exports = class Cta
  constructor: ->