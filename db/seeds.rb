# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.delete_all
# ...
Product.create(title: 'Pivoines',
	description:
		%{<p>
			aaa
		</p>},
	image_url: 'cs.jpg',
	price: 20.20)
# ...
Product.create(title: 'Pivoines2',
	description:
		%{<p>
			bbb
		</p>},
	image_url: 'cs.jpg',
	price: 30.20)
# ...
Product.create(title: 'Pivoines3',
	description:
		%{<p>
			ccc
		</p>},
	image_url: 'cs.jpg',
	price: 40.20)
# ...
