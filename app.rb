require 'sinatra'
require 'sinatra/reloader'
require './lib/word'
require './lib/definition'

get '/' do
  erb :index
end

get '/new_word_form' do
  erb :new_word_form
end

post '/add_new_word' do
  word = Word.new(params["word"])
  word.save
  erb :index
end

get '/definition/:name' do
  @found_word = Word.find(params["name"])
  erb :definition
end

post '/definition/:name/create_new_definition' do
  @found_word = Word.find(params["name"])
  definition = Definition.new(params['definition'])
  @found_word.save_definition(definition)
  redirect "/definition/#{@found_word.name}"
end
