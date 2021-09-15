require 'rails_helper'

RSpec.feature "Comments management", type: :feature do

    background do
        User.create!(name: "Nuh", city: "Dakar", phone: "782680097", role: "Owner", email: 'nuh@gmail.com', password: 'nuh210')
        User.create!(name: "Hud", city: "Saint Louis", phone: "768975604", role: "Client", email: 'hud@gmail.com', password: 'hud210')
    end
    background do
        @user = User.first
        FactoryBot.create(:car, user_id: @user.id)
        FactoryBot.create(:car, name: 'Car 02', user_id: @user.id)
        @car = Car.last
        Comment.create(car_id: @car.id, comment: "Please feel free to contact me")
        Comment.create(car_id: @car.id, comment: "Best car in the world")
    end
    scenario "Test number of comments" do
        expect(Car.all.count).to eq 2
    end
    scenario "Test comments in car list" do
        visit new_user_session_path
        fill_in 'Email', with: 'nuh@gmail.com'
        fill_in 'Password', with: 'nuh210'
        click_on 'Log in'
        @car = Car.last
        visit car_path(id: @car.id)
        expect(page).to have_content 'Best car in the world'
    end
    scenario "Test comment creation" do
        visit new_user_session_path
        fill_in 'Email', with: 'nuh@gmail.com'
        fill_in 'Password', with: 'nuh210'
        click_on 'Log in'
        Car.create!(name: "Car 03", age: "14-07-2019", color: "White", size: "Familial", speed: "100", weight: "75", price: "800", city: "Dakar", power: "250", user_id: @user.id)
        @car = Car.last
        Comment.create(car_id: @car.id, comment: "Best deal of the year")
        visit car_path(id: @car.id)
        expect(page).to have_content 'Best deal of the year'
    end


end
