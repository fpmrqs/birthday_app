require 'sinatra/base'
require 'sinatra/reloader'


class BirthdayApp < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
    also_reload 'app.rb'
  end 

  get '/' do
    erb(:index)
  end

  run! if app_file == $0
end