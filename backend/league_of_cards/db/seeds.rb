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

# zed_card = Allcard.create(name: "Zed", title: "The Master of Shadows", role: "Assassin", rarity: 10, attack: 8, magic: 3, defense: 2, description: "Badass as hell.", image: "Zed.png")
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

azir_card1 = aatrox_card = Card.create(player_id: azir.id, name: "Aatrox", title: "the Darkin Blade", role: "Fighter", rarity: "Bronze", attack: 8, magic: 3, defense: 4,
description: "Aatrox is a legendary warrior, one of only five that remain of an ancient race known as the Darkin. He wields his massive blade with grace and poise, slicing through legions in a style that is hypnotic to behold. With each foe felled, Aatrox's ...", image: "Aatrox.png")
azir_card2 = aatrox_card = Card.create(player_id: azir.id, name: "Aatrox", title: "the Darkin Blade", role: "Fighter", rarity: "Bronze", attack: 8, magic: 3, defense: 4,
description: "Aatrox is a legendary warrior, one of only five that remain of an ancient race known as the Darkin. He wields his massive blade with grace and poise, slicing through legions in a style that is hypnotic to behold. With each foe felled, Aatrox's ...", image: "Aatrox.png")
azir_card3 = aatrox_card = Card.create(player_id: azir.id, name: "Aatrox", title: "the Darkin Blade", role: "Fighter", rarity: "Bronze", attack: 8, magic: 3, defense: 4,
description: "Aatrox is a legendary warrior, one of only five that remain of an ancient race known as the Darkin. He wields his massive blade with grace and poise, slicing through legions in a style that is hypnotic to behold. With each foe felled, Aatrox's ...", image: "Aatrox.png")
azir_card4 = ahri_card = Card.create(player_id: azir.id, name: "Ahri", title: "the Nine-Tailed Fox", role: "Mage", rarity: "Bronze", attack: 3, magic: 8, defense: 4,
description: "Unlike other foxes that roamed the woods of southern Ionia, Ahri had always felt a strange connection to the magical world around her; a connection that was somehow incomplete. Deep inside, she felt the skin she had been born into was an ill fit for ...", image: "Ahri.png")
azir_card5 = ahri_card = Card.create(player_id: azir.id, name: "Ahri", title: "the Nine-Tailed Fox", role: "Mage", rarity: "Bronze", attack: 3, magic: 8, defense: 4,
description: "Unlike other foxes that roamed the woods of southern Ionia, Ahri had always felt a strange connection to the magical world around her; a connection that was somehow incomplete. Deep inside, she felt the skin she had been born into was an ill fit for ...", image: "Ahri.png")
azir_card6 = ahri_card = Card.create(player_id: azir.id, name: "Ahri", title: "the Nine-Tailed Fox", role: "Mage", rarity: "Bronze", attack: 3, magic: 8, defense: 4,
description: "Unlike other foxes that roamed the woods of southern Ionia, Ahri had always felt a strange connection to the magical world around her; a connection that was somehow incomplete. Deep inside, she felt the skin she had been born into was an ill fit for ...", image: "Ahri.png")
azir_card7 = akali_card = Card.create(player_id: azir.id, name: "Akali", title: "the Fist of Shadow", role: "Assassin", rarity: "Silver", attack: 6, magic: 10, defense: 3,
description: "There exists an ancient order originating in the Ionian Isles dedicated to the preservation of balance. Order, chaos, light, darkness -- all things must exist in perfect harmony for such is the way of the universe. This order is known as the Kinkou ...", image: "Akali.png")
azir_card8 = akali_card = Card.create(player_id: azir.id, name: "Akali", title: "the Fist of Shadow", role: "Assassin", rarity: "Silver", attack: 6, magic: 10, defense: 3,
description: "There exists an ancient order originating in the Ionian Isles dedicated to the preservation of balance. Order, chaos, light, darkness -- all things must exist in perfect harmony for such is the way of the universe. This order is known as the Kinkou ...", image: "Akali.png")
azir_card9 = akali_card = Card.create(player_id: azir.id, name: "Akali", title: "the Fist of Shadow", role: "Assassin", rarity: "Silver", attack: 6, magic: 10, defense: 3,
description: "There exists an ancient order originating in the Ionian Isles dedicated to the preservation of balance. Order, chaos, light, darkness -- all things must exist in perfect harmony for such is the way of the universe. This order is known as the Kinkou ...", image: "Akali.png")
azir_card10 = alistar_card = Card.create(player_id: azir.id, name: "Alistar", title: "the Minotaur", role: "Tank", rarity: "Silver", attack: 7, magic: 6, defense: 11,
description: "As the mightiest warrior to ever emerge from the Minotaur tribes of the Great Barrier, Alistar defended his tribe from Valoran's many dangers; that is, until the coming of the Noxian army. Alistar was lured from his village by the machinations of ...", image: "Alistar.png")
azir_card11 = alistar_card = Card.create(player_id: azir.id, name: "Alistar", title: "the Minotaur", role: "Tank", rarity: "Silver", attack: 7, magic: 6, defense: 11,
description: "As the mightiest warrior to ever emerge from the Minotaur tribes of the Great Barrier, Alistar defended his tribe from Valoran's many dangers; that is, until the coming of the Noxian army. Alistar was lured from his village by the machinations of ...", image: "Alistar.png")
azir_card12 = alistar_card = Card.create(player_id: azir.id, name: "Alistar", title: "the Minotaur", role: "Tank", rarity: "Silver", attack: 7, magic: 6, defense: 11,
description: "As the mightiest warrior to ever emerge from the Minotaur tribes of the Great Barrier, Alistar defended his tribe from Valoran's many dangers; that is, until the coming of the Noxian army. Alistar was lured from his village by the machinations of ...", image: "Alistar.png")
azir_card13 = amumu_card = Card.create(player_id: azir.id, name: "Amumu", title: "the Sad Mummy", role: "Tank", rarity: "Bronze", attack: 2, magic: 8, defense: 6,
description: "''Solitude can be lonelier than death.''<br><br>A lonely and melancholy soul from ancient Shurima, Amumu roams the world in search of a friend. Cursed by an ancient spell, he is doomed to remain alone forever, as his touch is death and his affection ...", image: "Amumu.png")
azir_card14 = amumu_card = Card.create(player_id: azir.id, name: "Amumu", title: "the Sad Mummy", role: "Tank", rarity: "Bronze", attack: 2, magic: 8, defense: 6,
description: "''Solitude can be lonelier than death.''<br><br>A lonely and melancholy soul from ancient Shurima, Amumu roams the world in search of a friend. Cursed by an ancient spell, he is doomed to remain alone forever, as his touch is death and his affection ...", image: "Amumu.png")
azir_card15 = amumu_card = Card.create(player_id: azir.id, name: "Amumu", title: "the Sad Mummy", role: "Tank", rarity: "Bronze", attack: 2, magic: 8, defense: 6,
description: "''Solitude can be lonelier than death.''<br><br>A lonely and melancholy soul from ancient Shurima, Amumu roams the world in search of a friend. Cursed by an ancient spell, he is doomed to remain alone forever, as his touch is death and his affection ...", image: "Amumu.png")
azir_card16 = Card.create(
  player_id: azir.id,
  name: "Requiem",
  cardtype: "Ability",
  rarity: "Diamond",
  description: "Destroy every champion on your opponent's side of the field",
  effect: "props.requiem()",
  image: "Requiem.png",
  quantity: 0
)

azir_deckcard1 = Deckcard.create(deck_id: azir_deck.id, card_id: azir_card1.id)
azir_deckcard2 = Deckcard.create(deck_id: azir_deck.id, card_id: azir_card2.id)
azir_deckcard3 = Deckcard.create(deck_id: azir_deck.id, card_id: azir_card3.id)
azir_deckcard4 = Deckcard.create(deck_id: azir_deck.id, card_id: azir_card4.id)
azir_deckcard5 = Deckcard.create(deck_id: azir_deck.id, card_id: azir_card5.id)
azir_deckcard6 = Deckcard.create(deck_id: azir_deck.id, card_id: azir_card6.id)
azir_deckcard7 = Deckcard.create(deck_id: azir_deck.id, card_id: azir_card7.id)
azir_deckcard8 = Deckcard.create(deck_id: azir_deck.id, card_id: azir_card8.id)
azir_deckcard9 = Deckcard.create(deck_id: azir_deck.id, card_id: azir_card9.id)
azir_deckcard10 = Deckcard.create(deck_id: azir_deck.id, card_id: azir_card10.id)
azir_deckcard11 = Deckcard.create(deck_id: azir_deck.id, card_id: azir_card11.id)
azir_deckcard12 = Deckcard.create(deck_id: azir_deck.id, card_id: azir_card12.id)
azir_deckcard13 = Deckcard.create(deck_id: azir_deck.id, card_id: azir_card13.id)
azir_deckcard14 = Deckcard.create(deck_id: azir_deck.id, card_id: azir_card14.id)
azir_deckcard15 = Deckcard.create(deck_id: azir_deck.id, card_id: azir_card15.id)
azir_deckcard16 = Deckcard.create(deck_id: azir_deck.id, card_id: azir_card16.id)
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


def generate_cards
  cardinfo = HTTParty.get('http://ddragon.leagueoflegends.com/cdn/6.24.1/data/en_US/champion.json')
  cardinfo["data"].each do |champ, cardObj|
    if (cardObj["info"]["difficulty"].to_i) === 10
      Allcard.create(
        key: cardObj["key"],
        name: cardObj["name"],
        title: cardObj["title"],
        cardtype: "Champion",
        role: cardObj["tags"][0],
        rarity: "Diamond",
        attack: cardObj["info"]["attack"] * 2,
        magic: cardObj["info"]["magic"] * 2,
        defense: cardObj["info"]["defense"] * 2,
        description: cardObj["blurb"],
        image: cardObj["image"]["full"],
        quantity: 0
      )
    elsif (cardObj["info"]["difficulty"].to_i) === 9
      Allcard.create(
        key: cardObj["key"],
        name: cardObj["name"],
        title: cardObj["title"],
        cardtype: "Champion",
        role: cardObj["tags"][0],
        rarity: "Platinum",
        attack: cardObj["info"]["attack"] * 1.8,
        magic: cardObj["info"]["magic"] * 1.8,
        defense: cardObj["info"]["defense"] * 1.8,
        description: cardObj["blurb"],
        image: cardObj["image"]["full"],
        quantity: 0
      )
    elsif (cardObj["info"]["difficulty"].to_i) === 8
      Allcard.create(
        key: cardObj["key"],
        name: cardObj["name"],
        title: cardObj["title"],
        cardtype: "Champion",
        role: cardObj["tags"][0],
        rarity: "Gold",
        attack: cardObj["info"]["attack"] * 1.5,
        magic: cardObj["info"]["magic"] * 1.5,
        defense: cardObj["info"]["defense"] * 1.5,
        description: cardObj["blurb"],
        image: cardObj["image"]["full"],
        quantity: 0
        )
    elsif (cardObj["info"]["difficulty"].to_i) === 7
      Allcard.create(
        key: cardObj["key"],
        name: cardObj["name"],
        title: cardObj["title"],
        cardtype: "Champion",
        role: cardObj["tags"][0],
        rarity: "Silver",
        attack: cardObj["info"]["attack"] * 1.3,
        magic: cardObj["info"]["magic"] * 1.3,
        defense: cardObj["info"]["defense"] * 1.3,
        description: cardObj["blurb"],
        image: cardObj["image"]["full"],
        quantity: 0
      )
    elsif (cardObj["info"]["difficulty"].to_i) < 7
      Allcard.create(
        key: cardObj["key"],
        name: cardObj["name"],
        title: cardObj["title"],
        cardtype: "Champion",
        role: cardObj["tags"][0],
        rarity: "Bronze",
        attack: cardObj["info"]["attack"],
        magic: cardObj["info"]["magic"],
        defense: cardObj["info"]["defense"],
        description: cardObj["blurb"],
        image: cardObj["image"]["full"],
        quantity: 0
      )
    end
  end
end
#
generate_cards

requiem = Allcard.create(
  name: "Requiem",
  cardtype: "Ability",
  rarity: "Diamond",
  description: "Destroy every champion on your opponent's side of the field",
  effect: "props.requiem()",
  image: "Requiem.png",
  quantity: 0
)

requieum = Allcard.create(
  name: "Demacian Justice",
  cardtype: "Ability",
  rarity: "Gold",
  description: "Destroy the champion with the highest attack on your opponent's side of the field",
  effect: "props.demacianJustice()",
  image: "DemacianJustice.png",
  quantity: 0
)

requieum = Allcard.create(
  name: "Primordial Burst",
  cardtype: "Ability",
  rarity: "Gold",
  description: "Destroy the champion with the highest magic on your opponent's side of the field",
  effect: "props.primordialBurst()",
  image: "PrimordialBurst.png",
  quantity: 0
)

requieum = Allcard.create(
  name: "Silver Bolts",
  cardtype: "Ability",
  rarity: "Silver",
  description: "Destroy the champion with the highest defense on your opponent's side of the field",
  effect: "props.silverBolts()",
  image: "SilverBolts.png",
  quantity: 0
)
