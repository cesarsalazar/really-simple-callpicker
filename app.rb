require 'rubygems'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'builder'

post '/' do
  content_type 'text/xml'
  builder :index
end

post '/menu' do
  content_type 'text/xml'
  case params['Digits'] 
    when "1"
      builder :voice_mail
    when "2"
      builder :call
    else
      builder :index
    end
end

post '/voice_mail' do
  content_type 'text/xml'
  builder :voice_mail
end

post '/success' do
  content_type 'text/xml'
  builder :success
end