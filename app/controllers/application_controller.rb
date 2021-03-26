# frozen_string_literal: true

# Martinique Dolce, SWE Flatiron 03012021
# Phase 2: Sinatra CRM Assessment | marti@rdolcegroup.com
# Application Controller: Sinatra Listings Manager App, http://crm.twenty9signals.com:3000

class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, 'ENV_SECRET'
    # set :database_file, '../db/development.sqlite3'
  end

  get '/' do
    erb :welcome
  end
end
