require 'rails_helper'

RSpec.describe User, type: :model do

  it "Validation passes if all attributes are given" do
    user = User.new(name: "Fatimah", city: "Dakar", phone: '773456789', email: "fatimah@gmail.com", password: "fatimah210", password_confirmation: "fatimah210")
    expect(user).to be_valid
  end

  it "Validation does not pass if name is empty" do
    user = User.new(name: "", city: "Dakar", phone: '773456789', email: "betty@gmail.com", password: "", password_confirmation: "")
    expect(user).not_to be_valid
  end

  it "Validation does not pass if city is empty" do
    user = User.new(name: "Adja", city: "", phone: '773456789', email: "betty@gmail.com", password: "", password_confirmation: "")
    expect(user).not_to be_valid
  end

  it "Validation does not pass if phone is empty" do
    user = User.new(name: "Adja", city: "Dakar", phone: '', email: "betty@gmail.com", password: "", password_confirmation: "")
    expect(user).not_to be_valid
  end

  it "Validation does not pass if email is empty" do
    user = User.new(name: "Adja", city: "Dakar", phone: '773456789', email: "", password: "", password_confirmation: "")
    expect(user).not_to be_valid
  end

  it "Validation does not pass if password is empty" do
    user = User.new(name: "Adja", city: "Dakar", phone: '773456789', email: "betty@gmail.com", password: "", password_confirmation: "")
    expect(user).not_to be_valid
  end
end
