
require 'rails_helper'

RSpec.feature "Car management", type: :feature do
  background do
    User.create!(name: "Nuh", city: "Dakar", phone: "782680097", role: "Owner", email: 'nuh@gmail.com', password: 'nuh210')
    User.create!(name: "Hud", city: "Saint Louis", phone: "768975604", role: "Client", email: 'hud@gmail.com', password: 'hud210')
  end
  background do
      @user = User.first
      FactoryBot.create(:car, user_id: @user.id)
      FactoryBot.create(:car, name: 'Car 02', user_id: @user.id)
  end
  scenario "Test car list" do
      visit new_user_session_path
      fill_in 'Email', with: 'hud@gmail.com'
      fill_in 'Password', with: 'hud210'
      click_on 'Log in'
      expect(page).to have_content 'Car 01'
      expect(page).to have_content 'Car 02'
  end
  scenario "Test car creation" do
      visit new_user_session_path
      fill_in 'Email', with: 'nuh@gmail.com'
      fill_in 'Password', with: 'nuh210'
      click_on 'Log in'
      Car.create!(name: "Car 03", age: "14-07-2019", color: "White", size: "Familial", speed: "150", weight: "75", price: "800", city: "Dakar", power: "250", user_id: @user.id)
      click_on 'Logout'
      fill_in 'Email', with: 'hud@gmail.com'
      fill_in 'Password', with: 'hud210'
      click_on 'Log in'
      expect(page).to have_content 'Car 03'

  end

  scenario "Test whether cars are arranged in descending order of creation date" do
      visit new_user_session_path
      fill_in 'Email', with: 'hud@gmail.com'
      fill_in 'Password', with: 'hud210'
      click_on 'Log in'
      expect(page.text.index("Car 02")).to be < page.text.index("Car 01")
  end
  scenario "Test sorting by price" do
      visit new_user_session_path
      fill_in 'Email', with: 'hud@gmail.com'
      fill_in 'Password', with: 'hud210'
      click_on 'Log in'
      click_on 'Sort by price'
      assert Car.all.order('price')
  end
  scenario "Test sorting by age" do
    visit new_user_session_path
    fill_in 'Email', with: 'hud@gmail.com'
    fill_in 'Password', with: 'hud210'
    click_on 'Log in'
    click_on 'Sort by age'
    assert Car.all.order('age DESC')
  end
end
