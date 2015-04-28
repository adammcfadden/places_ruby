require 'rspec'
require 'places'

describe(Places) do
  describe('#location') do
    it('returns the location of the place visited') do
      test_location = Places.new("Cleveland, OH")
      expect(test_location.location()).to(eq("Cleveland, OH"))
    end
  end


end
