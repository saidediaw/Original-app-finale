# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create(name: "Betty", , role: 'Client', email: "betty@gmail.com", password: "betty210", password_confirmation: "betty210")
# User.create(name: "Anta", role: 'Client', email: "anta@gmail.com", password: "anta210", password_confirmation: "anta210")
# User.create(name: "Adja", , role: 'Client', email: "adja@gmail.com", password: "adja210", password_confirmation: "adja210")
#
# User.create(name: "Oumar", role: 'Owner', email: "oumar@gmail.com", password: "oumar210", password_confirmation: "oumar210")
# User.create(name: "Bass", city: "Dakar", phone: '707654321', role: 'Owner', email: "bass@gmail.com", password: "bass210", password_confirmation: "bass210")
# User.create(name: "Caat", city: "Dakar", phone: '785678901', role: 'Owner', email: "caat@gmail.com", password: "caat210", password_confirmation: "caat210")
# User.create(name: "Aziz", city: "Mbour", phone: '780123456', role: 'Owner', email: "aziz@gmail.com", password: "aziz210", password_confirmation: "aziz210")
# User.create(name: "Mahmoud", city: "Thies", phone: '706547890', role: 'Owner', email: "mahmoud@gmail.com", password: "mahmoud210", password_confirmation: "mahmoud210")
# User.create(name: "Saqr", city: "Saint Louis", phone: '774561234', role: 'Owner', email: "saqr@gmail.com", password: "saqr210", password_confirmation: "saqr210")
# User.create(name: "Talha", city: "Dakar", phone: '709871234', role: 'Owner', email: "talha@gmail.com", password: "talha210", password_confirmation: "talha210")
# User.create(name: "Zubayr", city: "Saint Louis", phone: '770345678', role: 'Owner', email: "zubayr@gmail.com", password: "zubayr210", password_confirmation: "zubayr210")
user = User.find_or_initialize_by(email: 'admin@gmail.com')
user.name = 'Admin'
user.password = 'admin@12345'
user.admin = 'true'
user.save!
20.times do |t|
    User.create! :email => "itsme#{t}@gmail.com", :password => "mysecret#{t}", :password_confirmation => "mysecret#{t}"
end
