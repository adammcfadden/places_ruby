require 'capybara/rspec'
require './app'
Capybara.app = Sinatra::Application

describe('the places path') do
  it('takes form input and posts to places page', type: 'feature') do
    visit('/')
    fill_in('location', with: 'Cleveland')
    click_button('place_submit')
    expect(page).to have_content("Your place has been submitted")
    click_button('add_another')
    expect(page).to have_content("Cleveland")
  end
end
