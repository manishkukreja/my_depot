# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



Product.delete_all

(1..10).each do |x|
	product =Product.create(title: "product_#{x}",description: " this is wonder product #{x}", quantity: 10, category: 1,active: true )
end	