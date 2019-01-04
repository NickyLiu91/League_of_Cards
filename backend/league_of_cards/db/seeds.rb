require "httparty"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

azir = Player.create(name: "Azir", image: "image/AzirPortrait.png", computer: true)
zed = Player.create(name: "Zed", image: "image/ZedPortrait.png", computer: true)
# swain = Player.create(name: "Swain", image: "image/SwainPortrait.png", computer: true)
# masterYi = Player.create(name: "MasterYi", image: "image/MasterYiPortrait.png", computer: true)
# garen = Player.create(name: "Garen", image: "image/GarenPortrait.png", computer: true)
# darius = Player.create(name: "Darius", image: "image/DariusPortrait.png", computer: true)
# leBlanc = Player.create(name: "LeBlanc", image: "image/LeblancPortrait.png", computer: true)
# caitlyn = Player.create(name: "Caitlyn", image: "image/CaitlynPortrait.png", computer: true)
# heimerdinger = Player.create(name: "Heimerdinger", image: "image/HeimerdingerPortrait.png", computer: true)
# malzahar = Player.create(name: "Malzahar", image: "image/MalzaharPortrait.png", computer: true)
#
# zed_card = Card.create(player_id: azir.id, name: "Zed", title: "The Master of Shadows", role: "Assassin", rarity: 10, attack: 8, magic: 3, defense: 2, description: "Badass as hell.", image: "Zed.png")
# orianna_card = Card.create(player_id: azir.id, name: "Orianna", title: "The Lady of Clockwork", role: "Mage", rarity: 9, attack: 2, magic: 7, defense: 5, description: "Robot girl.", image: "Orianna.png")
# veigar_card = Card.create(player_id: zed.id, name: "Veigar", title: "The Tiny Master of Evil", role: "Mage", rarity: 8, attack: 2, magic: 10, defense: 1, description: "Evil midget", image: "veigar.png")
# nasus_card = Card.create(name: "Nasus", title: "The Keeper of the Sands", role: "Tank", rarity: 2, attack: 6, magic: 5, defense: 8, description: "Such Doge. Much Wow.", image: "Nasus.png")
# renekton_card = Card.create(name: "Renekton", title: "The Butcher of the Sands", role: "Fighter", rarity: 4, attack: 6, magic: 4, defense: 5, description: "Gucci Gator.", image: "Renekton.png")
# fizz_card = Card.create(name: "Fizz", title: "The Tidal Trickster", role: "Assassin", rarity: 8, attack: 4, magic: 7, defense: 3, description: "Fizzual Pun.", image: "Fizz.png")
# anivia_card = Card.create(name: "Anivia", title: "The Cryophoenix", role: "Mage", rarity: 10, attack: 1, magic: 10, defense: 6, description: "Bird is the word.", image: "Anivia.png")
# yasuo_card = Card.create(name: "Yasuo", title: "The Wanderer", role: "Assassin", rarity: 10, attack: 10, magic: 8, defense: 8, description: "Weeb swordsman.", image: "Yasuo.png")
#
# atem_collection = Collection.create(player_id: atem.id, card_id: zed_card.id)
# atem_collection2 = Collection.create(player_id: atem.id, card_id: orianna_card.id)
# atem_collection3 = Collection.create(player_id: atem.id, card_id: veigar_card.id)
# atem_collection4 = Collection.create(player_id: atem.id, card_id: nasus_card.id)
# atem_collection5 = Collection.create(player_id: atem.id, card_id: renekton_card.id)
# atem_collection6 = Collection.create(player_id: atem.id, card_id: fizz_card.id)
# atem_collection7 = Collection.create(player_id: atem.id, card_id: anivia_card.id)
# atem_collection8 = Collection.create(player_id: atem.id, card_id: yasuo_card.id)
#
# kaiba_collection = Collection.create(player_id: kaiba.id, card_id: zed_card.id)
# kaiba_collection2 = Collection.create(player_id: kaiba.id, card_id: orianna_card.id)
# kaiba_collection3 = Collection.create(player_id: kaiba.id, card_id: veigar_card.id)
# kaiba_collection4 = Collection.create(player_id: kaiba.id, card_id: nasus_card.id)
# kaiba_collection5 = Collection.create(player_id: kaiba.id, card_id: renekton_card.id)
# kaiba_collection6 = Collection.create(player_id: kaiba.id, card_id: fizz_card.id)
# kaiba_collection7 = Collection.create(player_id: kaiba.id, card_id: anivia_card.id)
# kaiba_collection8 = Collection.create(player_id: kaiba.id, card_id: yasuo_card.id)
#
# #
azir_deck = Deck.create(name: "Azir Deck 1", player_id: azir.id)
zed_deck = Deck.create(name: "Zed Deck 1", player_id: zed.id)
# swain_deck = Deck.create(name: "Swain Deck 1", player_id: swain.id)
# masterYi_deck = Deck.create(name: "MasterYi Deck 1", player_id: masterYi.id)
# garen_deck = Deck.create(name: "Garen Deck 1", player_id: garen.id)
# darius_deck = Deck.create(name: "Darius Deck 1", player_id: darius.id)
# leBlanc_deck = Deck.create(name: "LeBlanc Deck 1", player_id: leBlanc.id)
# caitlyn_deck = Deck.create(name: "Caitlyn Deck 1", player_id: caitlyn.id)
# heimerdinger_deck = Deck.create(name: "Heimerdinger Deck 1", player_id: heimerdinger.id)
# malzahar_deck = Deck.create(name: "Malzahar Deck 1", player_id: malzahar.id)

# azir_deckcard = Deckcard.create(deck_id: azir_deck.id, card_id: zed_card.id)
# azir_deckcard = Deckcard.create(deck_id: zedr_deck.id, card_id: veigar_card.id)
#
# atem_deckcard1 = Deckcard.create(deck_id: atem_deck.id, card_id: zed_card.id)
# atem_deckcard2 = Deckcard.create(deck_id: atem_deck.id, card_id: orianna_card.id)
# atem_deckcard3 = Deckcard.create(deck_id: atem_deck.id, card_id: veigar_card.id)
# atem_deckcard4 = Deckcard.create(deck_id: atem_deck.id, card_id: nasus_card.id)
# atem_deckcard5 = Deckcard.create(deck_id: atem_deck.id, card_id: renekton_card.id)
# atem_deckcard6 = Deckcard.create(deck_id: atem_deck.id, card_id: fizz_card.id)
# atem_deckcard7 = Deckcard.create(deck_id: atem_deck.id, card_id: anivia_card.id)
# atem_deckcard8 = Deckcard.create(deck_id: atem_deck.id, card_id: yasuo_card.id)
#
# kaiba_deckcard1 = Deckcard.create(deck_id: kaiba_deck.id, card_id: yasuo_card.id)
# kaiba_deckcard2 = Deckcard.create(deck_id: kaiba_deck.id, card_id: anivia_card.id)
# kaiba_deckcard3 = Deckcard.create(deck_id: kaiba_deck.id, card_id: fizz_card.id)
# kaiba_deckcard4 = Deckcard.create(deck_id: kaiba_deck.id, card_id: renekton_card.id)
# kaiba_deckcard5 = Deckcard.create(deck_id: kaiba_deck.id, card_id: nasus_card.id)
# kaiba_deckcard6 = Deckcard.create(deck_id: kaiba_deck.id, card_id: veigar_card.id)
# kaiba_deckcard7 = Deckcard.create(deck_id: kaiba_deck.id, card_id: orianna_card.id)
# kaiba_deckcard8 = Deckcard.create(deck_id: kaiba_deck.id, card_id: zed_card.id)

# def generate_cards
#   cardinfo = HTTParty.get('http://ddragon.leagueoflegends.com/cdn/6.24.1/data/en_US/champion.json')
#   puts cardinfo["data"]["Aatrox"]
# end
#
# generate_cards
