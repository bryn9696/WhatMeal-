# frozen_string_literal: true
require 'sinatra/base'
require 'sinatra/flash'
require 'sinatra/reloader'
# require './database_connection_setup'
# require './lib/bookings'
require_relative './lib/ingredients'
require_relative './lib/recipes'
# require './lib/user'
# require_relative './lib/update'
# require './lib/images'


# App class
class Meal_Choice < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions
  register Sinatra::Flash

  get '/' do
    # Ingredients.ingredients(@ingredients_list)
    erb :index
  end

  post '/user_input' do
    @ingredients_list = []
    @ingredients_list.push(params[:ing1])
    @ingredients_list.push(params[:ing2])
    @ingredients_list.push(params[:ing3])
    @ingredients_list.push(params[:ing4])
    @ingredients_list.push(params[:ing5])
    
    @meal_choices = Ingredients.ingredients(@ingredients_list)
    p '**************'
    # p ing_list
    # i = Ingredients.dictionary(ing_list)
    # p Ingredients.dictionary(@ing_list)
    p '**************'
    # @meal_choices = Ingredients.choice(i)
    # @d = Ingredients.dictionary(@ingredients_list)
    # @c = Ingredients.choice(@ingredients_list)
    
    erb :user_input
    # @ingredients = Ingredients.ingredients
  end

  get '/meal' do
    p @ingredients_list
  end

end