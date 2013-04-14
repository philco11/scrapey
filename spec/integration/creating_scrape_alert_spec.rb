require 'spec_helper'

feature 'Creating Alerts' do 
  scenario "can create an alert" do
    visit '/'
    click_link 'New Alert'
    fill_in 'Alert Name', :with => 'Craigslist Search 1'
    fill_in 'URL', :with => "http://sfbay.craigslist.org/search/apa/sfc?zoomToPosting=&query=&srchType=A&minAsk=&maxAsk=1800&bedrooms=&nh=1&nh=3&nh=4&nh=6&nh=7&nh=8&nh=11&nh=12&nh=14&nh=15&nh=10&nh=24&nh=18&nh=19&nh=21&nh=23&nh=26&hasPic=1"
    click_button 'Create Alert'
    page.should have_content('Alert has been created.')
  end 
end