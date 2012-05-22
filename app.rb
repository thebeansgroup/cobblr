# encoding: utf-8
require "app"
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra_boilerplate'

set :js_assets, %w[zepto.js underscore.js app.coffee]

configure :development do
  set :logging, false
end

get "/" do
  haml :index
end

post '/display-email' do
  tbg()
  haml :email
end

def tbg
  @companyLogo = "http://tbg-assets.s3.amazonaws.com/thebeansgroup/email_footer/ef-TBG-logo.jpg"
  @companyURL = "http://thebeansgroup.com"
  @companyColor = "#00993b"
  @companyName = "The Beans Group"
  @companyPhone = "0870 3831 599"
  @companyWeb = "www.thebeansgroup.com"
  @companyTwitter = "@thebeansgroup"
  @companyTwitterURL = "http://twitter.com/thebeansgroup"
  @companyLinkedin = "http://www.linkedin.com/company/the-beans-group"
end