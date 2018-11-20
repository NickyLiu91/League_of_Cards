# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

atem = Player.create(name: "Atem")
kaiba = Player.create(name: "Kaiba")

zedCard = Card.create(name: "Zed", title: "The Master of Shadows", type: "Assassin", difficulty: 10, attack: 8, magic: 3, defense: 2, description: "Badass as hell.")
oriannaCard = Card.create(name: "Oriann", title: "The Lady of Clockwork", type: "Mage", difficulty: 9, attack: 2, magic: 7, defense: 5, description: "Robot girl.")
