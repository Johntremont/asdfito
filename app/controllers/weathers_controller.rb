class WeathersController < ApplicationController
  def index
    require 'rest-client'
    require 'json'

    #@response === RestClient.get('https://pokeapi.co/api/v2/pokemon/1')

    #@results = JSON.parse(@response.to_str)
    #@name = @results['forms'][0]['name']

    @response = RestClient.get('https://api.weatherapi.com/v1/current.json?key=12e3055d560c4eb49a8205630222404&q=santiago&aqi=no')
    @results = JSON.parse(@response.to_str)
    @city = @results['location']
    @values = @results['current']
  end
end
