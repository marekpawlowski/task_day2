server 'test-mp.devguru.co', user: 'deploy', roles: %w[app db web]
set :branch, 'master'
set :dockerfile, -> { 'Dockerfile' }
set :capose_commands, -> {
  [
    'build',
    'run --rm web bundle exec rake assets:precompile',
    'up -d',
  ]
}
