     
require 'sinatra'
require 'bcrypt'
require 'httparty'
require 'dotenv/load'
require './db/db'

enable :sessions

require './controllers/characters_controller'
require './controllers/users_controller'
require './controllers/sessions_controller'

require './helpers/sessions_helper'

