require('sinatra')
require('sinatra/reloader')
require('./lib/rock_paper_scissors')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/rock_paper_scissors') do
  @rock_paper_scissors = params.fetch('throw').beats?(params.fetch('toss'))
  erb(:rock_paper_scissors)
end
