# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Todo.delete_all

9.times do |i|
	Todo.create(
		name: "Tarea a Realizar#{i}",
		description: Faker::Lorem.paragraph,
		picture: "https://picsum.photos/400/200?image=#{i + 1}"
	)
end