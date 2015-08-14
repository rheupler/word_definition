require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the definition path', {:type => :feature}) do
  it('goes to the add-word page and lets user add word') do
    visit('/')
    click_link('Add New Words')
    fill_in('word_name', :with => 'anything')
    click_button("Add word")
    expect(page).to have_content("Added")
  end
end
