# frozen_string_literal: true
require 'sinatra/base'
require 'sinatra/flash'
require 'sinatra/reloader'

require_relative './lib/ingredients'
require_relative './lib/recipes'



# App class
class Meal_Choice < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions
  register Sinatra::Flash

  get '/' do
    erb :index
  end

  post '/user_input' do
    @ingredients_list = []
    @ingredients_list.push(params[:ing1])
    @ingredients_list.push(params[:ing2])
    @ingredients_list.push(params[:ing3])
    @ingredients_list.push(params[:ing4])
    @ingredients_list.push(params[:ing5])
    
    @meal_choices = Ingredients.final(@ingredients_list)
    @ingredients_list = @ingredients_list.join(', ')
    p @ingredients_list
    p @meal_choices
    erb :user_input
  end

end