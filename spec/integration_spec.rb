require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('rock_paper_scissors', {:type => :feature}) do
  it('processes the user entry and returns a winner') do
    visit('/')
    choose('rock')
    choose('scissors')
    click_button('Send')
    expect(page).to have_content('true')
  end
end
