set :stage,           :production
set :rails_env,       :production
set :branch,          :main

set :application,     'car-delivery'
set :deploy_to,       "/home/#{fetch(:user)}/#{fetch(:application)}"
set :puma_bind,       "unix://#{shared_path}/sockets/puma.sock"

server '54.151.224.245', user: fetch(:user), roles: [:web, :app, :db], primary: true

