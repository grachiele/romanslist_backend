# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
Post.delete_all
Category.delete_all
Location.delete_all


##############
# User Seeds #
##############

User.create(first_name: "Gianpaul", last_name: "Rachiele", email: "gianpaul@gmail.com", password:"deeznuts")
User.create(first_name: "Roman", last_name: "Mullady", email: "ogroman@gmail.com", password:"deeznuts1")
User.create(first_name: "Yamini", last_name: "Potter", email: "potterlov3r@gmail.com", password:"iluvharrypott3r")


##################
# Category Seeds #
##################

Category.create(name:"Cell phones")
Category.create(name:"Books")
Category.create(name:"Cars")
Category.create(name:"Exotic Animals")

##################
# Location Seeds #
##################

Location.create(city:"Bayside", zipcode:11361, state:"NY")
Location.create(city:"Bronx", zipcode:10465, state:"NY")
Location.create(city:"Manhattan", zipcode:10021, state:"NY")

##############
# Post Seeds #
##############

Post.create(user_id: 1, category_id: 4, location_id: 2, title:"Snake for sale ;)", description: "I'll rail you out daddy.")
Post.create(user_id: 2, category_id: 3, location_id: 1, title:"Rim Jobs", description: "I'll clean your rims...all of them.")
Post.create(user_id: 3, category_id: 3, location_id: 3, title:"Harry Potter", description: "I have the whole series")
