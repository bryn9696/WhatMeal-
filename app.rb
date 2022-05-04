# frozen_string_literal: true
require 'sinatra/base'
require 'sinatra/flash'
require 'sinatra/reloader'
# require './database_connection_setup'
# require './lib/bookings'
require_relative './lib/ingredients'
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
    erb :index
  end

  get '/user_input' do
    redirect '/'
    # @ingredients_list = @space_name = params[:Name]
    # @ingredients = Ingredients.ingredients
  end

end