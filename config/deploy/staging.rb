set :stage,     :staging
set :rails_env, "staging"
set :branch,    "master"

set :ssh_options, {
  forward_agent: true,
  port: 23
}

server "fp.mcks.de", user: "web1", roles: %w{web app db}