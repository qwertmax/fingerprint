# config valid only for Capistrano 3.1
lock '3.1.0'

set :application, 'fp'
set :repo_url, 'git@bitbucket.org:mcks/fp.git'

# Default branch is :master
# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }

# Default deploy_to directory is /var/www/my_app
set :deploy_to, '/var/www/mcks-fingerprint'

# Default value for :scm is :git
# set :scm, :git

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
# set :log_level, :debug

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
set :linked_files, %w{config/database.yml}

# Default value for linked_dirs is []
# set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}
set :linked_dirs, %w{bin log tmp}

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5

set :log_level, :debug

SSHKit.config.command_map[:rake]  = "bundle exec rake"
SSHKit.config.command_map[:rails] = "bundle exec rails"

namespace :deploy do

after :publishing, :restart

  desc 'Start application'
  task :start do
    on roles(:app), in: :sequence, wait: 5 do
      within current_path do
        execute :bundle, "exec passenger start --socket /tmp/fp.socket --daemonize --environment #{fetch(:rails_env)}"
      end
    end
  end

  desc 'Restart application'
  task :restart do
    invoke 'deploy:stop'
    invoke 'deploy:start'
  end

  desc 'Stop application'
  task :stop do
    on roles(:app), in: :sequence, wait: 5 do
      within current_path do
        execute :bundle, "exec passenger stop --pid-file tmp/pids/passenger.pid"
      end
    end
  end

end
