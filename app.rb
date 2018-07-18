require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    original_string = params['string']
    @reversed_string = original_string.reverse
    erb :reversed
  end

  get '/friends' do
    # Write your code here!
    @friends =["Emily Wilding Davidon", "Harriet Tubman", "Joan of Arc", "Malala yousafzai", "Sojourner Truth"]
    erb :friends
  end
end
