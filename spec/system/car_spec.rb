require 'rails_helper'
RSpec.feature "Car management function", type: :feature do
  background do
    User.create!( email: 'diaw@gmail.Com',  password: '123456', password_confirmation:'123456')
    visit new_user_session_path
    fill_in 'Email', with: 'Toyota@gmail.com'
    fill_in 'Password', with: '123456'
    click_on 'Log in'
    Car.create(name:'Toyota', age:'6', color:'pink', weight:7500, price:5000)
  end
  scenario "Test description list" do
    visit cars_path
  end
  scenario "Test car creation" do
    Car.create(name:'Toyota', age:'6', color:'pink', weight: '2300', price:'3000')
  end
  scenario "Test car details" do
    Car.first
  end
  scenario "Test car updating" do

    car=Car.create(name:'Toyota', age:'6', color:'pink', weight: '2300', price:'3000')
    car.name='Toyota2'
    car.save
   # save_and_open_page
  end
  scenario 'Test car Deletion' do
    car2=Car.create(name:'Toyota', age:'6', color:'pink', weight: '2300', price:'3000')
    car2.delete
    visit cars_path
  end
  scenario 'Test car validation' do
    Car.create(name:'Toyota', age:'6', color:'pink', weight: '2300', price:'3000')
    visit cars_path
  end
end
