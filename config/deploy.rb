# -*- encoding : utf-8 -*-
require 'capistrano/ext/multistage'

set :application, "balloons"
set :scm, :git
set :scm_verbose, true

set :repository,  "git@github.com:secretariat/sdtg.git"
set :deploy_to, "/home/user/www/sites/sdtg"
set :branch, 'master'

set :deploy_via, :copy
set :use_sudo, false
set :keep_releases, 5

role :web, "185.16.40.109"                          # Your HTTP server, Apache/etc
role :app, "185.16.40.109"                          # This may be the same as your `Web` server
role :db,  "185.16.40.109", :primary => true # This is where Rails migrations will run
role :db,  "185.16.40.109"

set :user, "user"
default_run_options[:pty] = true
ssh_options[:forward_agent] = true
ssh_options[:auth_methods] = ["publickey"]
ssh_options[:port] = 2200
ssh_options[:keys] = ["#{ENV['HOME']}/install/ruby/amazon/vps.pem"]

set :stages, ["staging", "production"]
set :default_stage, "production"

after "deploy:update_code","deploy:bundle"
after "deploy:bundle", "deploy:assets"
after "deploy:assets", "deploy:migrations"
after "deploy:migrations", "deploy:restart"
after "deploy:create_symlink", "deploy:cleanup"
