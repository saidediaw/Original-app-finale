require 'rails_helper'

RSpec.describe Comment, type: :model do

  it "Validation does not pass if the comment is empty" do
    User.create!(name: "Nuh", city: "Dakar", phone: "782680097", role: "Owner", email: 'nuh@gmail.com', password: 'nuh210')
    Car.create(name: "Car 01", age: "12-01-2021", color: "Blue", size: "Familial", speed: "150", weight: "35", price: "200", city: "Dakar", power: "400", user_id: '1')
    comment = Comment.new(car_id: '1', comment: '')
    expect(comment).not_to be_valid
  end

  it "Validation passes if comment exists" do
    User.create!(name: "Nuh", city: "Dakar", phone: "782680097", role: "Owner", email: 'nuh@gmail.com', password: 'nuh210')
    Car.create(name: "Car 01", age: "12-01-2021", color: "Blue", size: "Familial", speed: "150", weight: "35", price: "200", city: "Dakar", power: "400", user_id: '1')
    comment = Comment.new(car_id: '1', comment: "Don't miss this good offer")
    expect(comment).to be_valid
  end

end
