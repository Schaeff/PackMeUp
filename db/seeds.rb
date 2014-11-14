# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Populate countries table

Country.create([{name: 'France', flag: 'http://www.crwflags.com/fotw/images/f/fr.gif', weatherLink: 'http://api.openweathermap.org/data/2.5/forecast?q=paris'}, {name: 'Brazil', flag: 'http://www.crwflags.com/fotw/images/b/br.gif', weatherLink: 'http://api.openweathermap.org/data/2.5/forecast?q=rio_de_janeiro'}, {name: 'Argentina', flag: 'http://www.crwflags.com/fotw/images/a/ar.gif', weatherLink: 'http://api.openweathermap.org/data/2.5/forecast?q=buenos_aires'}, {name: 'Italy', flag: 'http://www.crwflags.com/fotw/images/i/it.gif', weatherLink: 'http://api.openweathermap.org/data/2.5/forecast?q=rome'}, {name: 'Japan', flag: 'http://www.crwflags.com/fotw/images/j/jp.gif', weatherLink: 'http://api.openweathermap.org/data/2.5/forecast?q=tokyo'}, {name: 'Slovenia', flag: 'http://www.crwflags.com/fotw/images/s/si.gif', weatherLink: 'http://api.openweathermap.org/data/2.5/forecast?q=ljubljana'}])

#Populate item_types table

ItemType.create({name: 'root', parent: nil})

#Populate items table

Item.create([{name: 'Shoes'}, {name: 'Coat'}, {name: 'T-shirt'}, {name: 'Scarf'}, {name: 'Gloves'}, {name: 'Jeans'}])
Item.all.each do |item|
	ItemType.first.item.append(item)
	#item.item_type_id = ItemType.first.id
end

#Populate users table

User.create([{name: 'Robert', country: Country.first}])