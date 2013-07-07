Cta  = require("../lib/cta")
cta = null

describe 'Cta', ->
  describe '#constructor', ->
    before ->
      cta = new Cta

    it 'should return an instance of Cta', ->
      cta.should.be.an.instanceof(Cta)