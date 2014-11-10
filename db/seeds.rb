# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Populate countries table

Country.create([{name: 'France'}, {name: 'Brazil'}, {name: 'Argentina'}, {name: 'Italy'}, {name: 'Japan'}, {name: 'Slovenia'}])

#Populate items table

Item.create([{name: 'Shoes'}, {name: 'Coat'}, {name: 'T-shirt'}, {name: 'Scarf'}, {name: 'Gloves'}, {name: 'Jeans'}])

#Populate users table

User.create([{name: 'Robert', country: Country.first}])