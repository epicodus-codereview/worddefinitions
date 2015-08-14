require 'capybara/rspec'
require './app'
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe 'word path', { type: :feature} do
  it "has links to add new word" do
    visit '/'
    expect(page).to have_content "Looking up a Word? Add a New Word"
  end
  
  it "adds new word" do
    visit '/'
    click_link 'Add a New Word'
    expect(page).to have_content "Add a New Word"
    fill_in 'word', with: 'dog'
    click_button 'Submit'
    expect(page).to have_content "dog"
  end
  
  it 'adds a definition' do
    visit '/'
    click_link 'dog'
    expect(page).to have_content "Add a New Definition"
    fill_in 'definition', with: 'loyal creature'
    click_button 'Submit'
    expect(page).to have_content "loyal creature"
  end
  
  

end

# # describe 'individual dealership', { type: :feature } do
#   it 'can add an indiviual dealership' do
#     visit '/'
#     click_link 'Add New Dealership'
#     fill_in 'dealership', with: 'hi'
#     click_button 'Submit'
#     expect(page).to have_content 'hi'
#     click_link 'hi'
#     expect(page).to have_content 'Add a new vehicle'
#     click_link 'Add a new vehicle'
#     fill_in 'make', with: "Toyota"
#     fill_in 'model', with: "Prius"
#     fill_in 'year', with: "2000"
#     click_button 'Add Vehicle'
#     expect(page).to have_content "Toyota Prius 2000"
#     click_link "Toyota Prius 2000"
#     expect(page).to have_content "Car"
# 
#   end