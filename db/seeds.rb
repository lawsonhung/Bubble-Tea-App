# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

BubbleTea.create(tea_type: "Black", boba: true, sugar_level: 0)
BubbleTea.create(tea_type: "Green", boba: false, sugar_level: 0.3)
BubbleTea.create(tea_type: "Oolong", boba: true, sugar_level: 0.5)
BubbleTea.create(tea_type: "Black", boba: false, sugar_level: 0.7)
BubbleTea.create(tea_type: "Green", boba: true, sugar_level: 1)

Customer.create(name: "Alice", quote: "I love bubble tea!")
Customer.create(name: "Bob", quote: "I hate bubble tea")
Customer.create(name: "Eve", quote: "I shouldn't have eaten the apple")
Customer.create(name: "Adam", quote: "Why did I listen to the snake")
Customer.create(name: "Fox", quote: "What does the fox say")
