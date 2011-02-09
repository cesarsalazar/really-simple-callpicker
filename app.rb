require 'rubygems'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'builder'

post '/' do
  content_type 'text/xml'
  builder :index
end