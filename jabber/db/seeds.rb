# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Assignment.destroy_all



user1 = User.create :name => "User1", :profile_pic => "yoga.png", :email => "user1@example.com", :password => "user12345678"
user2 = User.create email: "test@test.com", name: "samyuta", password: "test675859595"
