require 'sinatra'
require 'sinatra/reloader'

require 'active_record'

# Load the file to connect to the DB
require_relative 'db/connection'

# Load specific routes / controllers
require_relative 'controllers/pokemon.rb'

require_relative 'models/pokemon'




## main route to Home page...
get '/' do
  "Hello Welcome to HOME page -- no route"
  erb :index
end
