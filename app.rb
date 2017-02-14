require 'sinatra'
require 'sinatra/reloader'

require 'active_record'

# Load the file to connect to the DB
require_relative 'db/connection'

# Load specific routes / controllers
require_relative 'controllers/pokemon.rb'
