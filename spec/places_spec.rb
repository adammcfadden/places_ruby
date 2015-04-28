require 'rspec'
require 'places'

describe(Places) do
  describe('#location') do
    it('returns the location of the place visited') do
      test_location = Places.new("Cleveland, OH")
      expect(test_location.location()).to(eq("Cleveland, OH"))
    end
  end

  describe('.all') do
    it('create an empty array for the places to be saved into') do
      expect(Places.all()).to(eq([]))
    end
  end     


end
