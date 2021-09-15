This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "Betty", city: "Mbour", phone: '773456789', role: 'Client', email: "betty@gmail.com", password: "betty210", password_confirmation: "betty210")
User.create(name: "Anta", city: "Dakar", phone: '771234567', role: 'Client', email: "anta@gmail.com", password: "anta210", password_confirmation: "anta210")
User.create(name: "Adja", city: "Thies", phone: '779876543', role: 'Client', email: "adja@gmail.com", password: "adja210", password_confirmation: "adja210")

User.create(name: "Oumar", city: "Dakar", phone: '762347890', role: 'Owner', email: "oumar@gmail.com", password: "oumar210", password_confirmation: "oumar210")
User.create(name: "Bass", city: "Dakar", phone: '707654321', role: 'Owner', email: "bass@gmail.com", password: "bass210", password_confirmation: "bass210")
User.create(name: "Caat", city: "Dakar", phone: '785678901', role: 'Owner', email: "caat@gmail.com", password: "caat210", password_confirmation: "caat210")
User.create(name: "Aziz", city: "Mbour", phone: '780123456', role: 'Owner', email: "aziz@gmail.com", password: "aziz210", password_confirmation: "aziz210")
User.create(name: "Mahmoud", city: "Thies", phone: '706547890', role: 'Owner', email: "mahmoud@gmail.com", password: "mahmoud210", password_confirmation: "mahmoud210")
User.create(name: "Saqr", city: "Saint Louis", phone: '774561234', role: 'Owner', email: "saqr@gmail.com", password: "saqr210", password_confirmation: "saqr210")
User.create(name: "Talha", city: "Dakar", phone: '709871234', role: 'Shepherd', email: "talha@gmail.com", password: "talha210", password_confirmation: "talha210")
User.create(name: "Zubayr", city: "Saint Louis", phone: '770345678', role: 'Owner', email: "zubayr@gmail.com", password: "zubayr210", password_confirmation: "zubayr210")


Car.create(name: "Car 01", age: "12-01-2021", color: "Blue", size: "Familial", speed: "150", weight: "35", price: "200", city: "Dakar", power: "400", user_id: "4")
Car.create(name: "Car 02", age: "02-03-2018", color: "Brown", size: "Sports Car", speed: "250", weight: "50", price: "1000", city: "Thies", power: "300", user_id: "8")
Car.create(name: "Car 03", age: "14-07-2019", color: "White", size: "Familial", speed: "100", weight: "75", price: "800", city: "Dakar", power: "250", user_id: "5")
Car.create(name: "Car 04", age: "18-11-2016", color: "Black", size: "Familial", speed: "250", weight: "100", price: "2000", city: "Saint Louis", power: "300", user_id: "11")
Car.create(name: "Car 05", age: "07-01-2017", color: "Green", size: "Familial", speed: "100", weight: "70", price: "800", city: "Dakar", power: "500", user_id: "6")
Car.create(name: "Car 06", age: "05-05-2015", color: "Yellow", size: "Familial", speed: "300", weight: "40", price: "600", city: "Thies", power: "400", user_id: "8")
Car.create(name: "Car 07", age: "03-01-2020", color: "Red", size: "Sports Car", speed: "175", weight: "50", price: "300", city: "Mbour", power: "600", user_id: "7")
Car.create(name: "Car 08", age: "22-08-2019", color: "Blue", size: "Familial", speed: "100", weight: "85", price: "1300", city: "Saint Louis", power: "350", user_id: "9")
Car.create(name: "Car 09", age: "29-01-2020", color: "Black&White", size: "Sports", speed: "200", weight: "60", price: "500", city: "Mbour", power: "750", user_id: "7")
Car.create(name: "Car 10", age: "11-03-2019", color: "Brown&White", size: "Familial", speed: "100", weight: "57", price: "400", city: "Dakar", power: "700", user_id: "4")
Car.create(name: "Car 11", age: "05-10-2018", color: "Other", size: "Familial", speed: "250", weight: "110", price: "1600", city: "Thies", power: "500", user_id: "8")
Car.create(name: "Car 12", age: "16-02-2020", color: "White", size: "Sports Car", speed: "200", weight: "67", price: "1300", city: "Saint Louis", power: "400", user_id: "11")
Car.create(name: "car 13", age: "22-04-2019", color: "Black&White", size: "Familial", speed: "300", weight: "90", price: "1500", city: "Dakar", power: "300", user_id: "10")
Car.create(name: "Car 14", age: "09-09-2019", color: "White", size: "Familial, speed: "180", weight: "70", price: "1000", city: "Mbour", power: "400", user_id: "7")
Car.create(name: "Car 15", age: "11-12-2018", color: "Brown&White", size: "Sports Car", speed: "350", weight: "80", price: "600", city: "Dakar", power: "500", user_id: "10")

Comment.create(car_id: "1", comment: "Please feel free to contact me")
Comment.create(car_id: "4", comment: "Best car in the word")
Comment.create(car_id: "5", comment: "Price negotiable")
Comment.create(car_id: "10", comment: "Picture available upon request")
