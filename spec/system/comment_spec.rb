require 'rails_helper'
RSpec.feature "Comment management function", type: :feature do
  background do
    User.create!( email: 'saide@gmail.Com',  password: '123456', password_confirmation:'123456')
    visit new_user_session_path
    fill_in 'Email', with: 'saide@gmail.com'
    fill_in 'Password', with: '123456'
    click_on 'Log in'
    Comment.create(comment:"hello world" )
  end
  scenario "Test description list" do
    visit cars_path
  end
  scenario "Test Comment creation" do
    Comment.create(comment:"hello world" )
  end
  
  scenario 'Test Comment Deletion' do
    car2=Comment.create(comment:"hello world" )
    car2.delete
    visit cars_path
  end
  scenario 'Test Comment validation' do
    Comment.create(comment:"hello world" )
    visit cars_path
  end
end
