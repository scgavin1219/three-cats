# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



cat1 = Cat.create!(name: "tortuga", sex: 'm', color: 'tortoise', birth_date: '01/01/2020', description: 'cat found on the beach')
cat2 = Cat.create!(name: "red", sex: 'F', color: 'orange', birth_date: '01/01/2020', description: 'smelly cat')
cat3 = Cat.create!(name: "burger", sex: 'm', color: 'white', birth_date: '01/01/2020', description: 'cat found on the tracks')
cat4 = Cat.create!(name: "nightmare", sex: 'M', color: 'black', birth_date: '01/01/2020', description: 'cat found under house')