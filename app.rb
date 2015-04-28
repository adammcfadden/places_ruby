require 'sinatra'
require 'sinatra/reloader'
require './lib/places'
also_reload 'lib/**/*.rb'

get('/') do
  @places = Places.all()
  erb(:index)
end

post('/places') do
   location = params.fetch('location')
   places = Places.new(location)
   places.save()
   erb(:places)
end
