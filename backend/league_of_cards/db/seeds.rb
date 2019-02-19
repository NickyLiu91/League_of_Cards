require "httparty"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

azir = Player.create(name: "Azir", image: "image/AzirPortrait.png", computer: true, background: "image/GarenBG.jpeg", preduel: "image/Garen.png")
# zed = Player.create(name: "Zed", image: "image/ZedPortrait.png", computer: true)
garen = Player.create(name: "Garen", image: "image/GarenPortrait.png", computer: true, background: "image/GarenBG.jpeg", preduel: "image/Garen.png")
jarvan = Player.create(name: "Jarvan", image: "image/JarvanIVPortrait.png", computer: true, background: "image/JarvanIVBG.jpeg", preduel: "image/JarvanIV.png")
lux = Player.create(name: "Lux", image: "image/LuxPortrait.png", computer: true, background: "image/LuxBG.jpeg", preduel: "image/Lux.png")
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
#
azir_deck = Deck.create(name: "Azir Deck 1", player_id: azir.id)
# zed_deck = Deck.create(name: "Zed Deck 1", player_id: zed.id)
garen_deck = Deck.create(name: "Garen Deck 1", player_id: garen.id)
jarvan_deck = Deck.create(name: "Jarvan Deck 1", player_id: jarvan.id)
lux_deck = Deck.create(name: "Lux Deck 1", player_id: lux.id)
# swain_deck = Deck.create(name: "Swain Deck 1", player_id: swain.id)
# masterYi_deck = Deck.create(name: "MasterYi Deck 1", player_id: masterYi.id)
# garen_deck = Deck.create(name: "Garen Deck 1", player_id: garen.id)
# darius_deck = Deck.create(name: "Darius Deck 1", player_id: darius.id)
# leBlanc_deck = Deck.create(name: "LeBlanc Deck 1", player_id: leBlanc.id)
# caitlyn_deck = Deck.create(name: "Caitlyn Deck 1", player_id: caitlyn.id)
# heimerdinger_deck = Deck.create(name: "Heimerdinger Deck 1", player_id: heimerdinger.id)
# malzahar_deck = Deck.create(name: "Malzahar Deck 1", player_id: malzahar.id)

# garen_card1 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Garen", title: "The Might of Demacia", role: "Fighter", rarity: "Bronze", attack: 700, magic: 100, defense: 700,
# description:Throughout Valoran, the resolve of Demacia's military is alternately celebrated or despised, but always respected. Their ''zero tolerance'' moral code is strictly upheld by civilians and soldiers alike. In combat, this means Demacian troops may not .....", image:Garenox.png")


garen_card1 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Garen", title: "The Might of Demacia", role: "Fighter", rarity: "Bronze", attack: 700, magic: 100, defense: 700,image: "Garen.png")
garen_card2 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Garen", title: "The Might of Demacia", role: "Fighter", rarity: "Bronze", attack: 700, magic: 100, defense: 700,image: "Garen.png")
garen_card3 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Garen", title: "The Might of Demacia", role: "Fighter", rarity: "Bronze", attack: 700, magic: 100, defense: 700,image: "Garen.png")
garen_card4 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Sona", title: "Maven of the Strings", role: "Support", rarity: "Bronze", attack: 500, magic: 800, defense: 200,image: "Sona.png")
garen_card5 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Sona", title: "Maven of the Strings", role: "Support", rarity: "Bronze", attack: 500, magic: 800, defense: 200,image: "Sona.png")
garen_card6 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Sona", title: "Maven of the Strings", role: "Support", rarity: "Bronze", attack: 500, magic: 800, defense: 200,image: "Sona.png")
garen_card7 = Card.create(player_id: garen.id, cardtype: 'Champion',  name: "Jarvan IV", title: "the Exemplar of Demacia", role: "Tank", rarity: "Bronze", attack: 600, magic: 300, defense: 800, image: "JarvanIV.png")
garen_card8 = Card.create(player_id: garen.id, cardtype: 'Champion',  name: "Jarvan IV", title: "the Exemplar of Demacia", role: "Tank", rarity: "Bronze", attack: 600, magic: 300, defense: 800, image: "JarvanIV.png")
garen_card9 = Card.create(player_id: garen.id, cardtype: 'Champion',  name: "Jarvan IV", title: "the Exemplar of Demacia", role: "Tank", rarity: "Bronze", attack: 600, magic: 300, defense: 800, image: "JarvanIV.png")
garen_card10 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Lucian", title: "the Purifier", role: "Marksman", rarity: "Bronze", attack: 800, magic: 300, defense: 500,image: "Lucian.png")
garen_card11 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Lucian", title: "the Purifier", role: "Marksman", rarity: "Bronze", attack: 800, magic: 300, defense: 500,image: "Lucian.png")
garen_card12 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Lucian", title: "the Purifier", role: "Marksman", rarity: "Bronze", attack: 800, magic: 300, defense: 500,image: "Lucian.png")
garen_card13 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Poppy", title: "Keeper of the Hammer", role: "Tank", rarity: "Bronze", attack: 600, magic: 200, defense: 700,image: "Poppy.png")
garen_card14 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Poppy", title: "Keeper of the Hammer", role: "Tank", rarity: "Bronze", attack: 600, magic: 200, defense: 700,image: "Poppy.png")
garen_card15 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Poppy", title: "Keeper of the Hammer", role: "Tank", rarity: "Bronze", attack: 600, magic: 200, defense: 700,image: "Poppy.png")
garen_card16 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Shyvana", title: "the Half-Dragon", role: "Fighter", rarity: "Bronze", attack: 800, magic: 300, defense: 600,image: "Shyvana.png")
garen_card17 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Shyvana", title: "the Half-Dragon", role: "Fighter", rarity: "Bronze", attack: 800, magic: 300, defense: 600,image: "Shyvana.png")
garen_card18 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Shyvana", title: "the Half-Dragon", role: "Fighter", rarity: "Bronze", attack: 800, magic: 300, defense: 600,image: "Shyvana.png")
garen_card19 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Xin Zhao", title: "the Seneschal of Demacia", role: "Fighter", rarity: "Bronze", attack: 800, magic: 300, defense: 600,image: "XinZhao.png")
garen_card20 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Xin Zhao", title: "the Seneschal of Demacia", role: "Fighter", rarity: "Bronze", attack: 800, magic: 300, defense: 600,image: "XinZhao.png")
garen_card21 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Xin Zhao", title: "the Seneschal of Demacia", role: "Fighter", rarity: "Bronze", attack: 800, magic: 300, defense: 600,image: "XinZhao.png")
garen_card22 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Galio", title: "the Sentinel's Sorrow", role: "Tank", rarity: "Bronze", attack: 300, magic: 600, defense: 700,image: "Galio.png")
garen_card23 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Galio", title: "the Sentinel's Sorrow", role: "Tank", rarity: "Bronze", attack: 300, magic: 600, defense: 700,image: "Galio.png")
garen_card24 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Galio", title: "the Sentinel's Sorrow", role: "Tank", rarity: "Bronze", attack: 300, magic: 600, defense: 700,image: "Galio.png")
garen_card25 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Garen", title: "The Might of Demacia", role: "Fighter", rarity: "Bronze", attack: 700, magic: 100, defense: 700,image: "Garen.png")
garen_card26 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Garen", title: "The Might of Demacia", role: "Fighter", rarity: "Bronze", attack: 700, magic: 100, defense: 700,image: "Garen.png")
garen_card27 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Garen", title: "The Might of Demacia", role: "Fighter", rarity: "Bronze", attack: 700, magic: 100, defense: 700,image: "Garen.png")
garen_card28 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Garen", title: "The Might of Demacia", role: "Fighter", rarity: "Bronze", attack: 700, magic: 100, defense: 700,image: "Garen.png")
garen_card29 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Garen", title: "The Might of Demacia", role: "Fighter", rarity: "Bronze", attack: 700, magic: 100, defense: 700,image: "Garen.png")
garen_card30 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Garen", title: "The Might of Demacia", role: "Fighter", rarity: "Bronze", attack: 700, magic: 100, defense: 700,image: "Garen.png")
garen_card31 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Garen", title: "The Might of Demacia", role: "Fighter", rarity: "Bronze", attack: 700, magic: 100, defense: 700,image: "Garen.png")
garen_card32 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Garen", title: "The Might of Demacia", role: "Fighter", rarity: "Bronze", attack: 700, magic: 100, defense: 700,image: "Garen.png")
garen_card33 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Garen", title: "The Might of Demacia", role: "Fighter", rarity: "Bronze", attack: 700, magic: 100, defense: 700,image: "Garen.png")
garen_card34 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Garen", title: "The Might of Demacia", role: "Fighter", rarity: "Bronze", attack: 700, magic: 100, defense: 700,image: "Garen.png")
garen_card35 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Garen", title: "The Might of Demacia", role: "Fighter", rarity: "Bronze", attack: 700, magic: 100, defense: 700,image: "Garen.png")
garen_card36 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Garen", title: "The Might of Demacia", role: "Fighter", rarity: "Bronze", attack: 700, magic: 100, defense: 700,image: "Garen.png")
garen_card37 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Garen", title: "The Might of Demacia", role: "Fighter", rarity: "Bronze", attack: 700, magic: 100, defense: 700,image: "Garen.png")
garen_card38 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Garen", title: "The Might of Demacia", role: "Fighter", rarity: "Bronze", attack: 700, magic: 100, defense: 700,image: "Garen.png")
garen_card39 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Garen", title: "The Might of Demacia", role: "Fighter", rarity: "Bronze", attack: 700, magic: 100, defense: 700,image: "Garen.png")

garen_card40 = Card.create(
  player_id: garen.id,
  name: "Youmuu's Ghostblade",
  cardtype: "Item",
  rarity: "Diamond",
  description: "700 bonus to all stats to equipped Assassin.",
  effect: "props.equip(props.selectedCard)",
  image: "YoumuusGhostblade.png",
  quantity: 0
)
garen_card17 = Card.create(
  player_id: garen.id,
  name: "Requiem",
  cardtype: "Ability",
  rarity: "Diamond",
  description: "Destroy every champion on your opponent's side of the field",
  effect: "props.requiem()",
  image: "Requiem.png",
  quantity: 0
)
garen_card18 = Card.create(
  player_id: garen.id,
  name: "Youmuu's Ghostblade",
  cardtype: "Item",
  rarity: "Diamond",
  description: "700 bonus to all stats to equipped Assassin.",
  effect: "props.equip(props.selectedCard)",
  image: "YoumuusGhostblade.png",
  quantity: 0
)
garen_card19 = Card.create(
  player_id: garen.id,
  name: "Void Staff",
  cardtype: "Item",
  rarity: "Platinum",
  description: "500 bonus to all stats to equipped Mage.",
  effect: "props.equip(props.selectedCard)",
  image: "VoidStaff.png",
  quantity: 0
)
garen_card20 = Card.create(
  player_id: garen.id,
  name: "Redemption",
  cardtype: "Item",
  rarity: "Platinum",
  description: "500 bonus to all stats to equipped Support.",
  effect: "props.equip(props.selectedCard)",
  image: "Redemption.png",
  quantity: 0
)

azir_card21 = Card.create(player_id: azir.id, cardtype: 'Champion', name: "Akali", title: "the Fist of Shadow", role: "Assassin", rarity: "Silver", attack: 65, magic: 104, defense: 39,
description: "There exists an ancient order originating in the Ionian Isles dedicated to the preservation of balance. Order, chaos, light, darkness -- all things must exist in perfect harmony for such is the way of the universe. This order is known as the Kinkou ...", image: "Akali.png")
azir_card22 = Card.create(player_id: azir.id, cardtype: 'Champion', name: "Akali22", title: "the Fist of Shadow", role: "Assassin", rarity: "Silver", attack: 65, magic: 104, defense: 39,
description: "There exists an ancient order originating in the Ionian Isles dedicated to the preservation of balance. Order, chaos, light, darkness -- all things must exist in perfect harmony for such is the way of the universe. This order is known as the Kinkou ...", image: "Akali.png")

azir_card23 = Card.create(
  player_id: azir.id,
  name: "Noxian Guillotine",
  cardtype: "Ability",
  rarity: "Diamond",
  description: "Destroy any champion on your opponent's side of the field",
  effect: "props.noxianGuillotine(props.selectedCard)",
  image: "NoxianGuillotine.png",
  quantity: 0
)
azir_card24 = Card.create(
  player_id: azir.id,
  name: "Noxian Guillotine",
  cardtype: "Ability",
  rarity: "Diamond",
  description: "Destroy any champion on your opponent's side of the field",
  effect: "props.noxianGuillotine(props.selectedCard)",
  image: "NoxianGuillotine.png",
  quantity: 0
)
azir_card25 = Card.create(
  player_id: azir.id,
  name: "Youmuu's Ghostblade",
  cardtype: "Item",
  rarity: "Diamond",
  description: "700 bonus to all stats to equipped Assassin.",
  effect: "props.equip(props.selectedCard)",
  image: "YoumuusGhostblade.png",
  quantity: 0
)
azir_card26 = Card.create(
  player_id: azir.id,
  name: "Youmuu's Ghostblade",
  cardtype: "Item",
  rarity: "Diamond",
  description: "700 bonus to all stats to equipped Assassin.",
  effect: "props.equip(props.selectedCard)",
  image: "YoumuusGhostblade.png",
  quantity: 0
)
azir_card27 = Card.create(
  player_id: azir.id,
  name: "Youmuu's Ghostblade",
  cardtype: "Item",
  rarity: "Diamond",
  description: "700 bonus to all stats to equipped Assassin.",
  effect: "props.equip(props.selectedCard)",
  image: "YoumuusGhostblade.png",
  quantity: 0
)
azir_card28 = Card.create(
  player_id: azir.id,
  name: "Youmuu's Ghostblade",
  cardtype: "Item",
  rarity: "Diamond",
  description: "700 bonus to all stats to equipped Assassin.",
  effect: "props.equip(props.selectedCard)",
  image: "YoumuusGhostblade.png",
  quantity: 0
)
azir_card29 = Card.create(
  player_id: azir.id,
  name: "Youmuu's Ghostblade",
  cardtype: "Item",
  rarity: "Diamond",
  description: "700 bonus to all stats to equipped Assassin.",
  effect: "props.equip(props.selectedCard)",
  image: "YoumuusGhostblade.png",
  quantity: 0
)
azir_card30 = Card.create(
  player_id: azir.id,
  name: "Youmuu's Ghostblade",
  cardtype: "Item",
  rarity: "Diamond",
  description: "700 bonus to all stats to equipped Assassin.",
  effect: "props.equip(props.selectedCard)",
  image: "YoumuusGhostblade.png",
  quantity: 0
)
azir_card31 = Card.create(
  player_id: azir.id,
  name: "Youmuu's Ghostblade",
  cardtype: "Item",
  rarity: "Diamond",
  description: "700 bonus to all stats to equipped Assassin.",
  effect: "props.equip(props.selectedCard)",
  image: "YoumuusGhostblade.png",
  quantity: 0
)


# azir_deckcard1 = Deckcard.create(deck_id: azir_deck.id, card_id: azir_card1.id)
# azir_deckcard2 = Deckcard.create(deck_id: azir_deck.id, card_id: azir_card2.id)
# azir_deckcard3 = Deckcard.create(deck_id: azir_deck.id, card_id: azir_card3.id)
# azir_deckcard4 = Deckcard.create(deck_id: azir_deck.id, card_id: azir_card4.id)
# azir_deckcard5 = Deckcard.create(deck_id: azir_deck.id, card_id: azir_card5.id)
# azir_deckcard6 = Deckcard.create(deck_id: azir_deck.id, card_id: azir_card6.id)
# azir_deckcard7 = Deckcard.create(deck_id: azir_deck.id, card_id: azir_card7.id)
# azir_deckcard8 = Deckcard.create(deck_id: azir_deck.id, card_id: azir_card8.id)
# azir_deckcard9 = Deckcard.create(deck_id: azir_deck.id, card_id: azir_card9.id)
# azir_deckcard10 = Deckcard.create(deck_id: azir_deck.id, card_id: azir_card10.id)
# azir_deckcard11 = Deckcard.create(deck_id: azir_deck.id, card_id: azir_card11.id)
# azir_deckcard12 = Deckcard.create(deck_id: azir_deck.id, card_id: azir_card12.id)
# azir_deckcard13 = Deckcard.create(deck_id: azir_deck.id, card_id: azir_card13.id)
# azir_deckcard14 = Deckcard.create(deck_id: azir_deck.id, card_id: azir_card14.id)
# azir_deckcard15 = Deckcard.create(deck_id: azir_deck.id, card_id: azir_card15.id)
# azir_deckcard16 = Deckcard.create(deck_id: azir_deck.id, card_id: azir_card16.id)---
# azir_deckcard17 = Deckcard.create(deck_id: azir_deck.id, card_id: azir_card17.id)+++
# azir_deckcard18 = Deckcard.create(deck_id: azir_deck.id, card_id: azir_card18.id)---
# azir_deckcard19 = Deckcard.create(deck_id: azir_deck.id, card_id: azir_card19.id)---
# azir_deckcard20 = Deckcard.create(deck_id: azir_deck.id, card_id: azir_card20.id)---
azir_deckcard21 = Deckcard.create(deck_id: azir_deck.id, card_id: azir_card21.id)
azir_deckcard22 = Deckcard.create(deck_id: azir_deck.id, card_id: azir_card22.id)
azir_deckcard23 = Deckcard.create(deck_id: azir_deck.id, card_id: azir_card23.id)
azir_deckcard24 = Deckcard.create(deck_id: azir_deck.id, card_id: azir_card24.id)
azir_deckcard25 = Deckcard.create(deck_id: azir_deck.id, card_id: azir_card25.id)
azir_deckcard26 = Deckcard.create(deck_id: azir_deck.id, card_id: azir_card26.id)
azir_deckcard27 = Deckcard.create(deck_id: azir_deck.id, card_id: azir_card27.id)
azir_deckcard28 = Deckcard.create(deck_id: azir_deck.id, card_id: azir_card28.id)
azir_deckcard29 = Deckcard.create(deck_id: azir_deck.id, card_id: azir_card29.id)
azir_deckcard30 = Deckcard.create(deck_id: azir_deck.id, card_id: azir_card30.id)
azir_deckcard31 = Deckcard.create(deck_id: azir_deck.id, card_id: azir_card31.id)


jarvan_card1 = Card.create(player_id: jarvan.id, cardtype: 'Champion', name: "Garen", title: "The Might of Demacia", role: "Fighter", rarity: "Bronze", attack: 700, magic: 100, defense: 700,image: "Garen.png")
jarvan_card2 = Card.create(player_id: jarvan.id, cardtype: 'Champion', name: "Garen", title: "The Might of Demacia", role: "Fighter", rarity: "Bronze", attack: 700, magic: 100, defense: 700,image: "Garen.png")
jarvan_card3 = Card.create(player_id: jarvan.id, cardtype: 'Champion', name: "Garen", title: "The Might of Demacia", role: "Fighter", rarity: "Bronze", attack: 700, magic: 100, defense: 700,image: "Garen.png")
jarvan_card4 = Card.create(player_id: jarvan.id, cardtype: 'Champion', name: "Ahri", title: "the Nine-Tailed Fox", role: "Mage", rarity: "Bronze", attack: 300, magic: 800, defense: 400,
description: "Unlike other foxes that roamed the woods of southern Ionia, Ahri had always felt a strange connection to the magical world around her; a connection that was somehow incomplete. Deep inside, she felt the skin she had been born into was an ill fit for ...", image: "Ahri.png")
jarvan_card5 = Card.create(player_id: jarvan.id, cardtype: 'Champion', name: "Ahri", title: "the Nine-Tailed Fox", role: "Mage", rarity: "Bronze", attack: 300, magic: 800, defense: 400,
description: "Unlike other foxes that roamed the woods of southern Ionia, Ahri had always felt a strange connection to the magical world around her; a connection that was somehow incomplete. Deep inside, she felt the skin she had been born into was an ill fit for ...", image: "Ahri.png")
jarvan_card6 = Card.create(player_id: jarvan.id, cardtype: 'Champion', name: "Ahri", title: "the Nine-Tailed Fox", role: "Mage", rarity: "Bronze", attack: 300, magic: 800, defense: 400,
description: "Unlike other foxes that roamed the woods of southern Ionia, Ahri had always felt a strange connection to the magical world around her; a connection that was somehow incomplete. Deep inside, she felt the skin she had been born into was an ill fit for ...", image: "Ahri.png")
jarvan_card7 = Card.create(player_id: jarvan.id, cardtype: 'Champion', name: "Akali", title: "the Fist of Shadow", role: "Assassin", rarity: "Silver", attack: 650, magic: 1040, defense: 390,
description: "There exists an ancient order originating in the Ionian Isles dedicated to the preservation of balance. Order, chaos, light, darkness -- all things must exist in perfect harmony for such is the way of the universe. This order is known as the Kinkou ...", image: "Akali.png")
jarvan_card8 = Card.create(player_id: jarvan.id, cardtype: 'Champion', name: "Akali", title: "the Fist of Shadow", role: "Assassin", rarity: "Silver", attack: 650, magic: 1040, defense: 390,
description: "There exists an ancient order originating in the Ionian Isles dedicated to the preservation of balance. Order, chaos, light, darkness -- all things must exist in perfect harmony for such is the way of the universe. This order is known as the Kinkou ...", image: "Akali.png")
jarvan_card9 = Card.create(player_id: jarvan.id, cardtype: 'Champion', name: "Akali", title: "the Fist of Shadow", role: "Assassin", rarity: "Silver", attack: 650, magic: 1040, defense: 390,
description: "There exists an ancient order originating in the Ionian Isles dedicated to the preservation of balance. Order, chaos, light, darkness -- all things must exist in perfect harmony for such is the way of the universe. This order is known as the Kinkou ...", image: "Akali.png")
jarvan_card10 = Card.create(player_id: jarvan.id, cardtype: 'Champion', name: "Alistar", title: "the Minotaur", role: "Tank", rarity: "Silver", attack: 780, magic: 650, defense: 1170,
description: "As the mightiest warrior to ever emerge from the Minotaur tribes of the Great Barrier, Alistar defended his tribe from Valoran's many dangers; that is, until the coming of the Noxian army. Alistar was lured from his village by the machinations of ...", image: "Alistar.png")
jarvan_card11 = Card.create(player_id: jarvan.id, cardtype: 'Champion', name: "Alistar", title: "the Minotaur", role: "Tank", rarity: "Silver", attack: 780, magic: 650, defense: 1170,
description: "As the mightiest warrior to ever emerge from the Minotaur tribes of the Great Barrier, Alistar defended his tribe from Valoran's many dangers; that is, until the coming of the Noxian army. Alistar was lured from his village by the machinations of ...", image: "Alistar.png")
jarvan_card12 = Card.create(player_id: jarvan.id, cardtype: 'Champion', name: "Alistar", title: "the Minotaur", role: "Tank", rarity: "Silver", attack: 780, magic: 650, defense: 1170,
description: "As the mightiest warrior to ever emerge from the Minotaur tribes of the Great Barrier, Alistar defended his tribe from Valoran's many dangers; that is, until the coming of the Noxian army. Alistar was lured from his village by the machinations of ...", image: "Alistar.png")
jarvan_card13 = Card.create(player_id: jarvan.id, cardtype: 'Champion', name: "Amumu", title: "the Sad Mummy", role: "Tank", rarity: "Bronze", attack: 200, magic: 800, defense: 600,
description: "''Solitude can be lonelier than death.''<br><br>A lonely and melancholy soul from ancient Shurima, Amumu roams the world in search of a friend. Cursed by an ancient spell, he is doomed to remain alone forever, as his touch is death and his affection ...", image: "Amumu.png")
jarvan_card14 = Card.create(player_id: jarvan.id, cardtype: 'Champion', name: "Amumu", title: "the Sad Mummy", role: "Tank", rarity: "Bronze", attack: 200, magic: 800, defense: 600,
description: "''Solitude can be lonelier than death.''<br><br>A lonely and melancholy soul from ancient Shurima, Amumu roams the world in search of a friend. Cursed by an ancient spell, he is doomed to remain alone forever, as his touch is death and his affection ...", image: "Amumu.png")
jarvan_card15 = Card.create(player_id: jarvan.id, cardtype: 'Champion', name: "Amumu", title: "the Sad Mummy", role: "Tank", rarity: "Bronze", attack: 200, magic: 800, defense: 600,
description: "''Solitude can be lonelier than death.''<br><br>A lonely and melancholy soul from ancient Shurima, Amumu roams the world in search of a friend. Cursed by an ancient spell, he is doomed to remain alone forever, as his touch is death and his affection ...", image: "Amumu.png")

jarvan_card16 = Card.create(
  player_id: jarvan.id,
  name: "Youmuu's Ghostblade",
  cardtype: "Item",
  rarity: "Diamond",
  description: "700 bonus to all stats to equipped Assassin.",
  effect: "props.equip(props.selectedCard)",
  image: "YoumuusGhostblade.png",
  quantity: 0
)
jarvan_card17 = Card.create(
  player_id: jarvan.id,
  name: "Requiem",
  cardtype: "Ability",
  rarity: "Diamond",
  description: "Destroy every champion on your opponent's side of the field",
  effect: "props.requiem()",
  image: "Requiem.png",
  quantity: 0
)
jarvan_card18 = Card.create(
  player_id: jarvan.id,
  name: "Youmuu's Ghostblade",
  cardtype: "Item",
  rarity: "Diamond",
  description: "700 bonus to all stats to equipped Assassin.",
  effect: "props.equip(props.selectedCard)",
  image: "YoumuusGhostblade.png",
  quantity: 0
)
jarvan_card19 = Card.create(
  player_id: jarvan.id,
  name: "Void Staff",
  cardtype: "Item",
  rarity: "Platinum",
  description: "500 bonus to all stats to equipped Mage.",
  effect: "props.equip(props.selectedCard)",
  image: "VoidStaff.png",
  quantity: 0
)
jarvan_card20 = Card.create(
  player_id: jarvan.id,
  name: "Redemption",
  cardtype: "Item",
  rarity: "Platinum",
  description: "500 bonus to all stats to equipped Support.",
  effect: "props.equip(props.selectedCard)",
  image: "Redemption.png",
  quantity: 0
)

jarvan_card21 = Card.create(player_id: jarvan.id, cardtype: 'Champion', name: "Akali", title: "the Fist of Shadow", role: "Assassin", rarity: "Silver", attack: 650, magic: 1040, defense: 390,
description: "There exists an ancient order originating in the Ionian Isles dedicated to the preservation of balance. Order, chaos, light, darkness -- all things must exist in perfect harmony for such is the way of the universe. This order is known as the Kinkou ...", image: "Akali.png")
jarvan_card22 = Card.create(player_id: jarvan.id, cardtype: 'Champion', name: "Ahri", title: "the Nine-Tailed Fox", role: "Mage", rarity: "Bronze", attack: 300, magic: 800, defense: 400,
description: "Unlike other foxes that roamed the woods of southern Ionia, Ahri had always felt a strange connection to the magical world around her; a connection that was somehow incomplete. Deep inside, she felt the skin she had been born into was an ill fit for ...", image: "Ahri.png")
jarvan_card23 = Card.create(
  player_id: jarvan.id,
  name: "Noxian Guillotine",
  cardtype: "Ability",
  rarity: "Diamond",
  description: "Destroy any champion on your opponent's side of the field",
  effect: "props.noxianGuillotine(props.selectedCard)",
  image: "NoxianGuillotine.png",
  quantity: 0
)
jarvan_card24 = Card.create(
  player_id: jarvan.id,
  name: "Noxian Guillotine",
  cardtype: "Ability",
  rarity: "Diamond",
  description: "Destroy any champion on your opponent's side of the field",
  effect: "props.noxianGuillotine(props.selectedCard)",
  image: "NoxianGuillotine.png",
  quantity: 0
)

jarvan_deckcard1 = Deckcard.create(deck_id: jarvan_deck.id, card_id: jarvan_card1.id)
jarvan_deckcard2 = Deckcard.create(deck_id: jarvan_deck.id, card_id: jarvan_card2.id)
jarvan_deckcard3 = Deckcard.create(deck_id: jarvan_deck.id, card_id: jarvan_card3.id)
jarvan_deckcard4 = Deckcard.create(deck_id: jarvan_deck.id, card_id: jarvan_card4.id)
jarvan_deckcard5 = Deckcard.create(deck_id: jarvan_deck.id, card_id: jarvan_card5.id)
jarvan_deckcard6 = Deckcard.create(deck_id: jarvan_deck.id, card_id: jarvan_card6.id)
jarvan_deckcard7 = Deckcard.create(deck_id: jarvan_deck.id, card_id: jarvan_card7.id)
jarvan_deckcard8 = Deckcard.create(deck_id: jarvan_deck.id, card_id: jarvan_card8.id)
jarvan_deckcard9 = Deckcard.create(deck_id: jarvan_deck.id, card_id: jarvan_card9.id)
jarvan_deckcard10 = Deckcard.create(deck_id: jarvan_deck.id, card_id: jarvan_card10.id)
jarvan_deckcard11 = Deckcard.create(deck_id: jarvan_deck.id, card_id: jarvan_card11.id)
jarvan_deckcard12 = Deckcard.create(deck_id: jarvan_deck.id, card_id: jarvan_card12.id)
jarvan_deckcard13 = Deckcard.create(deck_id: jarvan_deck.id, card_id: jarvan_card13.id)
jarvan_deckcard14 = Deckcard.create(deck_id: jarvan_deck.id, card_id: jarvan_card14.id)
jarvan_deckcard15 = Deckcard.create(deck_id: jarvan_deck.id, card_id: jarvan_card15.id)
# jarvan_deckcard16 = Deckcard.create(deck_id: jarvan_deck.id, card_id: jarvan_card16.id)---
jarvan_deckcard17 = Deckcard.create(deck_id: jarvan_deck.id, card_id: jarvan_card17.id)
# jarvan_deckcard18 = Deckcard.create(deck_id: jarvan_deck.id, card_id: jarvan_card18.id)---
# jarvan_deckcard19 = Deckcard.create(deck_id: jarvan_deck.id, card_id: jarvan_card19.id)---
# jarvan_deckcard20 = Deckcard.create(deck_id: jarvan_deck.id, card_id: jarvan_card20.id)---
# jarvan_deckcard21 = Deckcard.create(deck_id: jarvan_deck.id, card_id: jarvan_card21.id)---
jarvan_deckcard22 = Deckcard.create(deck_id: jarvan_deck.id, card_id: jarvan_card22.id)
jarvan_deckcard23 = Deckcard.create(deck_id: jarvan_deck.id, card_id: jarvan_card23.id)
jarvan_deckcard24 = Deckcard.create(deck_id: jarvan_deck.id, card_id: jarvan_card24.id)
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
    # cardDescription = HTTParty.get("http://ddragon.leagueoflegends.com/cdn/6.24.1/data/en_US/champion/#{cardObj["id"]}.json")["data"]["#{cardObj["id"]}"]["lore"]
    # puts(cardDescription)
    if (cardObj["info"]["difficulty"].to_i) === 10
      Allcard.create(
        key: cardObj["key"],
        name: cardObj["name"],
        title: cardObj["title"],
        cardtype: "Champion",
        role: cardObj["tags"][0],
        rarity: "Diamond",
        attack: cardObj["info"]["attack"] * 300,
        magic: cardObj["info"]["magic"] * 300,
        defense: cardObj["info"]["defense"] * 300,
        # description: cardDescription,
        description: "tempSpace",
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
        attack: cardObj["info"]["attack"] * 250,
        magic: cardObj["info"]["magic"] * 250,
        defense: cardObj["info"]["defense"] * 250,
        # description: cardDescription,
        description: "tempSpace",
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
        attack: cardObj["info"]["attack"] * 200,
        magic: cardObj["info"]["magic"] * 200,
        defense: cardObj["info"]["defense"] * 200,
        # description: cardDescription,
        description: "tempSpace",
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
        attack: cardObj["info"]["attack"] * 150,
        magic: cardObj["info"]["magic"] * 150,
        defense: cardObj["info"]["defense"] * 150,
        # description: cardDescription,
        description: "tempSpace",
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
        attack: cardObj["info"]["attack"] * 100,
        magic: cardObj["info"]["magic"] * 100,
        defense: cardObj["info"]["defense"] * 100,
        # description: cardDescription,
        description: "tempSpace",
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
  effect: "props.requiem(props.selectedCard)",
  image: "Requiem.png",
  quantity: 0
)

noxianGuillotine = Allcard.create(
  name: "Noxian Guillotine",
  cardtype: "Ability",
  rarity: "Diamond",
  description: "Destroy any champion on your opponent's side of the field",
  effect: "props.noxianGuillotine(props.selectedCard)",
  image: "NoxianGuillotine.png",
  quantity: 0
)

demacianJustice = Allcard.create(
  name: "Demacian Justice",
  cardtype: "Ability",
  rarity: "Platinum",
  description: "Destroy the champion with the highest power on your opponent's side of the field",
  effect: "props.demacianJustice(props.selectedCard)",
  image: "DemacianJustice.png",
  quantity: 0
)

deathMark = Allcard.create(
  name: "Death Mark",
  cardtype: "Ability",
  rarity: "Gold",
  description: "Destroy the champion with the highest attack on your opponent's side of the field",
  effect: "props.deathMark(props.selectedCard)",
  image: "DeathMark.png",
  quantity: 0
)

primordialBurst = Allcard.create(
  name: "Primordial Burst",
  cardtype: "Ability",
  rarity: "Gold",
  description: "Destroy the champion with the highest magic on your opponent's side of the field",
  effect: "props.primordialBurst(props.selectedCard)",
  image: "PrimordialBurst.png",
  quantity: 0
)

silverBolts = Allcard.create(
  name: "Silver Bolts",
  cardtype: "Ability",
  rarity: "Silver",
  description: "Destroy the champion with the highest defense on your opponent's side of the field",
  effect: "props.silverBolts(props.selectedCard)",
  image: "SilverBolts.png",
  quantity: 0
)

longSword = Allcard.create(
  name: "Long Sword",
  cardtype: "Item",
  rarity: "Silver",
  description: "300 bonus to attack of equipped champion.",
  effect: "props.equip(props.selectedCard)",
  image: "LongSword.png",
  quantity: 0
)

bfSword = Allcard.create(
  name: "B. F. Sword",
  cardtype: "Item",
  rarity: "Gold",
  description: "500 bonus to attack of equipped champion.",
  effect: "props.equip(props.selectedCard)",
  image: "BFSword.png",
  quantity: 0
)

amplifyingTome = Allcard.create(
  name: "Amplifying Tome",
  cardtype: "Item",
  rarity: "Silver",
  description: "300 bonus to magic of equipped champion.",
  effect: "props.equip(props.selectedCard)",
  image: "AmplifyingTome.png",
  quantity: 0
)

needlesslyLargeRod = Allcard.create(
  name: "Needlessly Large Rod",
  cardtype: "Item",
  rarity: "Gold",
  description: "500 bonus to magic of equipped champion.",
  effect: "props.equip(props.selectedCard)",
  image: "NeedlesslyLargeRod.png",
  quantity: 0
)

rubyCrystal = Allcard.create(
  name: "Ruby Crystal",
  cardtype: "Item",
  rarity: "Bronze",
  description: "300 bonus to defense of equipped champion.",
  effect: "props.equip(props.selectedCard)",
  image: "RubyCrystal.png",
  quantity: 0
)

giantsBelt = Allcard.create(
  name: "Giant's Belt",
  cardtype: "Item",
  rarity: "Silver",
  description: "500 bonus to defense of equipped champion.",
  effect: "props.equip(props.selectedCard)",
  image: "GiantsBelt.png",
  quantity: 0
)

blackCleaver = Allcard.create(
  name: "Black Cleaver",
  cardtype: "Item",
  rarity: "Platinum",
  description: "500 bonus to all stats to equipped Fighter.",
  effect: "props.equip(props.selectedCard)",
  image: "BlackCleaver.png",
  quantity: 0
)

trinityForce = Allcard.create(
  name: "Trinity Force",
  cardtype: "Item",
  rarity: "Diamond",
  description: "700 bonus to all stats to equipped Fighter.",
  effect: "props.equip(props.selectedCard)",
  image: "TrinityForce.png",
  quantity: 0
)

voidStaff = Allcard.create(
  name: "Void Staff",
  cardtype: "Item",
  rarity: "Platinum",
  description: "500 bonus to all stats to equipped Mage.",
  effect: "props.equip(props.selectedCard)",
  image: "VoidStaff.png",
  quantity: 0
)

rabadonsDeathCap = Allcard.create(
  name: "Rabadon's Deathcap",
  cardtype: "Item",
  rarity: "Diamond",
  description: "700 bonus to all stats to equipped Mage.",
  effect: "props.equip(props.selectedCard)",
  image: "RabadonsDeathcap.png",
  quantity: 0
)

duskbladeOfDraktharr = Allcard.create(
  name: "Duskblade of Draktharr",
  cardtype: "Item",
  rarity: "Platinum",
  description: "500 bonus to all stats to equipped Assassin.",
  effect: "props.equip(props.selectedCard)",
  image: "DuskbladeofDraktharr.png",
  quantity: 0
)

youmuusGhostblade = Allcard.create(
  name: "Youmuu's Ghostblade",
  cardtype: "Item",
  rarity: "Diamond",
  description: "700 bonus to all stats to equipped Assassin.",
  effect: "props.equip(props.selectedCard)",
  image: "YoumuusGhostblade.png",
  quantity: 0
)

sunfireCape = Allcard.create(
  name: "Sunfore Cape",
  cardtype: "Item",
  rarity: "Platinum",
  description: "500 bonus to all stats to equipped Tank.",
  effect: "props.equip(props.selectedCard)",
  image: "SunfireCape.png",
  quantity: 0
)

warmogsArmor = Allcard.create(
  name: "Warmog's Armor",
  cardtype: "Item",
  rarity: "Diamond",
  description: "700 bonus to all stats to equipped Tank.",
  effect: "props.equip(props.selectedCard)",
  image: "WarmogsArmor.png",
  quantity: 0
)

redemption = Allcard.create(
  name: "Redemption",
  cardtype: "Item",
  rarity: "Platinum",
  description: "500 bonus to all stats to equipped Support.",
  effect: "props.equip(props.selectedCard)",
  image: "Redemption.png",
  quantity: 0
)

shurelyasReverie = Allcard.create(
  name: "Shurelya's Reverie",
  cardtype: "Item",
  rarity: "Diamond",
  description: "700 bonus to all stats to equipped Support.",
  effect: "props.equip(props.selectedCard)",
  image: "ShurelyasReverie.png",
  quantity: 0
)

lastWhisper = Allcard.create(
  name: "Last Whisper",
  cardtype: "Item",
  rarity: "Platinum",
  description: "500 bonus to all stats to equipped Marksman.",
  effect: "props.equip(props.selectedCard)",
  image: "LastWhisper.png",
  quantity: 0
)

infinityEdge = Allcard.create(
  name: "Infinity Edge",
  cardtype: "Item",
  rarity: "Diamond",
  description: "700 bonus to all stats to equipped Marksman.",
  effect: "props.equip(props.selectedCard)",
  image: "InfinityEdge.png",
  quantity: 0
)
