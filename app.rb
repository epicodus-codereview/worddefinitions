require 'sinatra'
require 'sinatra/reloader'
require './lib/word'

get '/' do
  erb :index
end

get '/' do
  erb :new_word_form
end
