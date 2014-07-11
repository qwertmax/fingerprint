set :stage,     :production
set :rails_env, "production"
set :branch,    "master"

set :ssh_options, { forward_agent: true }

server "fp.donaukurier.de", user: "deploy", roles: %w{web app db}