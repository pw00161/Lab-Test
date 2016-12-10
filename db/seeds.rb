# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

welcome = Price.where(title: 'Parking Charges').first
welcome.delete if welcome

Price.delete_all
prices = Price.create([title: 'Charge 1', description: 'Up to 1 Hour', cost: 1.49,])
prices = Price.create([title: 'Charge 2', description: 'Up to 2 Hours', cost: 2.49,])
prices = Price.create([title: 'Charge 3', description: 'Up to 3 Hours', cost: 3.49,])
prices = Price.create([title: 'Charge 4', description: 'Up to 4 Hours', cost: 4.49,])
prices = Price.create([title: 'Charge 5', description: 'Up to 5 Hours', cost: 5.49,])
prices = Price.create([title: 'Charge 6', description: 'Up to 6 Hours', cost: 6.49,])
prices = Price.create([title: 'Charge 7', description: 'Up to 7 Hours', cost: 7.49,])