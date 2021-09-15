require 'rails_helper'

RSpec.describe Car, type: :model do

  user = User.create(name: "Betty", city: "Dakar", phone: '773456789', role: 'Client', email: "betty@gmail.com", password: "betty210", password_confirmation: "betty210")

  it "Validation does not pass if the user does not exist" do
    car = Car.new(name: "Car 01", age: "12-01-2021", color: "Blue", size: "Familial", speed: "150", weight: "35", price: "200", city: "Dakar", power: "400")
    expect(car).not_to be_valid
  end

  it "Validation passes if user exists" do
    @user = User.last
    car = Car.new(name: "Car 01", age: "12-01-2021", color: "Blue", size: "Familial", speed: "150", weight: "35", price: "200", city: "Dakar", power: "400", user_id: @user.id)
    expect(car).to be_valid
  end
  it "Validation passes for search logic with price" do
    @user = User.last
    Car.create(name: "Car 01", age: "12-01-2021", color: "Blue", size: "Familial", speed: "150", weight: "35", price: "200", city: "Dakar", power: "400", user_id: @user.id)
    expect(User.ransack(city: '200').result.count).to eq 1
  end
  it "Validation passes for search logic with size and color" do
    @user = User.last
    Car.create(name: "Car 01", age: "12-01-2021", color: "Blue", size: "Familial", speed: "150", weight: "35", price: "200", city: "Dakar", power: "400", user_id: @user.id)
    expect(Car.ransack({color: 'Blue'},{size: 'Familial'}).result.count).to eq 1
  end
end
