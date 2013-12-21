#require 'bundler/capistrano'
require 'capistrano/ext/multistage'

set :application, "mo_photos"
set :repository, "git@github.com:atistler/grokphoto.git"

set :default_stage, "production"
set :stages, %w(production)

set :user, "root"
set :deploy_to, "/srv/app"

set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

set :use_sudo,    false

# if you want to clean up old releases on each deploy uncomment this:
after "deploy:restart", "deploy:cleanup"

# Generate an additional task to fire up the thin clusters
namespace :deploy do
  desc "Start the Thin processes"
  task :start do
    run  <<-CMD
      cd /srv/app/current; bundle exec thin start -C config/thin.yml
    CMD
  end

  desc "Stop the Thin processes"
  task :stop do
    run <<-CMD
      cd /srv/app/current; bundle exec thin stop -C config/thin.yml
    CMD
  end

  desc "Restart the Thin processes"
  task :restart do
    run <<-CMD
      cd /srv/app/current; bundle exec thin restart -C config/thin.yml
    CMD
  end

end
