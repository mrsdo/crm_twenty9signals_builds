# frozen_string_literal: true

ENV['SINATRA_ENV'] ||= 'development'
require 'bundler/setup'
require 'mysql2'
require 'dotenv'
require 'sinatra'
Dotenv.load

Bundler.require(:default, ENV['SINATRA_ENV'])
require_all './app'

# adds SQL query print outs to our terminal
# as we navigate our application in the browser
ActiveRecord::Base.logger = Logger.new($stdout)
