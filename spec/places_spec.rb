require 'rspec'
require 'places'

describe(Places) do
  before() do
    Places.clear()
  end
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

  describe('#save') do
    it('allows a location that has been visited to be stored into array.') do
      test_location = Places.new("Cleveland, OH")
      test_location.save()
      expect(Places.all()).to(eq([test_location]))
    end
  end
  describe('.clear') do
    it('clear the location list') do
      expect(Places.clear()).to(eq([]))
    end
  end




end
