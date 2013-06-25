require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  "Hello!"
end

get '/hello_world' do
  "Hello, World!"
end

get '/hello_me' do
  @me = "David"
  return "Hello, #{@me}"
end

get '/hello_you/:name' do
  @name = params[:name]
  return "Hello, #{@name}"
end

get '/names/:first/:last' do
  @first = params[:first]
  @second = params[:last]
  return "You can do multiple parameters,
    #{@first.capitalize}, #{@second.capitalize}!"
end

get '/calc/add/:first/:second' do
  @first = params[:first].to_f
  @second = params[:second].to_f
  return (@first + @second).to_s
end

get '/calc/multiply/:first/:second' do
  @first = params[:first].to_f
  @second = params[:second].to_f
  return (@first * @second).to_s
end

get '/calc/divide/:first/:second' do
  @first = params[:first].to_f
  @second = params[:second].to_f
  return (@first / @second).to_s
end

get '/calc/subtract/:first/:second' do
  @first = params[:first].to_f
  @second = params[:second].to_f
  return (@first - @second).to_s
end

get '/oh_hai/:name' do
  @name - params[:name]
  erb :hai
end