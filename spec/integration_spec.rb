require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('rock_paper_scissors', {:type => :feature}) do
  it('processes the user entry and returns a winner') do
    visit('/')
    choose('rock1', checked:'rock')
    choose('scissors2', checked:'scissors')
    click_button('second')
    expect('/rock_paper_scissors').to have_content('player 1')
  end
end
