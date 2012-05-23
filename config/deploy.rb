# Make sure bundler is run on deploy
require "bundler/capistrano"

# Set-up rvm for use with capistrano
# set :rvm_ruby_string, 'ree@rails3'                     # Or:
set :rvm_ruby_string, ENV['GEM_HOME'].gsub(/.*\//,"") # Read from local system
require "rvm/capistrano"                               # Load RVM's capistrano plugin.

set :use_sudo, false

set :application, "thebeansgroup"
set :repository,  "git@github.com:thebeansgroup/coblr.git"
set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`
set :deploy_to, "/var/www/apps/#{application}"

role :web, "testbox.beans"                          # Your HTTP server, Apache/etc

# if you want to clean up old releases on each deploy uncomment this:
after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end