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

get "/tbg" do
  haml :tbg_form
end

post '/display-tbg_email' do
  tbg
  haml :tbg_email
end

get "/vxb" do
  haml :vxb_form
end

post '/display-vxb_email' do
  vxb
  haml :vxb_email
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

def vxb
  @companyLogo = "http://tbg-assets.s3.amazonaws.com/voxburner/email_footer/ef-VXB-logo.png"
  @companyURL = "http://voxburner.com"
  @companyColor = "#25C7EE"
  @companyName = "Voxburner"
  @companyPhone = "0870 3831 599"
  @companyWeb = "www.voxburner.com"
  @companyTwitter = "@voxburner"
  @companyTwitterURL = "http://twitter.com/voxburner"
  @companyLinkedin = "http://www.linkedin.com/company/voxburner"
end
