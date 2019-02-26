require "httparty"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# azir = Player.create(name: "Azir", image: "image/AzirPortrait.png", computer: true, background: "image/GarenBG.jpeg", preduel: "image/Garen.png")
# zed = Player.create(name: "Zed", image: "image/ZedPortrait.png", computer: true)
garen = Player.create(name: "Garen", image: "image/GarenPortrait.png", computer: true, background: "image/GarenBG.jpeg", preduel: "image/Garen.png", password_digest: "1")
lux = Player.create(name: "Lux", image: "image/LuxPortrait.png", computer: true, background: "image/LuxBG.jpeg", preduel: "image/Lux.png", password_digest: "2")
jarvan = Player.create(name: "Jarvan", image: "image/JarvanIVPortrait.png", computer: true, background: "image/JarvanIVBG.jpeg", preduel: "image/JarvanIV.png", password_digest: "3")
karma = Player.create(name: "Karma", image: "image/KarmaPortrait.png", computer: true, background: "image/KarmaBG.jpeg", preduel: "image/Karma.png", password_digest: "4")
shen = Player.create(name: "Shen", image: "image/ShenPortrait.png", computer: true, background: "image/ShenBG.jpeg", preduel: "image/Shen.png", password_digest: "5")
zed = Player.create(name: "Zed", image: "image/ZedPortrait.png", computer: true, background: "image/ZedBG.jpeg", preduel: "image/Zed.png", password_digest: "6")
darius = Player.create(name: "Darius", image: "image/DariusPortrait.png", computer: true, background: "image/DariusBG.jpeg", preduel: "image/Darius.png", password_digest: "7")
katarina = Player.create(name: "Katarina", image: "image/KatarinaPortrait.png", computer: true, background: "image/KatarinaBG.jpeg", preduel: "image/Katarina.png", password_digest: "8")
swain = Player.create(name: "Swain", image: "image/SwainPortrait.png", computer: true, background: "image/SwainBG.jpeg", preduel: "image/Swain.png", password_digest: "9")
missFortune = Player.create(name: "MissFortune", image: "image/MissFortunePortrait.png", computer: true, background: "image/MissFortuneBG.jpeg", preduel: "image/MissFortune.png", password_digest: "10")
illaoi = Player.create(name: "Illaoi", image: "image/IllaoiPortrait.png", computer: true, background: "image/IllaoiBG.jpeg", preduel: "image/Illaoi.png", password_digest: "11")
gangplank = Player.create(name: "Gangplank", image: "image/GangplankPortrait.png", computer: true, background: "image/GangplankBG.jpeg", preduel: "image/Gangplank.png", password_digest: "12")
yorick = Player.create(name: "Yorick", image: "image/YorickPortrait.png", computer: true, background: "image/YorickBG.jpeg", preduel: "image/Yorick.png", password_digest: "13")
thresh = Player.create(name: "Thresh", image: "image/ThreshPortrait.png", computer: true, background: "image/ThreshBG.jpeg", preduel: "image/Thresh.png", password_digest: "14")
elise = Player.create(name: "Elise", image: "image/ElisePortrait.png", computer: true, background: "image/EliseBG.jpeg", preduel: "image/Elise.png", password_digest: "15")
pantheon = Player.create(name: "Pantheon", image: "image/PantheonPortrait.png", computer: true, background: "image/PantheonBG.jpeg", preduel: "image/Pantheon.png", password_digest: "16")
soraka = Player.create(name: "Soraka", image: "image/SorakaPortrait.png", computer: true, background: "image/SorakaBG.jpeg", preduel: "image/Soraka.png", password_digest: "17")
leona = Player.create(name: "Leona", image: "image/LeonaPortrait.png", computer: true, background: "image/LeonaBG.jpeg", preduel: "image/Leona.png", password_digest: "18")
ashe = Player.create(name: "Ashe", image: "image/AshePortrait.png", computer: true, background: "image/AsheBG.jpeg", preduel: "image/Ashe.png", password_digest: "19")
sejuani = Player.create(name: "Sejuani", image: "image/SejuaniPortrait.png", computer: true, background: "image/SejuaniBG.jpeg", preduel: "image/Sejuani.png", password_digest: "20")
lissandra = Player.create(name: "Lissandra", image: "image/LissandraPortrait.png", computer: true, background: "image/LissandraBG.jpeg", preduel: "image/Lissandra.png", password_digest: "21")
renekton = Player.create(name: "Renekton", image: "image/RenektonPortrait.png", computer: true, background: "image/RenektonBG.jpeg", preduel: "image/Renekton.png", password_digest: "22")
nasus = Player.create(name: "Nasus", image: "image/NasusPortrait.png", computer: true, background: "image/NasusBG.jpeg", preduel: "image/Nasus.png", password_digest: "23")
ascendedXerath = Player.create(name: "AscendedXerath", image: "image/AscendedXerathPortrait.png", computer: true, background: "image/AscendedXerathBG.jpeg", preduel: "image/AscendedXerath.png", password_digest: "24")
xerath = Player.create(name: "Xerath", image: "image/XerathPortrait.png", computer: true, background: "image/XerathBG.jpeg", preduel: "image/Xerath.png", password_digest: "25")

garen_deck = Deck.create(name: "Garen Deck 1", player_id: garen.id)
lux_deck = Deck.create(name: "Lux Deck 1", player_id: lux.id)
jarvan_deck = Deck.create(name: "Jarvan Deck 1", player_id: jarvan.id)
karma_deck = Deck.create(name: "Karma Deck 1", player_id: karma.id)
shen_deck = Deck.create(name: "Shen Deck 1", player_id: shen.id)
zed_deck = Deck.create(name: "Zed Deck 1", player_id: zed.id)
darius_deck = Deck.create(name: "Darius Deck 1", player_id: darius.id)
katarina_deck = Deck.create(name: "Katarina Deck 1", player_id: katarina.id)
swain_deck = Deck.create(name: "Swain Deck 1", player_id: swain.id)
missFortune_deck = Deck.create(name: "Miss Fortune Deck 1", player_id: missFortune.id)
illaoi_deck = Deck.create(name: "Illaoi Deck 1", player_id: illaoi.id)
gangplank_deck = Deck.create(name: "Gangplank Deck 1", player_id: gangplank.id)
yorick_deck = Deck.create(name: "Yorick Deck 1", player_id: yorick.id)
thresh_deck = Deck.create(name: "Thresh Deck 1", player_id: thresh.id)
elise_deck = Deck.create(name: "Elise Deck 1", player_id: elise.id)
pantheon_deck = Deck.create(name: "Pantheon Deck 1", player_id: pantheon.id)
soraka_deck = Deck.create(name: "Soraka Deck 1", player_id: soraka.id)
leona_deck = Deck.create(name: "Leona Deck 1", player_id: leona.id)
ashe_deck = Deck.create(name: "Ashe Deck 1", player_id: ashe.id)
sejuani_deck = Deck.create(name: "Sejuani Deck 1", player_id: sejuani.id)
lissandra_deck = Deck.create(name: "Lissandra Deck 1", player_id: lissandra.id)
renekton_deck = Deck.create(name: "Renekton Deck 1", player_id: renekton.id)
nasus_deck = Deck.create(name: "Nasus Deck 1", player_id: nasus.id)
ascendedXerath_deck = Deck.create(name: "Ascended Xerath Deck 1", player_id: ascendedXerath.id)
xerath_deck = Deck.create(name: "Xerath Deck 1", player_id: xerath.id)



garen_card1 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Garen", title: "the Might of Demacia", role: "Fighter", rarity: "Bronze", attack: 700, magic: 100, defense: 700, image: "Garen.png")
garen_card2 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Garen", title: "the Might of Demacia", role: "Fighter", rarity: "Bronze", attack: 700, magic: 100, defense: 700, image: "Garen.png")
garen_card3 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Garen", title: "the Might of Demacia", role: "Fighter", rarity: "Bronze", attack: 700, magic: 100, defense: 700, image: "Garen.png")
garen_card4 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Sona", title: "Maven of the Strings", role: "Support", rarity: "Bronze", attack: 500, magic: 800, defense: 200, image: "Sona.png")
garen_card5 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Sona", title: "Maven of the Strings", role: "Support", rarity: "Bronze", attack: 500, magic: 800, defense: 200, image: "Sona.png")
garen_card6 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Sona", title: "Maven of the Strings", role: "Support", rarity: "Bronze", attack: 500, magic: 800, defense: 200, image: "Sona.png")
garen_card7 = Card.create(player_id: garen.id, cardtype: 'Champion',  name: "Jarvan IV", title: "the Exemplar of Demacia", role: "Tank", rarity: "Bronze", attack: 600, magic: 300, defense: 800, image: "JarvanIV.png")
garen_card8 = Card.create(player_id: garen.id, cardtype: 'Champion',  name: "Jarvan IV", title: "the Exemplar of Demacia", role: "Tank", rarity: "Bronze", attack: 600, magic: 300, defense: 800, image: "JarvanIV.png")
garen_card9 = Card.create(player_id: garen.id, cardtype: 'Champion',  name: "Jarvan IV", title: "the Exemplar of Demacia", role: "Tank", rarity: "Bronze", attack: 600, magic: 300, defense: 800, image: "JarvanIV.png")
garen_card10 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Lucian", title: "the Purifier", role: "Marksman", rarity: "Bronze", attack: 800, magic: 300, defense: 500, image: "Lucian.png")
garen_card11 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Lucian", title: "the Purifier", role: "Marksman", rarity: "Bronze", attack: 800, magic: 300, defense: 500, image: "Lucian.png")
garen_card12 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Lucian", title: "the Purifier", role: "Marksman", rarity: "Bronze", attack: 800, magic: 300, defense: 500, image: "Lucian.png")
garen_card13 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Poppy", title: "Keeper of the Hammer", role: "Tank", rarity: "Bronze", attack: 600, magic: 200, defense: 700, image: "Poppy.png")
garen_card14 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Poppy", title: "Keeper of the Hammer", role: "Tank", rarity: "Bronze", attack: 600, magic: 200, defense: 700, image: "Poppy.png")
garen_card15 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Poppy", title: "Keeper of the Hammer", role: "Tank", rarity: "Bronze", attack: 600, magic: 200, defense: 700, image: "Poppy.png")
garen_card16 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Shyvana", title: "the Half-Dragon", role: "Fighter", rarity: "Bronze", attack: 800, magic: 300, defense: 600, image: "Shyvana.png")
garen_card17 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Shyvana", title: "the Half-Dragon", role: "Fighter", rarity: "Bronze", attack: 800, magic: 300, defense: 600, image: "Shyvana.png")
garen_card18 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Shyvana", title: "the Half-Dragon", role: "Fighter", rarity: "Bronze", attack: 800, magic: 300, defense: 600, image: "Shyvana.png")
garen_card19 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Xin Zhao", title: "the Seneschal of Demacia", role: "Fighter", rarity: "Bronze", attack: 800, magic: 300, defense: 600, image: "XinZhao.png")
garen_card20 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Xin Zhao", title: "the Seneschal of Demacia", role: "Fighter", rarity: "Bronze", attack: 800, magic: 300, defense: 600, image: "XinZhao.png")
garen_card21 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Xin Zhao", title: "the Seneschal of Demacia", role: "Fighter", rarity: "Bronze", attack: 800, magic: 300, defense: 600, image: "XinZhao.png")
garen_card22 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Galio", title: "the Sentinel's Sorrow", role: "Tank", rarity: "Bronze", attack: 300, magic: 600, defense: 700, image: "Galio.png")
garen_card23 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Galio", title: "the Sentinel's Sorrow", role: "Tank", rarity: "Bronze", attack: 300, magic: 600, defense: 700, image: "Galio.png")
garen_card24 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Galio", title: "the Sentinel's Sorrow", role: "Tank", rarity: "Bronze", attack: 300, magic: 600, defense: 700, image: "Galio.png")
garen_card25 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Taric", title: "the Shield of Valoran", role: "Support", rarity: "Bronze", attack: 400, magic: 500, defense: 800, image: "Taric.png")
garen_card26 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Taric", title: "the Shield of Valoran", role: "Support", rarity: "Bronze", attack: 400, magic: 500, defense: 800, image: "Taric.png")
garen_card27 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Taric", title: "the Shield of Valoran", role: "Support", rarity: "Bronze", attack: 400, magic: 500, defense: 800, image: "Taric.png")
garen_card28 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Soraka", title: "the Starchild", role: "Support", rarity: "Bronze", attack: 200, magic: 700, defense: 500, image: "Soraka.png")
garen_card29 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Soraka", title: "the Starchild", role: "Support", rarity: "Bronze", attack: 200, magic: 700, defense: 500, image: "Soraka.png")
garen_card30 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Soraka", title: "the Starchild", role: "Support", rarity: "Bronze", attack: 200, magic: 700, defense: 500, image: "Soraka.png")
garen_card31 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Ashe", title: "the Frost Archer", role: "Marksman", rarity: "Bronze", attack: 700, magic: 200, defense: 300, image: "Ashe.png")
garen_card32 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Ashe", title: "the Frost Archer", role: "Marksman", rarity: "Bronze", attack: 700, magic: 200, defense: 300, image: "Ashe.png")
garen_card33 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Ashe", title: "the Frost Archer", role: "Marksman", rarity: "Bronze", attack: 700, magic: 200, defense: 300, image: "Ashe.png")
garen_card34 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Nami", title: "the Tidecaller", role: "Support", rarity: "Bronze", attack: 400, magic: 700, defense: 300, image: "Nami.png")
garen_card35 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Nami", title: "the Tidecaller", role: "Support", rarity: "Bronze", attack: 400, magic: 700, defense: 300, image: "Nami.png")
garen_card36 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Nami", title: "the Tidecaller", role: "Support", rarity: "Bronze", attack: 400, magic: 700, defense: 300, image: "Nami.png")
garen_card37 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Gragas", title: "the Rabble Rouser", role: "Fighter", rarity: "Bronze", attack: 400, magic: 600, defense: 700, image: "Gragas.png")
garen_card38 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Gragas", title: "the Rabble Rouser", role: "Fighter", rarity: "Bronze", attack: 400, magic: 600, defense: 700, image: "Gragas.png")
garen_card39 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Gragas", title: "the Rabble Rouser", role: "Fighter", rarity: "Bronze", attack: 400, magic: 600, defense: 700, image: "Gragas.png")

garen_card40 = Card.create(
  player_id: garen.id,
  name: "Demacian Justice",
  cardtype: "Ability",
  rarity: "Platinum",
  description: "Destroy the champion with the highest power on your opponent's side of the field",
  effect: "props.demacianJustice(props.selectedCard)",
  image: "DemacianJustice.png",
  quantity: 0
)

garen_deckcard1 = Deckcard.create(deck_id: garen_deck.id, card_id: garen_card1.id)
garen_deckcard2 = Deckcard.create(deck_id: garen_deck.id, card_id: garen_card2.id)
garen_deckcard3 = Deckcard.create(deck_id: garen_deck.id, card_id: garen_card3.id)
garen_deckcard4 = Deckcard.create(deck_id: garen_deck.id, card_id: garen_card4.id)
garen_deckcard5 = Deckcard.create(deck_id: garen_deck.id, card_id: garen_card5.id)
garen_deckcard6 = Deckcard.create(deck_id: garen_deck.id, card_id: garen_card6.id)
garen_deckcard7 = Deckcard.create(deck_id: garen_deck.id, card_id: garen_card7.id)
garen_deckcard8 = Deckcard.create(deck_id: garen_deck.id, card_id: garen_card8.id)
garen_deckcard9 = Deckcard.create(deck_id: garen_deck.id, card_id: garen_card9.id)
garen_deckcard10 = Deckcard.create(deck_id: garen_deck.id, card_id: garen_card10.id)
garen_deckcard11 = Deckcard.create(deck_id: garen_deck.id, card_id: garen_card11.id)
garen_deckcard12 = Deckcard.create(deck_id: garen_deck.id, card_id: garen_card12.id)
garen_deckcard13 = Deckcard.create(deck_id: garen_deck.id, card_id: garen_card13.id)
garen_deckcard14 = Deckcard.create(deck_id: garen_deck.id, card_id: garen_card14.id)
garen_deckcard15 = Deckcard.create(deck_id: garen_deck.id, card_id: garen_card15.id)
garen_deckcard16 = Deckcard.create(deck_id: garen_deck.id, card_id: garen_card16.id)
garen_deckcard17 = Deckcard.create(deck_id: garen_deck.id, card_id: garen_card17.id)
garen_deckcard18 = Deckcard.create(deck_id: garen_deck.id, card_id: garen_card18.id)
garen_deckcard19 = Deckcard.create(deck_id: garen_deck.id, card_id: garen_card19.id)
garen_deckcard20 = Deckcard.create(deck_id: garen_deck.id, card_id: garen_card20.id)
garen_deckcard21 = Deckcard.create(deck_id: garen_deck.id, card_id: garen_card21.id)
garen_deckcard22 = Deckcard.create(deck_id: garen_deck.id, card_id: garen_card22.id)
garen_deckcard23 = Deckcard.create(deck_id: garen_deck.id, card_id: garen_card23.id)
garen_deckcard24 = Deckcard.create(deck_id: garen_deck.id, card_id: garen_card24.id)
garen_deckcard25 = Deckcard.create(deck_id: garen_deck.id, card_id: garen_card25.id)
garen_deckcard26 = Deckcard.create(deck_id: garen_deck.id, card_id: garen_card26.id)
garen_deckcard27 = Deckcard.create(deck_id: garen_deck.id, card_id: garen_card27.id)
garen_deckcard28 = Deckcard.create(deck_id: garen_deck.id, card_id: garen_card28.id)
garen_deckcard29 = Deckcard.create(deck_id: garen_deck.id, card_id: garen_card29.id)
garen_deckcard30 = Deckcard.create(deck_id: garen_deck.id, card_id: garen_card30.id)
garen_deckcard31 = Deckcard.create(deck_id: garen_deck.id, card_id: garen_card31.id)
garen_deckcard32 = Deckcard.create(deck_id: garen_deck.id, card_id: garen_card32.id)
garen_deckcard33 = Deckcard.create(deck_id: garen_deck.id, card_id: garen_card33.id)
garen_deckcard34 = Deckcard.create(deck_id: garen_deck.id, card_id: garen_card34.id)
garen_deckcard35 = Deckcard.create(deck_id: garen_deck.id, card_id: garen_card35.id)
garen_deckcard36 = Deckcard.create(deck_id: garen_deck.id, card_id: garen_card36.id)
garen_deckcard37 = Deckcard.create(deck_id: garen_deck.id, card_id: garen_card37.id)
garen_deckcard38 = Deckcard.create(deck_id: garen_deck.id, card_id: garen_card38.id)
garen_deckcard39 = Deckcard.create(deck_id: garen_deck.id, card_id: garen_card39.id)
garen_deckcard40 = Deckcard.create(deck_id: garen_deck.id, card_id: garen_card40.id)

lux_card1 = Card.create(player_id: lux.id, cardtype: 'Champion', name: "Garen", title: "the Might of Demacia", role: "Fighter", rarity: "Bronze", attack: 700, magic: 100, defense: 700, image: "Garen.png")
lux_card2 = Card.create(player_id: lux.id, cardtype: 'Champion', name: "Garen", title: "the Might of Demacia", role: "Fighter", rarity: "Bronze", attack: 700, magic: 100, defense: 700, image: "Garen.png")
lux_card3 = Card.create(player_id: lux.id, cardtype: 'Champion', name: "Garen", title: "the Might of Demacia", role: "Fighter", rarity: "Bronze", attack: 700, magic: 100, defense: 700, image: "Garen.png")
lux_card4 = Card.create(player_id: lux.id, cardtype: 'Champion', name: "Sona", title: "Maven of the Strings", role: "Support", rarity: "Bronze", attack: 500, magic: 800, defense: 200, image: "Sona.png")
lux_card5 = Card.create(player_id: lux.id, cardtype: 'Champion', name: "Sona", title: "Maven of the Strings", role: "Support", rarity: "Bronze", attack: 500, magic: 800, defense: 200, image: "Sona.png")
lux_card6 = Card.create(player_id: lux.id, cardtype: 'Champion', name: "Sona", title: "Maven of the Strings", role: "Support", rarity: "Bronze", attack: 500, magic: 800, defense: 200, image: "Sona.png")
lux_card7 = Card.create(player_id: lux.id, cardtype: 'Champion',  name: "Jarvan IV", title: "the Exemplar of Demacia", role: "Tank", rarity: "Bronze", attack: 600, magic: 300, defense: 800, image: "JarvanIV.png")
lux_card8 = Card.create(player_id: lux.id, cardtype: 'Champion',  name: "Jarvan IV", title: "the Exemplar of Demacia", role: "Tank", rarity: "Bronze", attack: 600, magic: 300, defense: 800, image: "JarvanIV.png")
lux_card9 = Card.create(player_id: lux.id, cardtype: 'Champion',  name: "Jarvan IV", title: "the Exemplar of Demacia", role: "Tank", rarity: "Bronze", attack: 600, magic: 300, defense: 800, image: "JarvanIV.png")
lux_card10 = Card.create(player_id: lux.id, cardtype: 'Champion', name: "Lucian", title: "the Purifier", role: "Marksman", rarity: "Bronze", attack: 800, magic: 300, defense: 500, image: "Lucian.png")
lux_card11 = Card.create(player_id: lux.id, cardtype: 'Champion', name: "Lucian", title: "the Purifier", role: "Marksman", rarity: "Bronze", attack: 800, magic: 300, defense: 500, image: "Lucian.png")
lux_card12 = Card.create(player_id: lux.id, cardtype: 'Champion', name: "Lucian", title: "the Purifier", role: "Marksman", rarity: "Bronze", attack: 800, magic: 300, defense: 500, image: "Lucian.png")
lux_card13 = Card.create(player_id: lux.id, cardtype: 'Champion', name: "Poppy", title: "Keeper of the Hammer", role: "Tank", rarity: "Bronze", attack: 600, magic: 200, defense: 700, image: "Poppy.png")
lux_card14 = Card.create(player_id: lux.id, cardtype: 'Champion', name: "Poppy", title: "Keeper of the Hammer", role: "Tank", rarity: "Bronze", attack: 600, magic: 200, defense: 700, image: "Poppy.png")
lux_card15 = Card.create(player_id: lux.id, cardtype: 'Champion', name: "Poppy", title: "Keeper of the Hammer", role: "Tank", rarity: "Bronze", attack: 600, magic: 200, defense: 700, image: "Poppy.png")
lux_card16 = Card.create(player_id: lux.id, cardtype: 'Champion', name: "Shyvana", title: "the Half-Dragon", role: "Fighter", rarity: "Bronze", attack: 800, magic: 300, defense: 600, image: "Shyvana.png")
lux_card17 = Card.create(player_id: lux.id, cardtype: 'Champion', name: "Shyvana", title: "the Half-Dragon", role: "Fighter", rarity: "Bronze", attack: 800, magic: 300, defense: 600, image: "Shyvana.png")
lux_card18 = Card.create(player_id: lux.id, cardtype: 'Champion', name: "Shyvana", title: "the Half-Dragon", role: "Fighter", rarity: "Bronze", attack: 800, magic: 300, defense: 600, image: "Shyvana.png")
lux_card19 = Card.create(player_id: lux.id, cardtype: 'Champion', name: "Xin Zhao", title: "the Seneschal of Demacia", role: "Fighter", rarity: "Bronze", attack: 800, magic: 300, defense: 600, image: "XinZhao.png")
lux_card20 = Card.create(player_id: lux.id, cardtype: 'Champion', name: "Xin Zhao", title: "the Seneschal of Demacia", role: "Fighter", rarity: "Bronze", attack: 800, magic: 300, defense: 600, image: "XinZhao.png")
lux_card21 = Card.create(player_id: lux.id, cardtype: 'Champion', name: "Xin Zhao", title: "the Seneschal of Demacia", role: "Fighter", rarity: "Bronze", attack: 800, magic: 300, defense: 600, image: "XinZhao.png")
lux_card22 = Card.create(player_id: lux.id, cardtype: 'Champion', name: "Galio", title: "the Sentinel's Sorrow", role: "Tank", rarity: "Bronze", attack: 300, magic: 600, defense: 700, image: "Galio.png")
lux_card23 = Card.create(player_id: lux.id, cardtype: 'Champion', name: "Galio", title: "the Sentinel's Sorrow", role: "Tank", rarity: "Bronze", attack: 300, magic: 600, defense: 700, image: "Galio.png")
lux_card24 = Card.create(player_id: lux.id, cardtype: 'Champion', name: "Galio", title: "the Sentinel's Sorrow", role: "Tank", rarity: "Bronze", attack: 300, magic: 600, defense: 700, image: "Galio.png")
lux_card25 = Card.create(player_id: lux.id, cardtype: 'Champion', name: "Taric", title: "the Shield of Valoran", role: "Support", rarity: "Bronze", attack: 400, magic: 500, defense: 800, image: "Taric.png")
lux_card26 = Card.create(player_id: lux.id, cardtype: 'Champion', name: "Taric", title: "the Shield of Valoran", role: "Support", rarity: "Bronze", attack: 400, magic: 500, defense: 800, image: "Taric.png")
lux_card27 = Card.create(player_id: lux.id, cardtype: 'Champion', name: "Taric", title: "the Shield of Valoran", role: "Support", rarity: "Bronze", attack: 400, magic: 500, defense: 800, image: "Taric.png")
lux_card28 = Card.create(player_id: lux.id, cardtype: 'Champion', name: "Soraka", title: "the Starchild", role: "Support", rarity: "Bronze", attack: 200, magic: 700, defense: 500, image: "Soraka.png")
lux_card29 = Card.create(player_id: lux.id, cardtype: 'Champion', name: "Soraka", title: "the Starchild", role: "Support", rarity: "Bronze", attack: 200, magic: 700, defense: 500, image: "Soraka.png")
lux_card30 = Card.create(player_id: lux.id, cardtype: 'Champion', name: "Soraka", title: "the Starchild", role: "Support", rarity: "Bronze", attack: 200, magic: 700, defense: 500, image: "Soraka.png")
lux_card31 = Card.create(player_id: lux.id, cardtype: 'Champion', name: "Lux", title: "the Lady of Luminosity", role: "Mage", rarity: "Bronze", attack: 200, magic: 900, defense: 400, image: "Lux.png")
lux_card32 = Card.create(player_id: lux.id, cardtype: 'Champion', name: "Lux", title: "the Lady of Luminosity", role: "Mage", rarity: "Bronze", attack: 200, magic: 900, defense: 400, image: "Lux.png")
lux_card33 = Card.create(player_id: lux.id, cardtype: 'Champion', name: "Lux", title: "the Lady of Luminosity", role: "Mage", rarity: "Bronze", attack: 200, magic: 900, defense: 400, image: "Lux.png")
lux_card34 = Card.create(player_id: lux.id, cardtype: 'Champion', name: "Nami", title: "the Tidecaller", role: "Support", rarity: "Bronze", attack: 400, magic: 700, defense: 300, image: "Nami.png")
lux_card35 = Card.create(player_id: lux.id, cardtype: 'Champion', name: "Nami", title: "the Tidecaller", role: "Support", rarity: "Bronze", attack: 400, magic: 700, defense: 300, image: "Nami.png")
lux_card36 = Card.create(player_id: lux.id, cardtype: 'Champion', name: "Nami", title: "the Tidecaller", role: "Support", rarity: "Bronze", attack: 400, magic: 700, defense: 300, image: "Nami.png")
lux_card37 = Card.create(player_id: lux.id, cardtype: 'Champion', name: "Morgana", title: "Fallen Angel", role: "Mage", rarity: "Bronze", attack: 100, magic: 800, defense: 600, image: "Morgana.png")
lux_card38 = Card.create(player_id: lux.id, cardtype: 'Champion', name: "Morgana", title: "Fallen Angel", role: "Mage", rarity: "Bronze", attack: 100, magic: 800, defense: 600, image: "Morgana.png")
lux_card39 = Card.create(player_id: lux.id, cardtype: 'Champion', name: "Morgana", title: "Fallen Angel", role: "Mage", rarity: "Bronze", attack: 100, magic: 800, defense: 600, image: "Morgana.png")

lux_card40 = Card.create(
  player_id: lux.id,
  name: "Demacian Justice",
  cardtype: "Ability",
  rarity: "Platinum",
  description: "Destroy the champion with the highest power on your opponent's side of the field",
  effect: "props.demacianJustice(props.selectedCard)",
  image: "DemacianJustice.png",
  quantity: 0
)

lux_deckcard1 = Deckcard.create(deck_id: lux_deck.id, card_id: lux_card1.id)
lux_deckcard2 = Deckcard.create(deck_id: lux_deck.id, card_id: lux_card2.id)
lux_deckcard3 = Deckcard.create(deck_id: lux_deck.id, card_id: lux_card3.id)
lux_deckcard4 = Deckcard.create(deck_id: lux_deck.id, card_id: lux_card4.id)
lux_deckcard5 = Deckcard.create(deck_id: lux_deck.id, card_id: lux_card5.id)
lux_deckcard6 = Deckcard.create(deck_id: lux_deck.id, card_id: lux_card6.id)
lux_deckcard7 = Deckcard.create(deck_id: lux_deck.id, card_id: lux_card7.id)
lux_deckcard8 = Deckcard.create(deck_id: lux_deck.id, card_id: lux_card8.id)
lux_deckcard9 = Deckcard.create(deck_id: lux_deck.id, card_id: lux_card9.id)
lux_deckcard10 = Deckcard.create(deck_id: lux_deck.id, card_id: lux_card10.id)
lux_deckcard11 = Deckcard.create(deck_id: lux_deck.id, card_id: lux_card11.id)
lux_deckcard12 = Deckcard.create(deck_id: lux_deck.id, card_id: lux_card12.id)
lux_deckcard13 = Deckcard.create(deck_id: lux_deck.id, card_id: lux_card13.id)
lux_deckcard14 = Deckcard.create(deck_id: lux_deck.id, card_id: lux_card14.id)
lux_deckcard15 = Deckcard.create(deck_id: lux_deck.id, card_id: lux_card15.id)
lux_deckcard16 = Deckcard.create(deck_id: lux_deck.id, card_id: lux_card16.id)
lux_deckcard17 = Deckcard.create(deck_id: lux_deck.id, card_id: lux_card17.id)
lux_deckcard18 = Deckcard.create(deck_id: lux_deck.id, card_id: lux_card18.id)
lux_deckcard19 = Deckcard.create(deck_id: lux_deck.id, card_id: lux_card19.id)
lux_deckcard20 = Deckcard.create(deck_id: lux_deck.id, card_id: lux_card20.id)
lux_deckcard21 = Deckcard.create(deck_id: lux_deck.id, card_id: lux_card21.id)
lux_deckcard22 = Deckcard.create(deck_id: lux_deck.id, card_id: lux_card22.id)
lux_deckcard23 = Deckcard.create(deck_id: lux_deck.id, card_id: lux_card23.id)
lux_deckcard24 = Deckcard.create(deck_id: lux_deck.id, card_id: lux_card24.id)
lux_deckcard25 = Deckcard.create(deck_id: lux_deck.id, card_id: lux_card25.id)
lux_deckcard26 = Deckcard.create(deck_id: lux_deck.id, card_id: lux_card26.id)
lux_deckcard27 = Deckcard.create(deck_id: lux_deck.id, card_id: lux_card27.id)
lux_deckcard28 = Deckcard.create(deck_id: lux_deck.id, card_id: lux_card28.id)
lux_deckcard29 = Deckcard.create(deck_id: lux_deck.id, card_id: lux_card29.id)
lux_deckcard30 = Deckcard.create(deck_id: lux_deck.id, card_id: lux_card30.id)
lux_deckcard31 = Deckcard.create(deck_id: lux_deck.id, card_id: lux_card31.id)
lux_deckcard32 = Deckcard.create(deck_id: lux_deck.id, card_id: lux_card32.id)
lux_deckcard33 = Deckcard.create(deck_id: lux_deck.id, card_id: lux_card33.id)
lux_deckcard34 = Deckcard.create(deck_id: lux_deck.id, card_id: lux_card34.id)
lux_deckcard35 = Deckcard.create(deck_id: lux_deck.id, card_id: lux_card35.id)
lux_deckcard36 = Deckcard.create(deck_id: lux_deck.id, card_id: lux_card36.id)
lux_deckcard37 = Deckcard.create(deck_id: lux_deck.id, card_id: lux_card37.id)
lux_deckcard38 = Deckcard.create(deck_id: lux_deck.id, card_id: lux_card38.id)
lux_deckcard39 = Deckcard.create(deck_id: lux_deck.id, card_id: lux_card39.id)
lux_deckcard40 = Deckcard.create(deck_id: lux_deck.id, card_id: lux_card40.id)


jarvan_card1 = Card.create(player_id: jarvan.id, cardtype: 'Champion', name: "Garen", title: "the Might of Demacia", role: "Fighter", rarity: "Bronze", attack: 700, magic: 100, defense: 700, image: "Garen.png")
jarvan_card2 = Card.create(player_id: jarvan.id, cardtype: 'Champion', name: "Garen", title: "the Might of Demacia", role: "Fighter", rarity: "Bronze", attack: 700, magic: 100, defense: 700, image: "Garen.png")
jarvan_card3 = Card.create(player_id: jarvan.id, cardtype: 'Champion', name: "Garen", title: "the Might of Demacia", role: "Fighter", rarity: "Bronze", attack: 700, magic: 100, defense: 700, image: "Garen.png")
jarvan_card4 = Card.create(player_id: jarvan.id, cardtype: 'Champion', name: "Sona", title: "Maven of the Strings", role: "Support", rarity: "Bronze", attack: 500, magic: 800, defense: 200, image: "Sona.png")
jarvan_card5 = Card.create(player_id: jarvan.id, cardtype: 'Champion', name: "Sona", title: "Maven of the Strings", role: "Support", rarity: "Bronze", attack: 500, magic: 800, defense: 200, image: "Sona.png")
jarvan_card6 = Card.create(player_id: jarvan.id, cardtype: 'Champion', name: "Sona", title: "Maven of the Strings", role: "Support", rarity: "Bronze", attack: 500, magic: 800, defense: 200, image: "Sona.png")
jarvan_card7 = Card.create(player_id: jarvan.id, cardtype: 'Champion',  name: "Jarvan IV", title: "the Exemplar of Demacia", role: "Tank", rarity: "Bronze", attack: 600, magic: 300, defense: 800, image: "JarvanIV.png")
jarvan_card8 = Card.create(player_id: jarvan.id, cardtype: 'Champion',  name: "Jarvan IV", title: "the Exemplar of Demacia", role: "Tank", rarity: "Bronze", attack: 600, magic: 300, defense: 800, image: "JarvanIV.png")
jarvan_card9 = Card.create(player_id: jarvan.id, cardtype: 'Champion',  name: "Jarvan IV", title: "the Exemplar of Demacia", role: "Tank", rarity: "Bronze", attack: 600, magic: 300, defense: 800, image: "JarvanIV.png")
jarvan_card10 = Card.create(player_id: jarvan.id, cardtype: 'Champion', name: "Lucian", title: "the Purifier", role: "Marksman", rarity: "Bronze", attack: 800, magic: 300, defense: 500, image: "Lucian.png")
jarvan_card11 = Card.create(player_id: jarvan.id, cardtype: 'Champion', name: "Lucian", title: "the Purifier", role: "Marksman", rarity: "Bronze", attack: 800, magic: 300, defense: 500, image: "Lucian.png")
jarvan_card12 = Card.create(player_id: jarvan.id, cardtype: 'Champion', name: "Lucian", title: "the Purifier", role: "Marksman", rarity: "Bronze", attack: 800, magic: 300, defense: 500, image: "Lucian.png")
jarvan_card13 = Card.create(player_id: jarvan.id, cardtype: 'Champion', name: "Ezreal", title: "the Prodigal Explorer", role: "Marksman", rarity: "Silver", attack: 1050, magic: 900, defense: 300, image: "Poppy.png")
jarvan_card14 = Card.create(player_id: jarvan.id, cardtype: 'Champion', name: "Ezreal", title: "the Prodigal Explorer", role: "Marksman", rarity: "Silver", attack: 1050, magic: 900, defense: 300, image: "Poppy.png")
jarvan_card15 = Card.create(player_id: jarvan.id, cardtype: 'Champion', name: "Ezreal", title: "the Prodigal Explorer", role: "Marksman", rarity: "Silver", attack: 1050, magic: 900, defense: 300, image: "Poppy.png")
jarvan_card16 = Card.create(player_id: jarvan.id, cardtype: 'Champion', name: "Shyvana", title: "the Half-Dragon", role: "Fighter", rarity: "Bronze", attack: 800, magic: 300, defense: 600, image: "Shyvana.png")
jarvan_card17 = Card.create(player_id: jarvan.id, cardtype: 'Champion', name: "Shyvana", title: "the Half-Dragon", role: "Fighter", rarity: "Bronze", attack: 800, magic: 300, defense: 600, image: "Shyvana.png")
jarvan_card18 = Card.create(player_id: jarvan.id, cardtype: 'Champion', name: "Shyvana", title: "the Half-Dragon", role: "Fighter", rarity: "Bronze", attack: 800, magic: 300, defense: 600, image: "Shyvana.png")
jarvan_card19 = Card.create(player_id: jarvan.id, cardtype: 'Champion', name: "Xin Zhao", title: "the Seneschal of Demacia", role: "Fighter", rarity: "Bronze", attack: 800, magic: 300, defense: 600, image: "XinZhao.png")
jarvan_card20 = Card.create(player_id: jarvan.id, cardtype: 'Champion', name: "Xin Zhao", title: "the Seneschal of Demacia", role: "Fighter", rarity: "Bronze", attack: 800, magic: 300, defense: 600, image: "XinZhao.png")
jarvan_card21 = Card.create(player_id: jarvan.id, cardtype: 'Champion', name: "Xin Zhao", title: "the Seneschal of Demacia", role: "Fighter", rarity: "Bronze", attack: 800, magic: 300, defense: 600, image: "XinZhao.png")
jarvan_card22 = Card.create(player_id: jarvan.id, cardtype: 'Champion', name: "Galio", title: "the Sentinel's Sorrow", role: "Tank", rarity: "Bronze", attack: 300, magic: 600, defense: 700, image: "Galio.png")
jarvan_card23 = Card.create(player_id: jarvan.id, cardtype: 'Champion', name: "Galio", title: "the Sentinel's Sorrow", role: "Tank", rarity: "Bronze", attack: 300, magic: 600, defense: 700, image: "Galio.png")
jarvan_card24 = Card.create(player_id: jarvan.id, cardtype: 'Champion', name: "Galio", title: "the Sentinel's Sorrow", role: "Tank", rarity: "Bronze", attack: 300, magic: 600, defense: 700, image: "Galio.png")
jarvan_card25 = Card.create(player_id: jarvan.id, cardtype: 'Champion', name: "Morgana", title: "Fallen Angel", role: "Mage", rarity: "Bronze", attack: 100, magic: 800, defense: 600, image: "Morgana.png")
jarvan_card26 = Card.create(player_id: jarvan.id, cardtype: 'Champion', name: "Morgana", title: "Fallen Angel", role: "Mage", rarity: "Bronze", attack: 100, magic: 800, defense: 600, image: "Morgana.png")
jarvan_card27 = Card.create(player_id: jarvan.id, cardtype: 'Champion', name: "Morgana", title: "Fallen Angel", role: "Mage", rarity: "Bronze", attack: 100, magic: 800, defense: 600, image: "Morgana.png")
jarvan_card28 = Card.create(player_id: jarvan.id, cardtype: 'Champion', name: "Fiora", title: "the Grand Duelist", role: "Fighter", rarity: "Bronze", attack: 1000, magic: 200, defense: 400, image: "Fiora.png")
jarvan_card29 = Card.create(player_id: jarvan.id, cardtype: 'Champion', name: "Fiora", title: "the Grand Duelist", role: "Fighter", rarity: "Bronze", attack: 1000, magic: 200, defense: 400, image: "Fiora.png")
jarvan_card30 = Card.create(player_id: jarvan.id, cardtype: 'Champion', name: "Fiora", title: "the Grand Duelist", role: "Fighter", rarity: "Bronze", attack: 1000, magic: 200, defense: 400, image: "Fiora.png")
jarvan_card31 = Card.create(player_id: jarvan.id, cardtype: 'Champion', name: "Lux", title: "the Lady of Luminosity", role: "Mage", rarity: "Bronze", attack: 200, magic: 900, defense: 400, image: "Lux.png")
jarvan_card32 = Card.create(player_id: jarvan.id, cardtype: 'Champion', name: "Lux", title: "the Lady of Luminosity", role: "Mage", rarity: "Bronze", attack: 200, magic: 900, defense: 400, image: "Lux.png")
jarvan_card33 = Card.create(player_id: jarvan.id, cardtype: 'Champion', name: "Lux", title: "the Lady of Luminosity", role: "Mage", rarity: "Bronze", attack: 200, magic: 900, defense: 400, image: "Lux.png")
jarvan_card34 = Card.create(player_id: jarvan.id, cardtype: 'Champion', name: "Nami", title: "the Tidecaller", role: "Support", rarity: "Bronze", attack: 400, magic: 700, defense: 300, image: "Nami.png")
jarvan_card35 = Card.create(player_id: jarvan.id, cardtype: 'Champion', name: "Nami", title: "the Tidecaller", role: "Support", rarity: "Bronze", attack: 400, magic: 700, defense: 300, image: "Nami.png")
jarvan_card36 = Card.create(player_id: jarvan.id, cardtype: 'Champion', name: "Nami", title: "the Tidecaller", role: "Support", rarity: "Bronze", attack: 400, magic: 700, defense: 300, image: "Nami.png")
jarvan_card37 = Card.create(player_id: jarvan.id, cardtype: 'Champion', name: "Soraka", title: "the Starchild", role: "Support", rarity: "Bronze", attack: 200, magic: 700, defense: 500, image: "Soraka.png")
jarvan_card38 = Card.create(player_id: jarvan.id, cardtype: 'Champion', name: "Soraka", title: "the Starchild", role: "Support", rarity: "Bronze", attack: 200, magic: 700, defense: 500, image: "Soraka.png")
jarvan_card39 = Card.create(player_id: jarvan.id, cardtype: 'Champion', name: "Soraka", title: "the Starchild", role: "Support", rarity: "Bronze", attack: 200, magic: 700, defense: 500, image: "Soraka.png")

jarvan_card40 = Card.create(
  player_id: jarvan.id,
  name: "Demacian Justice",
  cardtype: "Ability",
  rarity: "Platinum",
  description: "Destroy the champion with the highest power on your opponent's side of the field",
  effect: "props.demacianJustice(props.selectedCard)",
  image: "DemacianJustice.png",
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
jarvan_deckcard16 = Deckcard.create(deck_id: jarvan_deck.id, card_id: jarvan_card16.id)
jarvan_deckcard17 = Deckcard.create(deck_id: jarvan_deck.id, card_id: jarvan_card17.id)
jarvan_deckcard18 = Deckcard.create(deck_id: jarvan_deck.id, card_id: jarvan_card18.id)
jarvan_deckcard19 = Deckcard.create(deck_id: jarvan_deck.id, card_id: jarvan_card19.id)
jarvan_deckcard20 = Deckcard.create(deck_id: jarvan_deck.id, card_id: jarvan_card20.id)
jarvan_deckcard21 = Deckcard.create(deck_id: jarvan_deck.id, card_id: jarvan_card21.id)
jarvan_deckcard22 = Deckcard.create(deck_id: jarvan_deck.id, card_id: jarvan_card22.id)
jarvan_deckcard23 = Deckcard.create(deck_id: jarvan_deck.id, card_id: jarvan_card23.id)
jarvan_deckcard24 = Deckcard.create(deck_id: jarvan_deck.id, card_id: jarvan_card24.id)
jarvan_deckcard25 = Deckcard.create(deck_id: jarvan_deck.id, card_id: jarvan_card25.id)
jarvan_deckcard26 = Deckcard.create(deck_id: jarvan_deck.id, card_id: jarvan_card26.id)
jarvan_deckcard27 = Deckcard.create(deck_id: jarvan_deck.id, card_id: jarvan_card27.id)
jarvan_deckcard28 = Deckcard.create(deck_id: jarvan_deck.id, card_id: jarvan_card28.id)
jarvan_deckcard29 = Deckcard.create(deck_id: jarvan_deck.id, card_id: jarvan_card29.id)
jarvan_deckcard30 = Deckcard.create(deck_id: jarvan_deck.id, card_id: jarvan_card30.id)
jarvan_deckcard31 = Deckcard.create(deck_id: jarvan_deck.id, card_id: jarvan_card31.id)
jarvan_deckcard32 = Deckcard.create(deck_id: jarvan_deck.id, card_id: jarvan_card32.id)
jarvan_deckcard33 = Deckcard.create(deck_id: jarvan_deck.id, card_id: jarvan_card33.id)
jarvan_deckcard34 = Deckcard.create(deck_id: jarvan_deck.id, card_id: jarvan_card34.id)
jarvan_deckcard35 = Deckcard.create(deck_id: jarvan_deck.id, card_id: jarvan_card35.id)
jarvan_deckcard36 = Deckcard.create(deck_id: jarvan_deck.id, card_id: jarvan_card36.id)
jarvan_deckcard37 = Deckcard.create(deck_id: jarvan_deck.id, card_id: jarvan_card37.id)
jarvan_deckcard38 = Deckcard.create(deck_id: jarvan_deck.id, card_id: jarvan_card38.id)
jarvan_deckcard39 = Deckcard.create(deck_id: jarvan_deck.id, card_id: jarvan_card39.id)
jarvan_deckcard40 = Deckcard.create(deck_id: jarvan_deck.id, card_id: jarvan_card40.id)


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
