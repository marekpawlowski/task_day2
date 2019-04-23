lock "3.9.0"

set :application, "test-mp"
set :repo_url, "git@github.com:marekpawlowski/task_day2.git"
set :deploy_to, -> { "/home/deploy/apps/#{fetch(:application)}" }
