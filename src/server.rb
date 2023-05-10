require 'sinatra'
require 'faraday'



get '/' do
  @title = 'Faraday Sinatra'
  @name = 'Faraday-Sinatra'
  @header = 'Faraday Sinatra Example'
  @message = 'This is a simple example of Faraday and Sinatra'
  erb :index
end

get '/ipinfo' do
  @title = 'Faraday Sinatra'
  @name = 'Faraday-Sinatra'
  @header = 'Example of Faraday Request'
  @message = 'This JSON data is generated from a Faraday request to ipinfo.io'
  @json = req_ipinfo
  erb :ipinfo
end

def req_ipinfo
  response = Faraday.get('https://ipinfo.io/json')
  response.body
end
