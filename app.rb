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
  offices
  haml :tbg_email
end

get "/vxb" do
  haml :vxb_form
end

post '/display-vxb_email' do
  vxb
  offices
  haml :vxb_email
end

get "/sbn" do
  haml :sbn_form
end

post '/display-sbn_email' do
  sbn
  offices
  haml :sbn_email
end

get "/hexjam" do
  haml :hexjam_form
end

post '/display-hexjam_email' do
  hexjam
  offices
  haml :hexjam_email
end


def tbg
  @companyLogo = "http://tbg-assets.s3.amazonaws.com/thebeansgroup/email_footer/ef-TBG-logo.jpg"
  @companyURL = "http://www.thebeansgroup.com"
  @companyColor = "#00993b"
  @companyName = "The Beans Group"
  @companyPhone = "0203 095 1400"
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
  @companyPhone = "0203 422 7000"
  @companyWeb = "www.voxburner.com"
  @companyTwitter = "@voxburner"
  @companyTwitterURL = "http://twitter.com/voxburner"
  @companyLinkedin = "http://www.linkedin.com/company/voxburner"
end

def sbn
  @companyLogo = "http://tbg-assets.s3.amazonaws.com/studentbeansnetwork/email_footer/SBN_logo.png"
  @companyURL = "http://voxburner.com"
  @companyColor = "#1D1D1B"
  @companyName = "Student Beans Network"
  @companyPhone = "0203 095 1400"
  @companyWeb = "www.voxburner.com"
  @companyTwitter = "@voxburner"
  @companyTwitterURL = "http://twitter.com/voxburner"
  @companyLinkedin = "http://www.linkedin.com/company/voxburner"
end

def hexjam
  @companyLogo = "http://tbg-assets.s3.amazonaws.com/hexjam/email_footer/hexjam_logo.png"
  @companyURL = "http://hexjam.com"
  @companyColor = "#1D1D1B"
  @companyName = "Hexjam"
  @companyStrap = "Everything else can wait"
  @companyPhone = "0203 095 1400"
  @companyWeb = "www.hexjam.com"
  @companyTwitter = "@hexjam"
  @companyTwitterURL = "http://twitter.com/hexjam"
  @companyFacebook = "http://www.facebook.com/hexjam"
end


def offices
  @office     = "Office address: Unit 420 Highgate Studios, 53-79 Highgate Road, London, NW5 1TL"
  @registered = "Registered Office: 1 Vincent Square, London SW1P 2PN. Registered as a company in England and Wales, number: 5486885."
  @vat        = "VAT Registration Number: 873 0262 33"
end
