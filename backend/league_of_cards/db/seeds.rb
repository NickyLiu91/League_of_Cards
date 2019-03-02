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
xerath = Player.create(name: "Xerath", image: "image/XerathPortrait.png", computer: true, background: "image/XerathBG.jpeg", preduel: "image/Xerath.png", password_digest: "24")

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
garen_card40 = Card.create(player_id: garen.id, cardtype: 'Champion', name: "Blitzcrank", title: "the Great Steam Golem", role: "Tank", rarity: "Bronze", attack: 400, magic: 500, defense: 800, image: "Blitzcrank.png")


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
lux_card40 = Card.create(player_id: lux.id, cardtype: 'Champion', name: "Ashe", title: "the Frost Archer", role: "Marksman", rarity: "Bronze", attack: 700, magic: 200, defense: 300, image: "Ashe.png")

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
jarvan_card13 = Card.create(player_id: jarvan.id, cardtype: 'Champion', name: "Ezreal", title: "the Prodigal Explorer", role: "Marksman", rarity: "Silver", attack: 1050, magic: 900, defense: 300, image: "Ezreal.png")
jarvan_card14 = Card.create(player_id: jarvan.id, cardtype: 'Champion', name: "Ezreal", title: "the Prodigal Explorer", role: "Marksman", rarity: "Silver", attack: 1050, magic: 900, defense: 300, image: "Ezreal.png")
jarvan_card15 = Card.create(player_id: jarvan.id, cardtype: 'Champion', name: "Ezreal", title: "the Prodigal Explorer", role: "Marksman", rarity: "Silver", attack: 1050, magic: 900, defense: 300, image: "Ezreal.png")
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
jarvan_card40 = Card.create(player_id: jarvan.id, cardtype: 'Champion', name: "Ashe", title: "the Frost Archer", role: "Marksman", rarity: "Bronze", attack: 700, magic: 200, defense: 300, image: "Ashe.png")


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

karma_card1 = Card.create(player_id: karma.id, cardtype: 'Champion', name: "Karma", title: "the Enlightened one", role: "Mage", rarity: "Bronze", attack: 100, magic: 800, defense: 700, image: "Karma.png")
karma_card2 = Card.create(player_id: karma.id, cardtype: 'Champion', name: "Karma", title: "the Enlightened one", role: "Mage", rarity: "Bronze", attack: 100, magic: 800, defense: 700, image: "Karma.png")
karma_card3 = Card.create(player_id: karma.id, cardtype: 'Champion', name: "Karma", title: "the Enlightened one", role: "Mage", rarity: "Bronze", attack: 100, magic: 800, defense: 700, image: "Karma.png")
karma_card4 = Card.create(player_id: karma.id, cardtype: 'Champion', name: "Ivern", title: "the Green Father", role: "Support", rarity: "Silver", attack: 450, magic: 1050, defense: 750, image: "Ivern.png")
karma_card5 = Card.create(player_id: karma.id, cardtype: 'Champion', name: "Ivern", title: "the Green Father", role: "Support", rarity: "Silver", attack: 450, magic: 1050, defense: 750, image: "Ivern.png")
karma_card6 = Card.create(player_id: karma.id, cardtype: 'Champion', name: "Ivern", title: "the Green Father", role: "Support", rarity: "Silver", attack: 450, magic: 1050, defense: 750, image: "Ivern.png")
karma_card7 = Card.create(player_id: karma.id, cardtype: 'Champion', name: "Lux", title: "the Lady of Luminosity", role: "Mage", rarity: "Bronze", attack: 200, magic: 900, defense: 400, image: "Lux.png")
karma_card8 = Card.create(player_id: karma.id, cardtype: 'Champion', name: "Lux", title: "the Lady of Luminosity", role: "Mage", rarity: "Bronze", attack: 200, magic: 900, defense: 400, image: "Lux.png")
karma_card9 = Card.create(player_id: karma.id, cardtype: 'Champion', name: "Lux", title: "the Lady of Luminosity", role: "Mage", rarity: "Bronze", attack: 200, magic: 900, defense: 400, image: "Lux.png")
karma_card10 = Card.create(player_id: karma.id, cardtype: 'Champion', name: "Ezreal", title: "the Prodigal Explorer", role: "Marksman", rarity: "Silver", attack: 1050, magic: 900, defense: 300, image: "Ezreal.png")
karma_card11 = Card.create(player_id: karma.id, cardtype: 'Champion', name: "Ezreal", title: "the Prodigal Explorer", role: "Marksman", rarity: "Silver", attack: 1050, magic: 900, defense: 300, image: "Ezreal.png")
karma_card12 = Card.create(player_id: karma.id, cardtype: 'Champion', name: "Ezreal", title: "the Prodigal Explorer", role: "Marksman", rarity: "Silver", attack: 1050, magic: 900, defense: 300, image: "Ezreal.png")
karma_card13 = Card.create(player_id: karma.id, cardtype: 'Champion', name: "Lee Sin", title: "the Blind Monk", role: "Fighter", rarity: "Bronze", attack: 800, magic: 300, defense: 500, image: "LeeSin.png")
karma_card14 = Card.create(player_id: karma.id, cardtype: 'Champion', name: "Lee Sin", title: "the Blind Monk", role: "Fighter", rarity: "Bronze", attack: 800, magic: 300, defense: 500, image: "LeeSin.png")
karma_card15 = Card.create(player_id: karma.id, cardtype: 'Champion', name: "Lee Sin", title: "the Blind Monk", role: "Fighter", rarity: "Bronze", attack: 800, magic: 300, defense: 500, image: "LeeSin.png")
karma_card16 = Card.create(player_id: karma.id, cardtype: 'Champion', name: "Master Yi", title: "the Wuju Bladesman", role: "Assassin", rarity: "Bronze", attack: 1000, magic: 200, defense: 400, image: "MasterYi.png")
karma_card17 = Card.create(player_id: karma.id, cardtype: 'Champion', name: "Master Yi", title: "the Wuju Bladesman", role: "Assassin", rarity: "Bronze", attack: 1000, magic: 200, defense: 400, image: "MasterYi.png")
karma_card18 = Card.create(player_id: karma.id, cardtype: 'Champion', name: "Master Yi", title: "the Wuju Bladesman", role: "Assassin", rarity: "Bronze", attack: 1000, magic: 200, defense: 400, image: "MasterYi.png")
karma_card19 = Card.create(player_id: karma.id, cardtype: 'Champion', name: "Sona", title: "Maven of the Strings", role: "Support", rarity: "Bronze", attack: 500, magic: 800, defense: 200, image: "Sona.png")
karma_card20 = Card.create(player_id: karma.id, cardtype: 'Champion', name: "Sona", title: "Maven of the Strings", role: "Support", rarity: "Bronze", attack: 500, magic: 800, defense: 200, image: "Sona.png")
karma_card21 = Card.create(player_id: karma.id, cardtype: 'Champion', name: "Sona", title: "Maven of the Strings", role: "Support", rarity: "Bronze", attack: 500, magic: 800, defense: 200, image: "Sona.png")
karma_card22 = Card.create(player_id: karma.id, cardtype: 'Champion', name: "Jhin", title: "the Virtuoso", role: "Marksman", rarity: "Bronze", attack: 1000, magic: 600, defense: 200, image: "Jhin.png")
karma_card23 = Card.create(player_id: karma.id, cardtype: 'Champion', name: "Jhin", title: "the Virtuoso", role: "Marksman", rarity: "Bronze", attack: 1000, magic: 600, defense: 200, image: "Jhin.png")
karma_card24 = Card.create(player_id: karma.id, cardtype: 'Champion', name: "Jhin", title: "the Virtuoso", role: "Marksman", rarity: "Bronze", attack: 1000, magic: 600, defense: 200, image: "Jhin.png")
karma_card25 = Card.create(player_id: karma.id, cardtype: 'Champion', name: "Wukong", title: "the Monkey King", role: "Fighter", rarity: "Bronze", attack: 800, magic: 200, defense: 500, image: "Wukong.png")
karma_card26 = Card.create(player_id: karma.id, cardtype: 'Champion', name: "Wukong", title: "the Monkey King", role: "Fighter", rarity: "Bronze", attack: 800, magic: 200, defense: 500, image: "Wukong.png")
karma_card27 = Card.create(player_id: karma.id, cardtype: 'Champion', name: "Wukong", title: "the Monkey King", role: "Fighter", rarity: "Bronze", attack: 800, magic: 200, defense: 500, image: "Wukong.png")
karma_card28 = Card.create(player_id: karma.id, cardtype: 'Champion', name: "Fiora", title: "the Grand Duelist", role: "Fighter", rarity: "Bronze", attack: 1000, magic: 200, defense: 400, image: "Fiora.png")
karma_card29 = Card.create(player_id: karma.id, cardtype: 'Champion', name: "Fiora", title: "the Grand Duelist", role: "Fighter", rarity: "Bronze", attack: 1000, magic: 200, defense: 400, image: "Fiora.png")
karma_card30 = Card.create(player_id: karma.id, cardtype: 'Champion', name: "Fiora", title: "the Grand Duelist", role: "Fighter", rarity: "Bronze", attack: 1000, magic: 200, defense: 400, image: "Fiora.png")
karma_card31 = Card.create(player_id: karma.id, cardtype: 'Champion', name: "Morgana", title: "Fallen Angel", role: "Mage", rarity: "Bronze", attack: 100, magic: 800, defense: 600, image: "Morgana.png")
karma_card32 = Card.create(player_id: karma.id, cardtype: 'Champion', name: "Morgana", title: "Fallen Angel", role: "Mage", rarity: "Bronze", attack: 100, magic: 800, defense: 600, image: "Morgana.png")
karma_card33 = Card.create(player_id: karma.id, cardtype: 'Champion', name: "Morgana", title: "Fallen Angel", role: "Mage", rarity: "Bronze", attack: 100, magic: 800, defense: 600, image: "Morgana.png")
karma_card34 = Card.create(player_id: karma.id, cardtype: 'Champion', name: "Xin Zhao", title: "the Seneschal of Demacia", role: "Fighter", rarity: "Bronze", attack: 800, magic: 300, defense: 600, image: "XinZhao.png")
karma_card35 = Card.create(player_id: karma.id, cardtype: 'Champion', name: "Xin Zhao", title: "the Seneschal of Demacia", role: "Fighter", rarity: "Bronze", attack: 800, magic: 300, defense: 600, image: "XinZhao.png")
karma_card36 = Card.create(player_id: karma.id, cardtype: 'Champion', name: "Xin Zhao", title: "the Seneschal of Demacia", role: "Fighter", rarity: "Bronze", attack: 800, magic: 300, defense: 600, image: "XinZhao.png")
karma_card37 = Card.create(player_id: karma.id, cardtype: 'Champion', name: "Ahri", title: "the Nine-tailed Fox", role: "Mage", rarity: "Bronze", attack: 300, magic: 800, defense: 400, image: "Ahri.png")
karma_card38 = Card.create(player_id: karma.id, cardtype: 'Champion', name: "Ahri", title: "the Nine-tailed Fox", role: "Mage", rarity: "Bronze", attack: 300, magic: 800, defense: 400, image: "Ahri.png")
karma_card39 = Card.create(player_id: karma.id, cardtype: 'Champion', name: "Ahri", title: "the Nine-tailed Fox", role: "Mage", rarity: "Bronze", attack: 300, magic: 800, defense: 400, image: "Ahri.png")
karma_card40 = Card.create(player_id: karma.id, cardtype: 'Champion', name: "Shyvana", title: "the Half-Dragon", role: "Fighter", rarity: "Bronze", attack: 800, magic: 300, defense: 600, image: "Shyvana.png")


karma_deckcard1 = Deckcard.create(deck_id: karma_deck.id, card_id: karma_card1.id)
karma_deckcard2 = Deckcard.create(deck_id: karma_deck.id, card_id: karma_card2.id)
karma_deckcard3 = Deckcard.create(deck_id: karma_deck.id, card_id: karma_card3.id)
karma_deckcard4 = Deckcard.create(deck_id: karma_deck.id, card_id: karma_card4.id)
karma_deckcard5 = Deckcard.create(deck_id: karma_deck.id, card_id: karma_card5.id)
karma_deckcard6 = Deckcard.create(deck_id: karma_deck.id, card_id: karma_card6.id)
karma_deckcard7 = Deckcard.create(deck_id: karma_deck.id, card_id: karma_card7.id)
karma_deckcard8 = Deckcard.create(deck_id: karma_deck.id, card_id: karma_card8.id)
karma_deckcard9 = Deckcard.create(deck_id: karma_deck.id, card_id: karma_card9.id)
karma_deckcard10 = Deckcard.create(deck_id: karma_deck.id, card_id: karma_card10.id)
karma_deckcard11 = Deckcard.create(deck_id: karma_deck.id, card_id: karma_card11.id)
karma_deckcard12 = Deckcard.create(deck_id: karma_deck.id, card_id: karma_card12.id)
karma_deckcard13 = Deckcard.create(deck_id: karma_deck.id, card_id: karma_card13.id)
karma_deckcard14 = Deckcard.create(deck_id: karma_deck.id, card_id: karma_card14.id)
karma_deckcard15 = Deckcard.create(deck_id: karma_deck.id, card_id: karma_card15.id)
karma_deckcard16 = Deckcard.create(deck_id: karma_deck.id, card_id: karma_card16.id)
karma_deckcard17 = Deckcard.create(deck_id: karma_deck.id, card_id: karma_card17.id)
karma_deckcard18 = Deckcard.create(deck_id: karma_deck.id, card_id: karma_card18.id)
karma_deckcard19 = Deckcard.create(deck_id: karma_deck.id, card_id: karma_card19.id)
karma_deckcard20 = Deckcard.create(deck_id: karma_deck.id, card_id: karma_card20.id)
karma_deckcard21 = Deckcard.create(deck_id: karma_deck.id, card_id: karma_card21.id)
karma_deckcard22 = Deckcard.create(deck_id: karma_deck.id, card_id: karma_card22.id)
karma_deckcard23 = Deckcard.create(deck_id: karma_deck.id, card_id: karma_card23.id)
karma_deckcard24 = Deckcard.create(deck_id: karma_deck.id, card_id: karma_card24.id)
karma_deckcard25 = Deckcard.create(deck_id: karma_deck.id, card_id: karma_card25.id)
karma_deckcard26 = Deckcard.create(deck_id: karma_deck.id, card_id: karma_card26.id)
karma_deckcard27 = Deckcard.create(deck_id: karma_deck.id, card_id: karma_card27.id)
karma_deckcard28 = Deckcard.create(deck_id: karma_deck.id, card_id: karma_card28.id)
karma_deckcard29 = Deckcard.create(deck_id: karma_deck.id, card_id: karma_card29.id)
karma_deckcard30 = Deckcard.create(deck_id: karma_deck.id, card_id: karma_card30.id)
karma_deckcard31 = Deckcard.create(deck_id: karma_deck.id, card_id: karma_card31.id)
karma_deckcard32 = Deckcard.create(deck_id: karma_deck.id, card_id: karma_card32.id)
karma_deckcard33 = Deckcard.create(deck_id: karma_deck.id, card_id: karma_card33.id)
karma_deckcard34 = Deckcard.create(deck_id: karma_deck.id, card_id: karma_card34.id)
karma_deckcard35 = Deckcard.create(deck_id: karma_deck.id, card_id: karma_card35.id)
karma_deckcard36 = Deckcard.create(deck_id: karma_deck.id, card_id: karma_card36.id)
karma_deckcard37 = Deckcard.create(deck_id: karma_deck.id, card_id: karma_card37.id)
karma_deckcard38 = Deckcard.create(deck_id: karma_deck.id, card_id: karma_card38.id)
karma_deckcard39 = Deckcard.create(deck_id: karma_deck.id, card_id: karma_card39.id)
karma_deckcard40 = Deckcard.create(deck_id: karma_deck.id, card_id: karma_card40.id)

shen_card1 = Card.create(player_id: shen.id, cardtype: 'Champion', name: "Karma", title: "the Enlightened one", role: "Mage", rarity: "Bronze", attack: 100, magic: 800, defense: 700, image: "Karma.png")
shen_card2 = Card.create(player_id: shen.id, cardtype: 'Champion', name: "Karma", title: "the Enlightened one", role: "Mage", rarity: "Bronze", attack: 100, magic: 800, defense: 700, image: "Karma.png")
shen_card3 = Card.create(player_id: shen.id, cardtype: 'Champion', name: "Karma", title: "the Enlightened one", role: "Mage", rarity: "Bronze", attack: 100, magic: 800, defense: 700, image: "Karma.png")
shen_card4 = Card.create(player_id: shen.id, cardtype: 'Champion', name: "Ivern", title: "the Green Father", role: "Support", rarity: "Silver", attack: 450, magic: 1050, defense: 750, image: "Ivern.png")
shen_card5 = Card.create(player_id: shen.id, cardtype: 'Champion', name: "Ivern", title: "the Green Father", role: "Support", rarity: "Silver", attack: 450, magic: 1050, defense: 750, image: "Ivern.png")
shen_card6 = Card.create(player_id: shen.id, cardtype: 'Champion', name: "Ivern", title: "the Green Father", role: "Support", rarity: "Silver", attack: 450, magic: 1050, defense: 750, image: "Ivern.png")
shen_card7 = Card.create(player_id: shen.id, cardtype: 'Champion', name: "Lux", title: "the Lady of Luminosity", role: "Mage", rarity: "Bronze", attack: 200, magic: 900, defense: 400, image: "Lux.png")
shen_card8 = Card.create(player_id: shen.id, cardtype: 'Champion', name: "Lux", title: "the Lady of Luminosity", role: "Mage", rarity: "Bronze", attack: 200, magic: 900, defense: 400, image: "Lux.png")
shen_card9 = Card.create(player_id: shen.id, cardtype: 'Champion', name: "Lux", title: "the Lady of Luminosity", role: "Mage", rarity: "Bronze", attack: 200, magic: 900, defense: 400, image: "Lux.png")
shen_card10 = Card.create(player_id: shen.id, cardtype: 'Champion', name: "Ezreal", title: "the Prodigal Explorer", role: "Marksman", rarity: "Silver", attack: 1050, magic: 900, defense: 300, image: "Ezreal.png")
shen_card11 = Card.create(player_id: shen.id, cardtype: 'Champion', name: "Ezreal", title: "the Prodigal Explorer", role: "Marksman", rarity: "Silver", attack: 1050, magic: 900, defense: 300, image: "Ezreal.png")
shen_card12 = Card.create(player_id: shen.id, cardtype: 'Champion', name: "Ezreal", title: "the Prodigal Explorer", role: "Marksman", rarity: "Silver", attack: 1050, magic: 900, defense: 300, image: "Ezreal.png")
shen_card13 = Card.create(player_id: shen.id, cardtype: 'Champion', name: "Lee Sin", title: "the Blind Monk", role: "Fighter", rarity: "Bronze", attack: 800, magic: 300, defense: 500, image: "LeeSin.png")
shen_card14 = Card.create(player_id: shen.id, cardtype: 'Champion', name: "Lee Sin", title: "the Blind Monk", role: "Fighter", rarity: "Bronze", attack: 800, magic: 300, defense: 500, image: "LeeSin.png")
shen_card15 = Card.create(player_id: shen.id, cardtype: 'Champion', name: "Lee Sin", title: "the Blind Monk", role: "Fighter", rarity: "Bronze", attack: 800, magic: 300, defense: 500, image: "LeeSin.png")
shen_card16 = Card.create(player_id: shen.id, cardtype: 'Champion', name: "Master Yi", title: "the Wuju Bladesman", role: "Assassin", rarity: "Bronze", attack: 1000, magic: 200, defense: 400, image: "MasterYi.png")
shen_card17 = Card.create(player_id: shen.id, cardtype: 'Champion', name: "Master Yi", title: "the Wuju Bladesman", role: "Assassin", rarity: "Bronze", attack: 1000, magic: 200, defense: 400, image: "MasterYi.png")
shen_card18 = Card.create(player_id: shen.id, cardtype: 'Champion', name: "Master Yi", title: "the Wuju Bladesman", role: "Assassin", rarity: "Bronze", attack: 1000, magic: 200, defense: 400, image: "MasterYi.png")
shen_card19 = Card.create(player_id: shen.id, cardtype: 'Champion', name: "Sona", title: "Maven of the Strings", role: "Support", rarity: "Bronze", attack: 500, magic: 800, defense: 200, image: "Sona.png")
shen_card20 = Card.create(player_id: shen.id, cardtype: 'Champion', name: "Sona", title: "Maven of the Strings", role: "Support", rarity: "Bronze", attack: 500, magic: 800, defense: 200, image: "Sona.png")
shen_card21 = Card.create(player_id: shen.id, cardtype: 'Champion', name: "Sona", title: "Maven of the Strings", role: "Support", rarity: "Bronze", attack: 500, magic: 800, defense: 200, image: "Sona.png")
shen_card22 = Card.create(player_id: shen.id, cardtype: 'Champion', name: "Jhin", title: "the Virtuoso", role: "Marksman", rarity: "Bronze", attack: 1000, magic: 600, defense: 200, image: "Jhin.png")
shen_card23 = Card.create(player_id: shen.id, cardtype: 'Champion', name: "Jhin", title: "the Virtuoso", role: "Marksman", rarity: "Bronze", attack: 1000, magic: 600, defense: 200, image: "Jhin.png")
shen_card24 = Card.create(player_id: shen.id, cardtype: 'Champion', name: "Jhin", title: "the Virtuoso", role: "Marksman", rarity: "Bronze", attack: 1000, magic: 600, defense: 200, image: "Jhin.png")
shen_card25 = Card.create(player_id: shen.id, cardtype: 'Champion', name: "Wukong", title: "the Monkey King", role: "Fighter", rarity: "Bronze", attack: 800, magic: 200, defense: 500, image: "Wukong.png")
shen_card26 = Card.create(player_id: shen.id, cardtype: 'Champion', name: "Wukong", title: "the Monkey King", role: "Fighter", rarity: "Bronze", attack: 800, magic: 200, defense: 500, image: "Wukong.png")
shen_card27 = Card.create(player_id: shen.id, cardtype: 'Champion', name: "Wukong", title: "the Monkey King", role: "Fighter", rarity: "Bronze", attack: 800, magic: 200, defense: 500, image: "Wukong.png")
shen_card28 = Card.create(player_id: shen.id, cardtype: 'Champion', name: "Fiora", title: "the Grand Duelist", role: "Fighter", rarity: "Bronze", attack: 1000, magic: 200, defense: 400, image: "Fiora.png")
shen_card29 = Card.create(player_id: shen.id, cardtype: 'Champion', name: "Fiora", title: "the Grand Duelist", role: "Fighter", rarity: "Bronze", attack: 1000, magic: 200, defense: 400, image: "Fiora.png")
shen_card30 = Card.create(player_id: shen.id, cardtype: 'Champion', name: "Fiora", title: "the Grand Duelist", role: "Fighter", rarity: "Bronze", attack: 1000, magic: 200, defense: 400, image: "Fiora.png")
shen_card31 = Card.create(player_id: shen.id, cardtype: 'Champion', name: "Janna", title: "the Storm's Fury", role: "Support", rarity: "Silver", attack: 450, magic: 1050, defense: 750, image: "Janna.png")
shen_card32 = Card.create(player_id: shen.id, cardtype: 'Champion', name: "Janna", title: "the Storm's Fury", role: "Support", rarity: "Silver", attack: 450, magic: 1050, defense: 750, image: "Janna.png")
shen_card33 = Card.create(player_id: shen.id, cardtype: 'Champion', name: "Janna", title: "the Storm's Fury", role: "Support", rarity: "Silver", attack: 450, magic: 1050, defense: 750, image: "Janna.png")
shen_card34 = Card.create(player_id: shen.id, cardtype: 'Champion', name: "Shen", title: "the Eye of Twilight", role: "Tank", rarity: "Bronze", attack: 300, magic: 300, defense: 900, image: "Shen.png")
shen_card35 = Card.create(player_id: shen.id, cardtype: 'Champion', name: "Shen", title: "the Eye of Twilight", role: "Tank", rarity: "Bronze", attack: 300, magic: 300, defense: 900, image: "Shen.png")
shen_card36 = Card.create(player_id: shen.id, cardtype: 'Champion', name: "Shen", title: "the Eye of Twilight", role: "Tank", rarity: "Bronze", attack: 300, magic: 300, defense: 900, image: "Shen.png")
shen_card37 = Card.create(player_id: shen.id, cardtype: 'Champion', name: "Ahri", title: "the Nine-tailed Fox", role: "Mage", rarity: "Bronze", attack: 300, magic: 800, defense: 400, image: "Ahri.png")
shen_card38 = Card.create(player_id: shen.id, cardtype: 'Champion', name: "Ahri", title: "the Nine-tailed Fox", role: "Mage", rarity: "Bronze", attack: 300, magic: 800, defense: 400, image: "Ahri.png")
shen_card39 = Card.create(player_id: shen.id, cardtype: 'Champion', name: "Ahri", title: "the Nine-tailed Fox", role: "Mage", rarity: "Bronze", attack: 300, magic: 800, defense: 400, image: "Ahri.png")
shen_card40 = Card.create(player_id: shen.id, cardtype: 'Champion', name: "Shyvana", title: "the Half-Dragon", role: "Fighter", rarity: "Bronze", attack: 800, magic: 300, defense: 600, image: "Shyvana.png")

shen_deckcard1 = Deckcard.create(deck_id: shen_deck.id, card_id: shen_card1.id)
shen_deckcard2 = Deckcard.create(deck_id: shen_deck.id, card_id: shen_card2.id)
shen_deckcard3 = Deckcard.create(deck_id: shen_deck.id, card_id: shen_card3.id)
shen_deckcard4 = Deckcard.create(deck_id: shen_deck.id, card_id: shen_card4.id)
shen_deckcard5 = Deckcard.create(deck_id: shen_deck.id, card_id: shen_card5.id)
shen_deckcard6 = Deckcard.create(deck_id: shen_deck.id, card_id: shen_card6.id)
shen_deckcard7 = Deckcard.create(deck_id: shen_deck.id, card_id: shen_card7.id)
shen_deckcard8 = Deckcard.create(deck_id: shen_deck.id, card_id: shen_card8.id)
shen_deckcard9 = Deckcard.create(deck_id: shen_deck.id, card_id: shen_card9.id)
shen_deckcard10 = Deckcard.create(deck_id: shen_deck.id, card_id: shen_card10.id)
shen_deckcard11 = Deckcard.create(deck_id: shen_deck.id, card_id: shen_card11.id)
shen_deckcard12 = Deckcard.create(deck_id: shen_deck.id, card_id: shen_card12.id)
shen_deckcard13 = Deckcard.create(deck_id: shen_deck.id, card_id: shen_card13.id)
shen_deckcard14 = Deckcard.create(deck_id: shen_deck.id, card_id: shen_card14.id)
shen_deckcard15 = Deckcard.create(deck_id: shen_deck.id, card_id: shen_card15.id)
shen_deckcard16 = Deckcard.create(deck_id: shen_deck.id, card_id: shen_card16.id)
shen_deckcard17 = Deckcard.create(deck_id: shen_deck.id, card_id: shen_card17.id)
shen_deckcard18 = Deckcard.create(deck_id: shen_deck.id, card_id: shen_card18.id)
shen_deckcard19 = Deckcard.create(deck_id: shen_deck.id, card_id: shen_card19.id)
shen_deckcard20 = Deckcard.create(deck_id: shen_deck.id, card_id: shen_card20.id)
shen_deckcard21 = Deckcard.create(deck_id: shen_deck.id, card_id: shen_card21.id)
shen_deckcard22 = Deckcard.create(deck_id: shen_deck.id, card_id: shen_card22.id)
shen_deckcard23 = Deckcard.create(deck_id: shen_deck.id, card_id: shen_card23.id)
shen_deckcard24 = Deckcard.create(deck_id: shen_deck.id, card_id: shen_card24.id)
shen_deckcard25 = Deckcard.create(deck_id: shen_deck.id, card_id: shen_card25.id)
shen_deckcard26 = Deckcard.create(deck_id: shen_deck.id, card_id: shen_card26.id)
shen_deckcard27 = Deckcard.create(deck_id: shen_deck.id, card_id: shen_card27.id)
shen_deckcard28 = Deckcard.create(deck_id: shen_deck.id, card_id: shen_card28.id)
shen_deckcard29 = Deckcard.create(deck_id: shen_deck.id, card_id: shen_card29.id)
shen_deckcard30 = Deckcard.create(deck_id: shen_deck.id, card_id: shen_card30.id)
shen_deckcard31 = Deckcard.create(deck_id: shen_deck.id, card_id: shen_card31.id)
shen_deckcard32 = Deckcard.create(deck_id: shen_deck.id, card_id: shen_card32.id)
shen_deckcard33 = Deckcard.create(deck_id: shen_deck.id, card_id: shen_card33.id)
shen_deckcard34 = Deckcard.create(deck_id: shen_deck.id, card_id: shen_card34.id)
shen_deckcard35 = Deckcard.create(deck_id: shen_deck.id, card_id: shen_card35.id)
shen_deckcard36 = Deckcard.create(deck_id: shen_deck.id, card_id: shen_card36.id)
shen_deckcard37 = Deckcard.create(deck_id: shen_deck.id, card_id: shen_card37.id)
shen_deckcard38 = Deckcard.create(deck_id: shen_deck.id, card_id: shen_card38.id)
shen_deckcard39 = Deckcard.create(deck_id: shen_deck.id, card_id: shen_card39.id)
shen_deckcard40 = Deckcard.create(deck_id: shen_deck.id, card_id: shen_card40.id)

zed_card1 = Card.create(player_id: zed.id, cardtype: 'Champion', name: "Karma", title: "the Enlightened one", role: "Mage", rarity: "Bronze", attack: 100, magic: 800, defense: 700, image: "Karma.png")
zed_card2 = Card.create(player_id: zed.id, cardtype: 'Champion', name: "Karma", title: "the Enlightened one", role: "Mage", rarity: "Bronze", attack: 100, magic: 800, defense: 700, image: "Karma.png")
zed_card3 = Card.create(player_id: zed.id, cardtype: 'Champion', name: "Karma", title: "the Enlightened one", role: "Mage", rarity: "Bronze", attack: 100, magic: 800, defense: 700, image: "Karma.png")
zed_card4 = Card.create(player_id: zed.id, cardtype: 'Champion', name: "Ivern", title: "the Green Father", role: "Support", rarity: "Silver", attack: 450, magic: 1050, defense: 750, image: "Ivern.png")
zed_card5 = Card.create(player_id: zed.id, cardtype: 'Champion', name: "Ivern", title: "the Green Father", role: "Support", rarity: "Silver", attack: 450, magic: 1050, defense: 750, image: "Ivern.png")
zed_card6 = Card.create(player_id: zed.id, cardtype: 'Champion', name: "Ivern", title: "the Green Father", role: "Support", rarity: "Silver", attack: 450, magic: 1050, defense: 750, image: "Ivern.png")
zed_card7 = Card.create(player_id: zed.id, cardtype: 'Champion', name: "Lux", title: "the Lady of Luminosity", role: "Mage", rarity: "Bronze", attack: 200, magic: 900, defense: 400, image: "Lux.png")
zed_card8 = Card.create(player_id: zed.id, cardtype: 'Champion', name: "Lux", title: "the Lady of Luminosity", role: "Mage", rarity: "Bronze", attack: 200, magic: 900, defense: 400, image: "Lux.png")
zed_card9 = Card.create(player_id: zed.id, cardtype: 'Champion', name: "Lux", title: "the Lady of Luminosity", role: "Mage", rarity: "Bronze", attack: 200, magic: 900, defense: 400, image: "Lux.png")
zed_card10 = Card.create(player_id: zed.id, cardtype: 'Champion', name: "Ezreal", title: "the Prodigal Explorer", role: "Marksman", rarity: "Silver", attack: 1050, magic: 900, defense: 300, image: "Ezreal.png")
zed_card11 = Card.create(player_id: zed.id, cardtype: 'Champion', name: "Ezreal", title: "the Prodigal Explorer", role: "Marksman", rarity: "Silver", attack: 1050, magic: 900, defense: 300, image: "Ezreal.png")
zed_card12 = Card.create(player_id: zed.id, cardtype: 'Champion', name: "Ezreal", title: "the Prodigal Explorer", role: "Marksman", rarity: "Silver", attack: 1050, magic: 900, defense: 300, image: "Ezreal.png")
zed_card13 = Card.create(player_id: zed.id, cardtype: 'Champion', name: "Lee Sin", title: "the Blind Monk", role: "Fighter", rarity: "Bronze", attack: 800, magic: 300, defense: 500, image: "LeeSin.png")
zed_card14 = Card.create(player_id: zed.id, cardtype: 'Champion', name: "Lee Sin", title: "the Blind Monk", role: "Fighter", rarity: "Bronze", attack: 800, magic: 300, defense: 500, image: "LeeSin.png")
zed_card15 = Card.create(player_id: zed.id, cardtype: 'Champion', name: "Lee Sin", title: "the Blind Monk", role: "Fighter", rarity: "Bronze", attack: 800, magic: 300, defense: 500, image: "LeeSin.png")
zed_card16 = Card.create(player_id: zed.id, cardtype: 'Champion', name: "Master Yi", title: "the Wuju Bladesman", role: "Assassin", rarity: "Bronze", attack: 1000, magic: 200, defense: 400, image: "MasterYi.png")
zed_card17 = Card.create(player_id: zed.id, cardtype: 'Champion', name: "Master Yi", title: "the Wuju Bladesman", role: "Assassin", rarity: "Bronze", attack: 1000, magic: 200, defense: 400, image: "MasterYi.png")
zed_card18 = Card.create(player_id: zed.id, cardtype: 'Champion', name: "Master Yi", title: "the Wuju Bladesman", role: "Assassin", rarity: "Bronze", attack: 1000, magic: 200, defense: 400, image: "MasterYi.png")
zed_card19 = Card.create(player_id: zed.id, cardtype: 'Champion', name: "Sona", title: "Maven of the Strings", role: "Support", rarity: "Bronze", attack: 500, magic: 800, defense: 200, image: "Sona.png")
zed_card20 = Card.create(player_id: zed.id, cardtype: 'Champion', name: "Sona", title: "Maven of the Strings", role: "Support", rarity: "Bronze", attack: 500, magic: 800, defense: 200, image: "Sona.png")
zed_card21 = Card.create(player_id: zed.id, cardtype: 'Champion', name: "Sona", title: "Maven of the Strings", role: "Support", rarity: "Bronze", attack: 500, magic: 800, defense: 200, image: "Sona.png")
zed_card22 = Card.create(player_id: zed.id, cardtype: 'Champion', name: "Jhin", title: "the Virtuoso", role: "Marksman", rarity: "Bronze", attack: 1000, magic: 600, defense: 200, image: "Jhin.png")
zed_card23 = Card.create(player_id: zed.id, cardtype: 'Champion', name: "Jhin", title: "the Virtuoso", role: "Marksman", rarity: "Bronze", attack: 1000, magic: 600, defense: 200, image: "Jhin.png")
zed_card24 = Card.create(player_id: zed.id, cardtype: 'Champion', name: "Jhin", title: "the Virtuoso", role: "Marksman", rarity: "Bronze", attack: 1000, magic: 600, defense: 200, image: "Jhin.png")
zed_card25 = Card.create(player_id: zed.id, cardtype: 'Champion', name: "Wukong", title: "the Monkey King", role: "Fighter", rarity: "Bronze", attack: 800, magic: 200, defense: 500, image: "Wukong.png")
zed_card26 = Card.create(player_id: zed.id, cardtype: 'Champion', name: "Wukong", title: "the Monkey King", role: "Fighter", rarity: "Bronze", attack: 800, magic: 200, defense: 500, image: "Wukong.png")
zed_card27 = Card.create(player_id: zed.id, cardtype: 'Champion', name: "Wukong", title: "the Monkey King", role: "Fighter", rarity: "Bronze", attack: 800, magic: 200, defense: 500, image: "Wukong.png")
zed_card28 = Card.create(player_id: zed.id, cardtype: 'Champion', name: "Fiora", title: "the Grand Duelist", role: "Fighter", rarity: "Bronze", attack: 1000, magic: 200, defense: 400, image: "Fiora.png")
zed_card29 = Card.create(player_id: zed.id, cardtype: 'Champion', name: "Fiora", title: "the Grand Duelist", role: "Fighter", rarity: "Bronze", attack: 1000, magic: 200, defense: 400, image: "Fiora.png")
zed_card30 = Card.create(player_id: zed.id, cardtype: 'Champion', name: "Fiora", title: "the Grand Duelist", role: "Fighter", rarity: "Bronze", attack: 1000, magic: 200, defense: 400, image: "Fiora.png")
zed_card31 = Card.create(player_id: zed.id, cardtype: 'Champion', name: "Akali", title: "the Fist of Shadow", role: "Assassin", rarity: "Silver", attack: 750, magic: 1200, defense: 450, image: "Akali.png")
zed_card32 = Card.create(player_id: zed.id, cardtype: 'Champion', name: "Akali", title: "the Fist of Shadow", role: "Assassin", rarity: "Silver", attack: 750, magic: 1200, defense: 450, image: "Akali.png")
zed_card33 = Card.create(player_id: zed.id, cardtype: 'Champion', name: "Akali", title: "the Fist of Shadow", role: "Assassin", rarity: "Silver", attack: 750, magic: 1200, defense: 450, image: "Akali.png")
zed_card34 = Card.create(player_id: zed.id, cardtype: 'Champion', name: "Zed", title: "the Master of Shadows", role: "Assassin", rarity: "Silver", attack: 1350, magic: 150, defense: 300, image: "Zed.png")
zed_card35 = Card.create(player_id: zed.id, cardtype: 'Champion', name: "Zed", title: "the Master of Shadows", role: "Assassin", rarity: "Silver", attack: 1350, magic: 150, defense: 300, image: "Zed.png")
zed_card36 = Card.create(player_id: zed.id, cardtype: 'Champion', name: "Zed", title: "the Master of Shadows", role: "Assassin", rarity: "Silver", attack: 1350, magic: 150, defense: 300, image: "Zed.png")
zed_card37 = Card.create(player_id: zed.id, cardtype: 'Champion', name: "Ahri", title: "the Nine-tailed Fox", role: "Mage", rarity: "Bronze", attack: 300, magic: 800, defense: 400, image: "Ahri.png")
zed_card38 = Card.create(player_id: zed.id, cardtype: 'Champion', name: "Ahri", title: "the Nine-tailed Fox", role: "Mage", rarity: "Bronze", attack: 300, magic: 800, defense: 400, image: "Ahri.png")
zed_card39 = Card.create(player_id: zed.id, cardtype: 'Champion', name: "Ahri", title: "the Nine-tailed Fox", role: "Mage", rarity: "Bronze", attack: 300, magic: 800, defense: 400, image: "Ahri.png")
zed_card40 = Card.create(player_id: zed.id, cardtype: 'Champion', name: "Syndra", title: "the Dark Sovereign", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 600, image: "Syndra.png")

zed_deckcard1 = Deckcard.create(deck_id: zed_deck.id, card_id: zed_card1.id)
zed_deckcard2 = Deckcard.create(deck_id: zed_deck.id, card_id: zed_card2.id)
zed_deckcard3 = Deckcard.create(deck_id: zed_deck.id, card_id: zed_card3.id)
zed_deckcard4 = Deckcard.create(deck_id: zed_deck.id, card_id: zed_card4.id)
zed_deckcard5 = Deckcard.create(deck_id: zed_deck.id, card_id: zed_card5.id)
zed_deckcard6 = Deckcard.create(deck_id: zed_deck.id, card_id: zed_card6.id)
zed_deckcard7 = Deckcard.create(deck_id: zed_deck.id, card_id: zed_card7.id)
zed_deckcard8 = Deckcard.create(deck_id: zed_deck.id, card_id: zed_card8.id)
zed_deckcard9 = Deckcard.create(deck_id: zed_deck.id, card_id: zed_card9.id)
zed_deckcard10 = Deckcard.create(deck_id: zed_deck.id, card_id: zed_card10.id)
zed_deckcard11 = Deckcard.create(deck_id: zed_deck.id, card_id: zed_card11.id)
zed_deckcard12 = Deckcard.create(deck_id: zed_deck.id, card_id: zed_card12.id)
zed_deckcard13 = Deckcard.create(deck_id: zed_deck.id, card_id: zed_card13.id)
zed_deckcard14 = Deckcard.create(deck_id: zed_deck.id, card_id: zed_card14.id)
zed_deckcard15 = Deckcard.create(deck_id: zed_deck.id, card_id: zed_card15.id)
zed_deckcard16 = Deckcard.create(deck_id: zed_deck.id, card_id: zed_card16.id)
zed_deckcard17 = Deckcard.create(deck_id: zed_deck.id, card_id: zed_card17.id)
zed_deckcard18 = Deckcard.create(deck_id: zed_deck.id, card_id: zed_card18.id)
zed_deckcard19 = Deckcard.create(deck_id: zed_deck.id, card_id: zed_card19.id)
zed_deckcard20 = Deckcard.create(deck_id: zed_deck.id, card_id: zed_card20.id)
zed_deckcard21 = Deckcard.create(deck_id: zed_deck.id, card_id: zed_card21.id)
zed_deckcard22 = Deckcard.create(deck_id: zed_deck.id, card_id: zed_card22.id)
zed_deckcard23 = Deckcard.create(deck_id: zed_deck.id, card_id: zed_card23.id)
zed_deckcard24 = Deckcard.create(deck_id: zed_deck.id, card_id: zed_card24.id)
zed_deckcard25 = Deckcard.create(deck_id: zed_deck.id, card_id: zed_card25.id)
zed_deckcard26 = Deckcard.create(deck_id: zed_deck.id, card_id: zed_card26.id)
zed_deckcard27 = Deckcard.create(deck_id: zed_deck.id, card_id: zed_card27.id)
zed_deckcard28 = Deckcard.create(deck_id: zed_deck.id, card_id: zed_card28.id)
zed_deckcard29 = Deckcard.create(deck_id: zed_deck.id, card_id: zed_card29.id)
zed_deckcard30 = Deckcard.create(deck_id: zed_deck.id, card_id: zed_card30.id)
zed_deckcard31 = Deckcard.create(deck_id: zed_deck.id, card_id: zed_card31.id)
zed_deckcard32 = Deckcard.create(deck_id: zed_deck.id, card_id: zed_card32.id)
zed_deckcard33 = Deckcard.create(deck_id: zed_deck.id, card_id: zed_card33.id)
zed_deckcard34 = Deckcard.create(deck_id: zed_deck.id, card_id: zed_card34.id)
zed_deckcard35 = Deckcard.create(deck_id: zed_deck.id, card_id: zed_card35.id)
zed_deckcard36 = Deckcard.create(deck_id: zed_deck.id, card_id: zed_card36.id)
zed_deckcard37 = Deckcard.create(deck_id: zed_deck.id, card_id: zed_card37.id)
zed_deckcard38 = Deckcard.create(deck_id: zed_deck.id, card_id: zed_card38.id)
zed_deckcard39 = Deckcard.create(deck_id: zed_deck.id, card_id: zed_card39.id)
zed_deckcard40 = Deckcard.create(deck_id: zed_deck.id, card_id: zed_card40.id)

darius_card1 = Card.create(player_id: darius.id, cardtype: 'Champion', name: "Alistar", title: "the Minotaur", role: "Tank", rarity: "Silver", attack: 900, magic: 750, defense: 1350, image: "Alistar.png")
darius_card2 = Card.create(player_id: darius.id, cardtype: 'Champion', name: "Alistar", title: "the Minotaur", role: "Tank", rarity: "Silver", attack: 900, magic: 750, defense: 1350, image: "Alistar.png")
darius_card3 = Card.create(player_id: darius.id, cardtype: 'Champion', name: "Alistar", title: "the Minotaur", role: "Tank", rarity: "Silver", attack: 900, magic: 750, defense: 1350, image: "Alistar.png")
darius_card4 = Card.create(player_id: darius.id, cardtype: 'Champion', name: "Ivern", title: "the Green Father", role: "Support", rarity: "Silver", attack: 450, magic: 1050, defense: 750, image: "Ivern.png")
darius_card5 = Card.create(player_id: darius.id, cardtype: 'Champion', name: "Ivern", title: "the Green Father", role: "Support", rarity: "Silver", attack: 450, magic: 1050, defense: 750, image: "Ivern.png")
darius_card6 = Card.create(player_id: darius.id, cardtype: 'Champion', name: "Ivern", title: "the Green Father", role: "Support", rarity: "Silver", attack: 450, magic: 1050, defense: 750, image: "Ivern.png")
darius_card7 = Card.create(player_id: darius.id, cardtype: 'Champion', name: "Zyra", title: "Rise of the Thorns", role: "Mage", rarity: "Silver", attack: 600, magic: 1200, defense: 450, image: "Zyra.png")
darius_card8 = Card.create(player_id: darius.id, cardtype: 'Champion', name: "Zyra", title: "Rise of the Thorns", role: "Mage", rarity: "Silver", attack: 600, magic: 1200, defense: 450, image: "Zyra.png")
darius_card9 = Card.create(player_id: darius.id, cardtype: 'Champion', name: "Zyra", title: "Rise of the Thorns", role: "Mage", rarity: "Silver", attack: 600, magic: 1200, defense: 450, image: "Zyra.png")
darius_card10 = Card.create(player_id: darius.id, cardtype: 'Champion', name: "Ezreal", title: "the Prodigal Explorer", role: "Marksman", rarity: "Silver", attack: 1050, magic: 900, defense: 300, image: "Ezreal.png")
darius_card11 = Card.create(player_id: darius.id, cardtype: 'Champion', name: "Ezreal", title: "the Prodigal Explorer", role: "Marksman", rarity: "Silver", attack: 1050, magic: 900, defense: 300, image: "Ezreal.png")
darius_card12 = Card.create(player_id: darius.id, cardtype: 'Champion', name: "Ezreal", title: "the Prodigal Explorer", role: "Marksman", rarity: "Silver", attack: 1050, magic: 900, defense: 300, image: "Ezreal.png")
darius_card13 = Card.create(player_id: darius.id, cardtype: 'Champion', name: "Annie", title: "the Dark Child", role: "Mage", rarity: "Bronze", attack: 200, magic: 1000, defense: 300, image: "Annie.png")
darius_card14 = Card.create(player_id: darius.id, cardtype: 'Champion', name: "Annie", title: "the Dark Child", role: "Mage", rarity: "Bronze", attack: 200, magic: 1000, defense: 300, image: "Annie.png")
darius_card15 = Card.create(player_id: darius.id, cardtype: 'Champion', name: "Annie", title: "the Dark Child", role: "Mage", rarity: "Bronze", attack: 200, magic: 1000, defense: 300, image: "Annie.png")
darius_card16 = Card.create(player_id: darius.id, cardtype: 'Champion', name: "Master Yi", title: "the Wuju Bladesman", role: "Assassin", rarity: "Bronze", attack: 1000, magic: 200, defense: 400, image: "MasterYi.png")
darius_card17 = Card.create(player_id: darius.id, cardtype: 'Champion', name: "Master Yi", title: "the Wuju Bladesman", role: "Assassin", rarity: "Bronze", attack: 1000, magic: 200, defense: 400, image: "MasterYi.png")
darius_card18 = Card.create(player_id: darius.id, cardtype: 'Champion', name: "Master Yi", title: "the Wuju Bladesman", role: "Assassin", rarity: "Bronze", attack: 1000, magic: 200, defense: 400, image: "MasterYi.png")
darius_card19 = Card.create(player_id: darius.id, cardtype: 'Champion', name: "Vlad", title: "the Crimosn Reaper", role: "Mage", rarity: "Silver", attack: 300, magic: 1200, defense: 900, image: "Vlad.png")
darius_card20 = Card.create(player_id: darius.id, cardtype: 'Champion', name: "Vlad", title: "the Crimosn Reaper", role: "Mage", rarity: "Silver", attack: 300, magic: 1200, defense: 900, image: "Vlad.png")
darius_card21 = Card.create(player_id: darius.id, cardtype: 'Champion', name: "Vlad", title: "the Crimosn Reaper", role: "Mage", rarity: "Silver", attack: 300, magic: 1200, defense: 900, image: "Vlad.png")
darius_card22 = Card.create(player_id: darius.id, cardtype: 'Champion', name: "Jhin", title: "the Virtuoso", role: "Marksman", rarity: "Bronze", attack: 1000, magic: 600, defense: 200, image: "Jhin.png")
darius_card23 = Card.create(player_id: darius.id, cardtype: 'Champion', name: "Jhin", title: "the Virtuoso", role: "Marksman", rarity: "Bronze", attack: 1000, magic: 600, defense: 200, image: "Jhin.png")
darius_card24 = Card.create(player_id: darius.id, cardtype: 'Champion', name: "Jhin", title: "the Virtuoso", role: "Marksman", rarity: "Bronze", attack: 1000, magic: 600, defense: 200, image: "Jhin.png")
darius_card25 = Card.create(player_id: darius.id, cardtype: 'Champion', name: "Janna", title: "the Storm's Fury", role: "Support", rarity: "Silver", attack: 450, magic: 1050, defense: 750, image: "Janna.png")
darius_card26 = Card.create(player_id: darius.id, cardtype: 'Champion', name: "Janna", title: "the Storm's Fury", role: "Support", rarity: "Silver", attack: 450, magic: 1050, defense: 750, image: "Janna.png")
darius_card27 = Card.create(player_id: darius.id, cardtype: 'Champion', name: "Janna", title: "the Storm's Fury", role: "Support", rarity: "Silver", attack: 450, magic: 1050, defense: 750, image: "Janna.png")
darius_card28 = Card.create(player_id: darius.id, cardtype: 'Champion', name: "Fiora", title: "the Grand Duelist", role: "Fighter", rarity: "Bronze", attack: 1000, magic: 200, defense: 400, image: "Fiora.png")
darius_card29 = Card.create(player_id: darius.id, cardtype: 'Champion', name: "Fiora", title: "the Grand Duelist", role: "Fighter", rarity: "Bronze", attack: 1000, magic: 200, defense: 400, image: "Fiora.png")
darius_card30 = Card.create(player_id: darius.id, cardtype: 'Champion', name: "Fiora", title: "the Grand Duelist", role: "Fighter", rarity: "Bronze", attack: 1000, magic: 200, defense: 400, image: "Fiora.png")
darius_card31 = Card.create(player_id: darius.id, cardtype: 'Champion', name: "Lux", title: "the Lady of Luminosity", role: "Mage", rarity: "Bronze", attack: 200, magic: 900, defense: 400, image: "Lux.png")
darius_card32 = Card.create(player_id: darius.id, cardtype: 'Champion', name: "Lux", title: "the Lady of Luminosity", role: "Mage", rarity: "Bronze", attack: 200, magic: 900, defense: 400, image: "Lux.png")
darius_card33 = Card.create(player_id: darius.id, cardtype: 'Champion', name: "Lux", title: "the Lady of Luminosity", role: "Mage", rarity: "Bronze", attack: 200, magic: 900, defense: 400, image: "Lux.png")
darius_card34 = Card.create(player_id: darius.id, cardtype: 'Champion', name: "Zed", title: "the Master of Shadows", role: "Assassin", rarity: "Silver", attack: 1350, magic: 150, defense: 300, image: "Zed.png")
darius_card35 = Card.create(player_id: darius.id, cardtype: 'Champion', name: "Zed", title: "the Master of Shadows", role: "Assassin", rarity: "Silver", attack: 1350, magic: 150, defense: 300, image: "Zed.png")
darius_card36 = Card.create(player_id: darius.id, cardtype: 'Champion', name: "Zed", title: "the Master of Shadows", role: "Assassin", rarity: "Silver", attack: 1350, magic: 150, defense: 300, image: "Zed.png")
darius_card37 = Card.create(player_id: darius.id, cardtype: 'Champion', name: "Kayle", title: "the Judicator", role: "Fighter", rarity: "Silver", attack: 900, magic: 1050, defense: 900, image: "Kayle.png")
darius_card38 = Card.create(player_id: darius.id, cardtype: 'Champion', name: "Kayle", title: "the Judicator", role: "Fighter", rarity: "Silver", attack: 900, magic: 1050, defense: 900, image: "Kayle.png")
darius_card39 = Card.create(player_id: darius.id, cardtype: 'Champion', name: "Kayle", title: "the Judicator", role: "Fighter", rarity: "Silver", attack: 900, magic: 1050, defense: 900, image: "Kayle.png")
darius_card40 = Card.create(
  player_id: darius.id,
  name: "Noxian Guillotine",
  cardtype: "Ability",
  rarity: "Diamond",
  description: "Destroy any champion on your opponent's side of the field",
  effect: "props.noxianGuillotine(props.selectedCard)",
  image: "NoxianGuillotine.png",
  quantity: 0
)


darius_deckcard1 = Deckcard.create(deck_id: darius_deck.id, card_id: darius_card1.id)
darius_deckcard2 = Deckcard.create(deck_id: darius_deck.id, card_id: darius_card2.id)
darius_deckcard3 = Deckcard.create(deck_id: darius_deck.id, card_id: darius_card3.id)
darius_deckcard4 = Deckcard.create(deck_id: darius_deck.id, card_id: darius_card4.id)
darius_deckcard5 = Deckcard.create(deck_id: darius_deck.id, card_id: darius_card5.id)
darius_deckcard6 = Deckcard.create(deck_id: darius_deck.id, card_id: darius_card6.id)
darius_deckcard7 = Deckcard.create(deck_id: darius_deck.id, card_id: darius_card7.id)
darius_deckcard8 = Deckcard.create(deck_id: darius_deck.id, card_id: darius_card8.id)
darius_deckcard9 = Deckcard.create(deck_id: darius_deck.id, card_id: darius_card9.id)
darius_deckcard10 = Deckcard.create(deck_id: darius_deck.id, card_id: darius_card10.id)
darius_deckcard11 = Deckcard.create(deck_id: darius_deck.id, card_id: darius_card11.id)
darius_deckcard12 = Deckcard.create(deck_id: darius_deck.id, card_id: darius_card12.id)
darius_deckcard13 = Deckcard.create(deck_id: darius_deck.id, card_id: darius_card13.id)
darius_deckcard14 = Deckcard.create(deck_id: darius_deck.id, card_id: darius_card14.id)
darius_deckcard15 = Deckcard.create(deck_id: darius_deck.id, card_id: darius_card15.id)
darius_deckcard16 = Deckcard.create(deck_id: darius_deck.id, card_id: darius_card16.id)
darius_deckcard17 = Deckcard.create(deck_id: darius_deck.id, card_id: darius_card17.id)
darius_deckcard18 = Deckcard.create(deck_id: darius_deck.id, card_id: darius_card18.id)
darius_deckcard19 = Deckcard.create(deck_id: darius_deck.id, card_id: darius_card19.id)
darius_deckcard20 = Deckcard.create(deck_id: darius_deck.id, card_id: darius_card20.id)
darius_deckcard21 = Deckcard.create(deck_id: darius_deck.id, card_id: darius_card21.id)
darius_deckcard22 = Deckcard.create(deck_id: darius_deck.id, card_id: darius_card22.id)
darius_deckcard23 = Deckcard.create(deck_id: darius_deck.id, card_id: darius_card23.id)
darius_deckcard24 = Deckcard.create(deck_id: darius_deck.id, card_id: darius_card24.id)
darius_deckcard25 = Deckcard.create(deck_id: darius_deck.id, card_id: darius_card25.id)
darius_deckcard26 = Deckcard.create(deck_id: darius_deck.id, card_id: darius_card26.id)
darius_deckcard27 = Deckcard.create(deck_id: darius_deck.id, card_id: darius_card27.id)
darius_deckcard28 = Deckcard.create(deck_id: darius_deck.id, card_id: darius_card28.id)
darius_deckcard29 = Deckcard.create(deck_id: darius_deck.id, card_id: darius_card29.id)
darius_deckcard30 = Deckcard.create(deck_id: darius_deck.id, card_id: darius_card30.id)
darius_deckcard31 = Deckcard.create(deck_id: darius_deck.id, card_id: darius_card31.id)
darius_deckcard32 = Deckcard.create(deck_id: darius_deck.id, card_id: darius_card32.id)
darius_deckcard33 = Deckcard.create(deck_id: darius_deck.id, card_id: darius_card33.id)
darius_deckcard34 = Deckcard.create(deck_id: darius_deck.id, card_id: darius_card34.id)
darius_deckcard35 = Deckcard.create(deck_id: darius_deck.id, card_id: darius_card35.id)
darius_deckcard36 = Deckcard.create(deck_id: darius_deck.id, card_id: darius_card36.id)
darius_deckcard37 = Deckcard.create(deck_id: darius_deck.id, card_id: darius_card37.id)
darius_deckcard38 = Deckcard.create(deck_id: darius_deck.id, card_id: darius_card38.id)
darius_deckcard39 = Deckcard.create(deck_id: darius_deck.id, card_id: darius_card39.id)
darius_deckcard40 = Deckcard.create(deck_id: darius_deck.id, card_id: darius_card40.id)

katarina_card1 = Card.create(player_id: katarina.id, cardtype: 'Champion', name: "Urgot", title: "the Headsman's Pride", role: "Marksman", rarity: "Gold", attack: 1600, magic: 600, defense: 1000, image: "Urgot.png")
katarina_card2 = Card.create(player_id: katarina.id, cardtype: 'Champion', name: "Urgot", title: "the Headsman's Pride", role: "Marksman", rarity: "Gold", attack: 1600, magic: 600, defense: 1000, image: "Urgot.png")
katarina_card3 = Card.create(player_id: katarina.id, cardtype: 'Champion', name: "Urgot", title: "the Headsman's Pride", role: "Marksman", rarity: "Gold", attack: 1600, magic: 600, defense: 1000, image: "Urgot.png")
katarina_card4 = Card.create(player_id: katarina.id, cardtype: 'Champion', name: "Ivern", title: "the Green Father", role: "Support", rarity: "Silver", attack: 450, magic: 1050, defense: 750, image: "Ivern.png")
katarina_card5 = Card.create(player_id: katarina.id, cardtype: 'Champion', name: "Ivern", title: "the Green Father", role: "Support", rarity: "Silver", attack: 450, magic: 1050, defense: 750, image: "Ivern.png")
katarina_card6 = Card.create(player_id: katarina.id, cardtype: 'Champion', name: "Ivern", title: "the Green Father", role: "Support", rarity: "Silver", attack: 450, magic: 1050, defense: 750, image: "Ivern.png")
katarina_card7 = Card.create(player_id: katarina.id, cardtype: 'Champion', name: "Katarina", title: "the Sinister Blade", role: "Assassin", rarity: "Gold", attack: 800, magic: 1800, defense: 600, image: "Katarina.png")
katarina_card8 = Card.create(player_id: katarina.id, cardtype: 'Champion', name: "Katarina", title: "the Sinister Blade", role: "Assassin", rarity: "Gold", attack: 800, magic: 1800, defense: 600, image: "Katarina.png")
katarina_card9 = Card.create(player_id: katarina.id, cardtype: 'Champion', name: "Katarina", title: "the Sinister Blade", role: "Assassin", rarity: "Gold", attack: 800, magic: 1800, defense: 600, image: "Katarina.png")
katarina_card10 = Card.create(player_id: katarina.id, cardtype: 'Champion', name: "Ezreal", title: "the Prodigal Explorer", role: "Marksman", rarity: "Silver", attack: 1050, magic: 900, defense: 300, image: "Ezreal.png")
katarina_card11 = Card.create(player_id: katarina.id, cardtype: 'Champion', name: "Ezreal", title: "the Prodigal Explorer", role: "Marksman", rarity: "Silver", attack: 1050, magic: 900, defense: 300, image: "Ezreal.png")
katarina_card12 = Card.create(player_id: katarina.id, cardtype: 'Champion', name: "Ezreal", title: "the Prodigal Explorer", role: "Marksman", rarity: "Silver", attack: 1050, magic: 900, defense: 300, image: "Ezreal.png")
katarina_card13 = Card.create(player_id: katarina.id, cardtype: 'Champion', name: "Talon", title: "the Blade's Shadow", role: "Assassin", rarity: "Silver", attack: 1350, magic: 150, defense: 450, image: "Talon.png")
katarina_card14 = Card.create(player_id: katarina.id, cardtype: 'Champion', name: "Talon", title: "the Blade's Shadow", role: "Assassin", rarity: "Silver", attack: 1350, magic: 150, defense: 450, image: "Talon.png")
katarina_card15 = Card.create(player_id: katarina.id, cardtype: 'Champion', name: "Talon", title: "the Blade's Shadow", role: "Assassin", rarity: "Silver", attack: 1350, magic: 150, defense: 450, image: "Talon.png")
katarina_card16 = Card.create(player_id: katarina.id, cardtype: 'Champion', name: "Riven", title: "the Exile", role: "Fighter", rarity: "Gold", attack: 1600, magic: 200, defense: 1000, image: "Riven.png")
katarina_card17 = Card.create(player_id: katarina.id, cardtype: 'Champion', name: "Riven", title: "the Exile", role: "Fighter", rarity: "Gold", attack: 1600, magic: 200, defense: 1000, image: "Riven.png")
katarina_card18 = Card.create(player_id: katarina.id, cardtype: 'Champion', name: "Riven", title: "the Exile", role: "Fighter", rarity: "Gold", attack: 1600, magic: 200, defense: 1000, image: "Riven.png")
katarina_card19 = Card.create(player_id: katarina.id, cardtype: 'Champion', name: "Tryndamere", title: "the Barbarian King", role: "Fighter", rarity: "Bronze", attack: 1000, magic: 200, defense: 500, image: "Tryndamere.png")
katarina_card20 = Card.create(player_id: katarina.id, cardtype: 'Champion', name: "Tryndamere", title: "the Barbarian King", role: "Fighter", rarity: "Bronze", attack: 1000, magic: 200, defense: 500, image: "Tryndamere.png")
katarina_card21 = Card.create(player_id: katarina.id, cardtype: 'Champion', name: "Tryndamere", title: "the Barbarian King", role: "Fighter", rarity: "Bronze", attack: 1000, magic: 200, defense: 500, image: "Tryndamere.png")
katarina_card22 = Card.create(player_id: katarina.id, cardtype: 'Champion', name: "Vlad", title: "the Crimson Reaper", role: "Mage", rarity: "Silver", attack: 300, magic: 1200, defense: 900, image: "Vlad.png")
katarina_card23 = Card.create(player_id: katarina.id, cardtype: 'Champion', name: "Vlad", title: "the Crimson Reaper", role: "Mage", rarity: "Silver", attack: 300, magic: 1200, defense: 900, image: "Vlad.png")
katarina_card24 = Card.create(player_id: katarina.id, cardtype: 'Champion', name: "Vlad", title: "the Crimson Reaper", role: "Mage", rarity: "Silver", attack: 300, magic: 1200, defense: 900, image: "Vlad.png")
katarina_card25 = Card.create(player_id: katarina.id, cardtype: 'Champion', name: "Janna", title: "the Storm's Fury", role: "Support", rarity: "Silver", attack: 450, magic: 1050, defense: 750, image: "Janna.png")
katarina_card26 = Card.create(player_id: katarina.id, cardtype: 'Champion', name: "Janna", title: "the Storm's Fury", role: "Support", rarity: "Silver", attack: 450, magic: 1050, defense: 750, image: "Janna.png")
katarina_card27 = Card.create(player_id: katarina.id, cardtype: 'Champion', name: "Janna", title: "the Storm's Fury", role: "Support", rarity: "Silver", attack: 450, magic: 1050, defense: 750, image: "Janna.png")
katarina_card28 = Card.create(player_id: katarina.id, cardtype: 'Champion', name: "Fiora", title: "the Grand Duelist", role: "Fighter", rarity: "Bronze", attack: 1000, magic: 200, defense: 400, image: "Fiora.png")
katarina_card29 = Card.create(player_id: katarina.id, cardtype: 'Champion', name: "Fiora", title: "the Grand Duelist", role: "Fighter", rarity: "Bronze", attack: 1000, magic: 200, defense: 400, image: "Fiora.png")
katarina_card30 = Card.create(player_id: katarina.id, cardtype: 'Champion', name: "Fiora", title: "the Grand Duelist", role: "Fighter", rarity: "Bronze", attack: 1000, magic: 200, defense: 400, image: "Fiora.png")
katarina_card31 = Card.create(player_id: katarina.id, cardtype: 'Champion', name: "Kled", title: "the Cantankerous Cavalier", role: "Fighter", rarity: "Silver", attack: 1200, magic: 300, defense: 300, image: "Kled.png")
katarina_card32 = Card.create(player_id: katarina.id, cardtype: 'Champion', name: "Kled", title: "the Cantankerous Cavalier", role: "Fighter", rarity: "Silver", attack: 1200, magic: 300, defense: 300, image: "Kled.png")
katarina_card33 = Card.create(player_id: katarina.id, cardtype: 'Champion', name: "Kled", title: "the Cantankerous Cavalier", role: "Fighter", rarity: "Silver", attack: 1200, magic: 300, defense: 300, image: "Kled.png")
katarina_card34 = Card.create(player_id: katarina.id, cardtype: 'Champion', name: "Zed", title: "the Master of Shadows", role: "Assassin", rarity: "Silver", attack: 1350, magic: 150, defense: 300, image: "Zed.png")
katarina_card35 = Card.create(player_id: katarina.id, cardtype: 'Champion', name: "Zed", title: "the Master of Shadows", role: "Assassin", rarity: "Silver", attack: 1350, magic: 150, defense: 300, image: "Zed.png")
katarina_card36 = Card.create(player_id: katarina.id, cardtype: 'Champion', name: "Zed", title: "the Master of Shadows", role: "Assassin", rarity: "Silver", attack: 1350, magic: 150, defense: 300, image: "Zed.png")
katarina_card37 = Card.create(player_id: katarina.id, cardtype: 'Champion', name: "Kayle", title: "the Judicator", role: "Fighter", rarity: "Silver", attack: 900, magic: 1050, defense: 900, image: "Kayle.png")
katarina_card38 = Card.create(player_id: katarina.id, cardtype: 'Champion', name: "Kayle", title: "the Judicator", role: "Fighter", rarity: "Silver", attack: 900, magic: 1050, defense: 900, image: "Kayle.png")
katarina_card39 = Card.create(player_id: katarina.id, cardtype: 'Champion', name: "Kayle", title: "the Judicator", role: "Fighter", rarity: "Silver", attack: 900, magic: 1050, defense: 900, image: "Kayle.png")
katarina_card40 = Card.create(
  player_id: katarina.id,
  name: "Noxian Guillotine",
  cardtype: "Ability",
  rarity: "Diamond",
  description: "Destroy any champion on your opponent's side of the field",
  effect: "props.noxianGuillotine(props.selectedCard)",
  image: "NoxianGuillotine.png",
  quantity: 0
)

katarina_deckcard1 = Deckcard.create(deck_id: katarina_deck.id, card_id: katarina_card1.id)
katarina_deckcard2 = Deckcard.create(deck_id: katarina_deck.id, card_id: katarina_card2.id)
katarina_deckcard3 = Deckcard.create(deck_id: katarina_deck.id, card_id: katarina_card3.id)
katarina_deckcard4 = Deckcard.create(deck_id: katarina_deck.id, card_id: katarina_card4.id)
katarina_deckcard5 = Deckcard.create(deck_id: katarina_deck.id, card_id: katarina_card5.id)
katarina_deckcard6 = Deckcard.create(deck_id: katarina_deck.id, card_id: katarina_card6.id)
katarina_deckcard7 = Deckcard.create(deck_id: katarina_deck.id, card_id: katarina_card7.id)
katarina_deckcard8 = Deckcard.create(deck_id: katarina_deck.id, card_id: katarina_card8.id)
katarina_deckcard9 = Deckcard.create(deck_id: katarina_deck.id, card_id: katarina_card9.id)
katarina_deckcard10 = Deckcard.create(deck_id: katarina_deck.id, card_id: katarina_card10.id)
katarina_deckcard11 = Deckcard.create(deck_id: katarina_deck.id, card_id: katarina_card11.id)
katarina_deckcard12 = Deckcard.create(deck_id: katarina_deck.id, card_id: katarina_card12.id)
katarina_deckcard13 = Deckcard.create(deck_id: katarina_deck.id, card_id: katarina_card13.id)
katarina_deckcard14 = Deckcard.create(deck_id: katarina_deck.id, card_id: katarina_card14.id)
katarina_deckcard15 = Deckcard.create(deck_id: katarina_deck.id, card_id: katarina_card15.id)
katarina_deckcard16 = Deckcard.create(deck_id: katarina_deck.id, card_id: katarina_card16.id)
katarina_deckcard17 = Deckcard.create(deck_id: katarina_deck.id, card_id: katarina_card17.id)
katarina_deckcard18 = Deckcard.create(deck_id: katarina_deck.id, card_id: katarina_card18.id)
katarina_deckcard19 = Deckcard.create(deck_id: katarina_deck.id, card_id: katarina_card19.id)
katarina_deckcard20 = Deckcard.create(deck_id: katarina_deck.id, card_id: katarina_card20.id)
katarina_deckcard21 = Deckcard.create(deck_id: katarina_deck.id, card_id: katarina_card21.id)
katarina_deckcard22 = Deckcard.create(deck_id: katarina_deck.id, card_id: katarina_card22.id)
katarina_deckcard23 = Deckcard.create(deck_id: katarina_deck.id, card_id: katarina_card23.id)
katarina_deckcard24 = Deckcard.create(deck_id: katarina_deck.id, card_id: katarina_card24.id)
katarina_deckcard25 = Deckcard.create(deck_id: katarina_deck.id, card_id: katarina_card25.id)
katarina_deckcard26 = Deckcard.create(deck_id: katarina_deck.id, card_id: katarina_card26.id)
katarina_deckcard27 = Deckcard.create(deck_id: katarina_deck.id, card_id: katarina_card27.id)
katarina_deckcard28 = Deckcard.create(deck_id: katarina_deck.id, card_id: katarina_card28.id)
katarina_deckcard29 = Deckcard.create(deck_id: katarina_deck.id, card_id: katarina_card29.id)
katarina_deckcard30 = Deckcard.create(deck_id: katarina_deck.id, card_id: katarina_card30.id)
katarina_deckcard31 = Deckcard.create(deck_id: katarina_deck.id, card_id: katarina_card31.id)
katarina_deckcard32 = Deckcard.create(deck_id: katarina_deck.id, card_id: katarina_card32.id)
katarina_deckcard33 = Deckcard.create(deck_id: katarina_deck.id, card_id: katarina_card33.id)
katarina_deckcard34 = Deckcard.create(deck_id: katarina_deck.id, card_id: katarina_card34.id)
katarina_deckcard35 = Deckcard.create(deck_id: katarina_deck.id, card_id: katarina_card35.id)
katarina_deckcard36 = Deckcard.create(deck_id: katarina_deck.id, card_id: katarina_card36.id)
katarina_deckcard37 = Deckcard.create(deck_id: katarina_deck.id, card_id: katarina_card37.id)
katarina_deckcard38 = Deckcard.create(deck_id: katarina_deck.id, card_id: katarina_card38.id)
katarina_deckcard39 = Deckcard.create(deck_id: katarina_deck.id, card_id: katarina_card39.id)
katarina_deckcard40 = Deckcard.create(deck_id: katarina_deck.id, card_id: katarina_card40.id)

swain_card1 = Card.create(player_id: swain.id, cardtype: 'Champion', name: "Urgot", title: "the Headsman's Pride", role: "Marksman", rarity: "Gold", attack: 1600, magic: 600, defense: 1000, image: "Urgot.png")
swain_card2 = Card.create(player_id: swain.id, cardtype: 'Champion', name: "Urgot", title: "the Headsman's Pride", role: "Marksman", rarity: "Gold", attack: 1600, magic: 600, defense: 1000, image: "Urgot.png")
swain_card3 = Card.create(player_id: swain.id, cardtype: 'Champion', name: "Urgot", title: "the Headsman's Pride", role: "Marksman", rarity: "Gold", attack: 1600, magic: 600, defense: 1000, image: "Urgot.png")
swain_card4 = Card.create(player_id: swain.id, cardtype: 'Champion', name: "Ivern", title: "the Green Father", role: "Support", rarity: "Silver", attack: 450, magic: 1050, defense: 750, image: "Ivern.png")
swain_card5 = Card.create(player_id: swain.id, cardtype: 'Champion', name: "Ivern", title: "the Green Father", role: "Support", rarity: "Silver", attack: 450, magic: 1050, defense: 750, image: "Ivern.png")
swain_card6 = Card.create(player_id: swain.id, cardtype: 'Champion', name: "Ivern", title: "the Green Father", role: "Support", rarity: "Silver", attack: 450, magic: 1050, defense: 750, image: "Ivern.png")
swain_card7 = Card.create(player_id: swain.id, cardtype: 'Champion', name: "Katarina", title: "the Sinister Blade", role: "Assassin", rarity: "Gold", attack: 800, magic: 1800, defense: 600, image: "Katarina.png")
swain_card8 = Card.create(player_id: swain.id, cardtype: 'Champion', name: "Katarina", title: "the Sinister Blade", role: "Assassin", rarity: "Gold", attack: 800, magic: 1800, defense: 600, image: "Katarina.png")
swain_card9 = Card.create(player_id: swain.id, cardtype: 'Champion', name: "Katarina", title: "the Sinister Blade", role: "Assassin", rarity: "Gold", attack: 800, magic: 1800, defense: 600, image: "Katarina.png")
swain_card10 = Card.create(player_id: swain.id, cardtype: 'Champion', name: "Ezreal", title: "the Prodigal Explorer", role: "Marksman", rarity: "Silver", attack: 1050, magic: 900, defense: 300, image: "Ezreal.png")
swain_card11 = Card.create(player_id: swain.id, cardtype: 'Champion', name: "Ezreal", title: "the Prodigal Explorer", role: "Marksman", rarity: "Silver", attack: 1050, magic: 900, defense: 300, image: "Ezreal.png")
swain_card12 = Card.create(player_id: swain.id, cardtype: 'Champion', name: "Ezreal", title: "the Prodigal Explorer", role: "Marksman", rarity: "Silver", attack: 1050, magic: 900, defense: 300, image: "Ezreal.png")
swain_card13 = Card.create(player_id: swain.id, cardtype: 'Champion', name: "Swain", title: "the Master Tactician", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 1200, image: "Swain.png")
swain_card14 = Card.create(player_id: swain.id, cardtype: 'Champion', name: "Swain", title: "the Master Tactician", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 1200, image: "Swain.png")
swain_card15 = Card.create(player_id: swain.id, cardtype: 'Champion', name: "Swain", title: "the Master Tactician", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 1200, image: "Swain.png")
swain_card16 = Card.create(player_id: swain.id, cardtype: 'Champion', name: "Riven", title: "the Exile", role: "Fighter", rarity: "Gold", attack: 1600, magic: 200, defense: 1000, image: "Riven.png")
swain_card17 = Card.create(player_id: swain.id, cardtype: 'Champion', name: "Riven", title: "the Exile", role: "Fighter", rarity: "Gold", attack: 1600, magic: 200, defense: 1000, image: "Riven.png")
swain_card18 = Card.create(player_id: swain.id, cardtype: 'Champion', name: "Riven", title: "the Exile", role: "Fighter", rarity: "Gold", attack: 1600, magic: 200, defense: 1000, image: "Riven.png")
swain_card19 = Card.create(player_id: swain.id, cardtype: 'Champion', name: "Draven", title: "the Glorious Executioner", role: "Marksman", rarity: "Gold", attack: 1800, magic: 200, defense: 600, image: "Draven.png")
swain_card20 = Card.create(player_id: swain.id, cardtype: 'Champion', name: "Draven", title: "the Glorious Executioner", role: "Marksman", rarity: "Gold", attack: 1800, magic: 200, defense: 600, image: "Draven.png")
swain_card21 = Card.create(player_id: swain.id, cardtype: 'Champion', name: "Draven", title: "the Glorious Executioner", role: "Marksman", rarity: "Gold", attack: 1800, magic: 200, defense: 600, image: "Draven.png")
swain_card22 = Card.create(player_id: swain.id, cardtype: 'Champion', name: "Vlad", title: "the Crimson Reaper", role: "Mage", rarity: "Silver", attack: 300, magic: 1200, defense: 900, image: "Vlad.png")
swain_card23 = Card.create(player_id: swain.id, cardtype: 'Champion', name: "Vlad", title: "the Crimson Reaper", role: "Mage", rarity: "Silver", attack: 300, magic: 1200, defense: 900, image: "Vlad.png")
swain_card24 = Card.create(player_id: swain.id, cardtype: 'Champion', name: "Vlad", title: "the Crimson Reaper", role: "Mage", rarity: "Silver", attack: 300, magic: 1200, defense: 900, image: "Vlad.png")
swain_card25 = Card.create(player_id: swain.id, cardtype: 'Champion', name: "Janna", title: "the Storm's Fury", role: "Support", rarity: "Silver", attack: 450, magic: 1050, defense: 750, image: "Janna.png")
swain_card26 = Card.create(player_id: swain.id, cardtype: 'Champion', name: "Janna", title: "the Storm's Fury", role: "Support", rarity: "Silver", attack: 450, magic: 1050, defense: 750, image: "Janna.png")
swain_card27 = Card.create(player_id: swain.id, cardtype: 'Champion', name: "Janna", title: "the Storm's Fury", role: "Support", rarity: "Silver", attack: 450, magic: 1050, defense: 750, image: "Janna.png")
swain_card28 = Card.create(player_id: swain.id, cardtype: 'Champion', name: "Talon", title: "the Blade's Shadow", role: "Assassin", rarity: "Gold", attack: 1350, magic: 150, defense: 450, image: "Talon.png")
swain_card29 = Card.create(player_id: swain.id, cardtype: 'Champion', name: "Talon", title: "the Blade's Shadow", role: "Assassin", rarity: "Gold", attack: 1350, magic: 150, defense: 450, image: "Talon.png")
swain_card30 = Card.create(player_id: swain.id, cardtype: 'Champion', name: "Talon", title: "the Blade's Shadow", role: "Assassin", rarity: "Gold", attack: 1350, magic: 150, defense: 450, image: "Talon.png")
swain_card31 = Card.create(player_id: swain.id, cardtype: 'Champion', name: "Kled", title: "the Cantankerous Cavalier", role: "Fighter", rarity: "Silver", attack: 1200, magic: 300, defense: 300, image: "Kled.png")
swain_card32 = Card.create(player_id: swain.id, cardtype: 'Champion', name: "Kled", title: "the Cantankerous Cavalier", role: "Fighter", rarity: "Silver", attack: 1200, magic: 300, defense: 300, image: "Kled.png")
swain_card33 = Card.create(player_id: swain.id, cardtype: 'Champion', name: "Kled", title: "the Cantankerous Cavalier", role: "Fighter", rarity: "Silver", attack: 1200, magic: 300, defense: 300, image: "Kled.png")
swain_card34 = Card.create(player_id: swain.id, cardtype: 'Champion', name: "Zed", title: "the Master of Shadows", role: "Assassin", rarity: "Silver", attack: 1350, magic: 150, defense: 300, image: "Zed.png")
swain_card35 = Card.create(player_id: swain.id, cardtype: 'Champion', name: "Zed", title: "the Master of Shadows", role: "Assassin", rarity: "Silver", attack: 1350, magic: 150, defense: 300, image: "Zed.png")
swain_card36 = Card.create(player_id: swain.id, cardtype: 'Champion', name: "Zed", title: "the Master of Shadows", role: "Assassin", rarity: "Silver", attack: 1350, magic: 150, defense: 300, image: "Zed.png")
swain_card37 = Card.create(player_id: swain.id, cardtype: 'Champion', name: "Kayle", title: "the Judicator", role: "Fighter", rarity: "Silver", attack: 900, magic: 1050, defense: 900, image: "Kayle.png")
swain_card38 = Card.create(player_id: swain.id, cardtype: 'Champion', name: "Kayle", title: "the Judicator", role: "Fighter", rarity: "Silver", attack: 900, magic: 1050, defense: 900, image: "Kayle.png")
swain_card39 = Card.create(player_id: swain.id, cardtype: 'Champion', name: "Kayle", title: "the Judicator", role: "Fighter", rarity: "Silver", attack: 900, magic: 1050, defense: 900, image: "Kayle.png")
swain_card40 = Card.create(
  player_id: swain.id,
  name: "Noxian Guillotine",
  cardtype: "Ability",
  rarity: "Diamond",
  description: "Destroy any champion on your opponent's side of the field",
  effect: "props.noxianGuillotine(props.selectedCard)",
  image: "NoxianGuillotine.png",
  quantity: 0
)

swain_deckcard1 = Deckcard.create(deck_id: swain_deck.id, card_id: swain_card1.id)
swain_deckcard2 = Deckcard.create(deck_id: swain_deck.id, card_id: swain_card2.id)
swain_deckcard3 = Deckcard.create(deck_id: swain_deck.id, card_id: swain_card3.id)
swain_deckcard4 = Deckcard.create(deck_id: swain_deck.id, card_id: swain_card4.id)
swain_deckcard5 = Deckcard.create(deck_id: swain_deck.id, card_id: swain_card5.id)
swain_deckcard6 = Deckcard.create(deck_id: swain_deck.id, card_id: swain_card6.id)
swain_deckcard7 = Deckcard.create(deck_id: swain_deck.id, card_id: swain_card7.id)
swain_deckcard8 = Deckcard.create(deck_id: swain_deck.id, card_id: swain_card8.id)
swain_deckcard9 = Deckcard.create(deck_id: swain_deck.id, card_id: swain_card9.id)
swain_deckcard10 = Deckcard.create(deck_id: swain_deck.id, card_id: swain_card10.id)
swain_deckcard11 = Deckcard.create(deck_id: swain_deck.id, card_id: swain_card11.id)
swain_deckcard12 = Deckcard.create(deck_id: swain_deck.id, card_id: swain_card12.id)
swain_deckcard13 = Deckcard.create(deck_id: swain_deck.id, card_id: swain_card13.id)
swain_deckcard14 = Deckcard.create(deck_id: swain_deck.id, card_id: swain_card14.id)
swain_deckcard15 = Deckcard.create(deck_id: swain_deck.id, card_id: swain_card15.id)
swain_deckcard16 = Deckcard.create(deck_id: swain_deck.id, card_id: swain_card16.id)
swain_deckcard17 = Deckcard.create(deck_id: swain_deck.id, card_id: swain_card17.id)
swain_deckcard18 = Deckcard.create(deck_id: swain_deck.id, card_id: swain_card18.id)
swain_deckcard19 = Deckcard.create(deck_id: swain_deck.id, card_id: swain_card19.id)
swain_deckcard20 = Deckcard.create(deck_id: swain_deck.id, card_id: swain_card20.id)
swain_deckcard21 = Deckcard.create(deck_id: swain_deck.id, card_id: swain_card21.id)
swain_deckcard22 = Deckcard.create(deck_id: swain_deck.id, card_id: swain_card22.id)
swain_deckcard23 = Deckcard.create(deck_id: swain_deck.id, card_id: swain_card23.id)
swain_deckcard24 = Deckcard.create(deck_id: swain_deck.id, card_id: swain_card24.id)
swain_deckcard25 = Deckcard.create(deck_id: swain_deck.id, card_id: swain_card25.id)
swain_deckcard26 = Deckcard.create(deck_id: swain_deck.id, card_id: swain_card26.id)
swain_deckcard27 = Deckcard.create(deck_id: swain_deck.id, card_id: swain_card27.id)
swain_deckcard28 = Deckcard.create(deck_id: swain_deck.id, card_id: swain_card28.id)
swain_deckcard29 = Deckcard.create(deck_id: swain_deck.id, card_id: swain_card29.id)
swain_deckcard30 = Deckcard.create(deck_id: swain_deck.id, card_id: swain_card30.id)
swain_deckcard31 = Deckcard.create(deck_id: swain_deck.id, card_id: swain_card31.id)
swain_deckcard32 = Deckcard.create(deck_id: swain_deck.id, card_id: swain_card32.id)
swain_deckcard33 = Deckcard.create(deck_id: swain_deck.id, card_id: swain_card33.id)
swain_deckcard34 = Deckcard.create(deck_id: swain_deck.id, card_id: swain_card34.id)
swain_deckcard35 = Deckcard.create(deck_id: swain_deck.id, card_id: swain_card35.id)
swain_deckcard36 = Deckcard.create(deck_id: swain_deck.id, card_id: swain_card36.id)
swain_deckcard37 = Deckcard.create(deck_id: swain_deck.id, card_id: swain_card37.id)
swain_deckcard38 = Deckcard.create(deck_id: swain_deck.id, card_id: swain_card38.id)
swain_deckcard39 = Deckcard.create(deck_id: swain_deck.id, card_id: swain_card39.id)
swain_deckcard40 = Deckcard.create(deck_id: swain_deck.id, card_id: swain_card40.id)

missFortune_card1 = Card.create(player_id: missFortune.id, cardtype: 'Champion', name: "Urgot", title: "the Headsman's Pride", role: "Marksman", rarity: "Gold", attack: 1600, magic: 600, defense: 1000, image: "Urgot.png")
missFortune_card2 = Card.create(player_id: missFortune.id, cardtype: 'Champion', name: "Urgot", title: "the Headsman's Pride", role: "Marksman", rarity: "Gold", attack: 1600, magic: 600, defense: 1000, image: "Urgot.png")
missFortune_card3 = Card.create(player_id: missFortune.id, cardtype: 'Champion', name: "Urgot", title: "the Headsman's Pride", role: "Marksman", rarity: "Gold", attack: 1600, magic: 600, defense: 1000, image: "Urgot.png")
missFortune_card4 = Card.create(player_id: missFortune.id, cardtype: 'Champion', name: "Ivern", title: "the Green Father", role: "Support", rarity: "Silver", attack: 450, magic: 1050, defense: 750, image: "Ivern.png")
missFortune_card5 = Card.create(player_id: missFortune.id, cardtype: 'Champion', name: "Ivern", title: "the Green Father", role: "Support", rarity: "Silver", attack: 450, magic: 1050, defense: 750, image: "Ivern.png")
missFortune_card6 = Card.create(player_id: missFortune.id, cardtype: 'Champion', name: "Ivern", title: "the Green Father", role: "Support", rarity: "Silver", attack: 450, magic: 1050, defense: 750, image: "Ivern.png")
missFortune_card7 = Card.create(player_id: missFortune.id, cardtype: 'Champion', name: "Katarina", title: "the Sinister Blade", role: "Assassin", rarity: "Gold", attack: 800, magic: 1800, defense: 600, image: "Katarina.png")
missFortune_card8 = Card.create(player_id: missFortune.id, cardtype: 'Champion', name: "Katarina", title: "the Sinister Blade", role: "Assassin", rarity: "Gold", attack: 800, magic: 1800, defense: 600, image: "Katarina.png")
missFortune_card9 = Card.create(player_id: missFortune.id, cardtype: 'Champion', name: "Katarina", title: "the Sinister Blade", role: "Assassin", rarity: "Gold", attack: 800, magic: 1800, defense: 600, image: "Katarina.png")
missFortune_card10 = Card.create(player_id: missFortune.id, cardtype: 'Champion', name: "Ezreal", title: "the Prodigal Explorer", role: "Marksman", rarity: "Silver", attack: 1050, magic: 900, defense: 300, image: "Ezreal.png")
missFortune_card11 = Card.create(player_id: missFortune.id, cardtype: 'Champion', name: "Ezreal", title: "the Prodigal Explorer", role: "Marksman", rarity: "Silver", attack: 1050, magic: 900, defense: 300, image: "Ezreal.png")
missFortune_card12 = Card.create(player_id: missFortune.id, cardtype: 'Champion', name: "Ezreal", title: "the Prodigal Explorer", role: "Marksman", rarity: "Silver", attack: 1050, magic: 900, defense: 300, image: "Ezreal.png")
missFortune_card13 = Card.create(player_id: missFortune.id, cardtype: 'Champion', name: "Swain", title: "the Master Tactician", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 1200, image: "Swain.png")
missFortune_card14 = Card.create(player_id: missFortune.id, cardtype: 'Champion', name: "Swain", title: "the Master Tactician", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 1200, image: "Swain.png")
missFortune_card15 = Card.create(player_id: missFortune.id, cardtype: 'Champion', name: "Swain", title: "the Master Tactician", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 1200, image: "Swain.png")
missFortune_card16 = Card.create(player_id: missFortune.id, cardtype: 'Champion', name: "Riven", title: "the Exile", role: "Fighter", rarity: "Gold", attack: 1600, magic: 200, defense: 1000, image: "Riven.png")
missFortune_card17 = Card.create(player_id: missFortune.id, cardtype: 'Champion', name: "Riven", title: "the Exile", role: "Fighter", rarity: "Gold", attack: 1600, magic: 200, defense: 1000, image: "Riven.png")
missFortune_card18 = Card.create(player_id: missFortune.id, cardtype: 'Champion', name: "Riven", title: "the Exile", role: "Fighter", rarity: "Gold", attack: 1600, magic: 200, defense: 1000, image: "Riven.png")
missFortune_card19 = Card.create(player_id: missFortune.id, cardtype: 'Champion', name: "Draven", title: "the Glorious Executioner", role: "Marksman", rarity: "Gold", attack: 1800, magic: 200, defense: 600, image: "Draven.png")
missFortune_card20 = Card.create(player_id: missFortune.id, cardtype: 'Champion', name: "Draven", title: "the Glorious Executioner", role: "Marksman", rarity: "Gold", attack: 1800, magic: 200, defense: 600, image: "Draven.png")
missFortune_card21 = Card.create(player_id: missFortune.id, cardtype: 'Champion', name: "Draven", title: "the Glorious Executioner", role: "Marksman", rarity: "Gold", attack: 1800, magic: 200, defense: 600, image: "Draven.png")
missFortune_card22 = Card.create(player_id: missFortune.id, cardtype: 'Champion', name: "Miss Fortune", title: "the Bounty Hunter", role: "Marksman", rarity: "Bronze", attack: 800, magic: 500, defense: 200, image: "MissFortune.png")
missFortune_card23 = Card.create(player_id: missFortune.id, cardtype: 'Champion', name: "Miss Fortune", title: "the Bounty Hunter", role: "Marksman", rarity: "Bronze", attack: 800, magic: 500, defense: 200, image: "MissFortune.png")
missFortune_card24 = Card.create(player_id: missFortune.id, cardtype: 'Champion', name: "Miss Fortune", title: "the Bounty Hunter", role: "Marksman", rarity: "Bronze", attack: 800, magic: 500, defense: 200, image: "MissFortune.png")
missFortune_card25 = Card.create(player_id: missFortune.id, cardtype: 'Champion', name: "Vlad", title: "the Crimson Reaper", role: "Mage", rarity: "Silver", attack: 300, magic: 1200, defense: 900, image: "Vlad.png")
missFortune_card26 = Card.create(player_id: missFortune.id, cardtype: 'Champion', name: "Vlad", title: "the Crimson Reaper", role: "Mage", rarity: "Silver", attack: 300, magic: 1200, defense: 900, image: "Vlad.png")
missFortune_card27 = Card.create(player_id: missFortune.id, cardtype: 'Champion', name: "Vlad", title: "the Crimson Reaper", role: "Mage", rarity: "Silver", attack: 300, magic: 1200, defense: 900, image: "Vlad.png")
missFortune_card28 = Card.create(player_id: missFortune.id, cardtype: 'Champion', name: "Talon", title: "the Blade's Shadow", role: "Assassin", rarity: "Gold", attack: 1350, magic: 150, defense: 450, image: "Talon.png")
missFortune_card29 = Card.create(player_id: missFortune.id, cardtype: 'Champion', name: "Talon", title: "the Blade's Shadow", role: "Assassin", rarity: "Gold", attack: 1350, magic: 150, defense: 450, image: "Talon.png")
missFortune_card30 = Card.create(player_id: missFortune.id, cardtype: 'Champion', name: "Talon", title: "the Blade's Shadow", role: "Assassin", rarity: "Gold", attack: 1350, magic: 150, defense: 450, image: "Talon.png")
missFortune_card31 = Card.create(player_id: missFortune.id, cardtype: 'Champion', name: "Kled", title: "the Cantankerous Cavalier", role: "Fighter", rarity: "Silver", attack: 1200, magic: 300, defense: 300, image: "Kled.png")
missFortune_card32 = Card.create(player_id: missFortune.id, cardtype: 'Champion', name: "Kled", title: "the Cantankerous Cavalier", role: "Fighter", rarity: "Silver", attack: 1200, magic: 300, defense: 300, image: "Kled.png")
missFortune_card33 = Card.create(player_id: missFortune.id, cardtype: 'Champion', name: "Kled", title: "the Cantankerous Cavalier", role: "Fighter", rarity: "Silver", attack: 1200, magic: 300, defense: 300, image: "Kled.png")
missFortune_card34 = Card.create(player_id: missFortune.id, cardtype: 'Champion', name: "Zed", title: "the Master of Shadows", role: "Assassin", rarity: "Silver", attack: 1350, magic: 150, defense: 300, image: "Zed.png")
missFortune_card35 = Card.create(player_id: missFortune.id, cardtype: 'Champion', name: "Zed", title: "the Master of Shadows", role: "Assassin", rarity: "Silver", attack: 1350, magic: 150, defense: 300, image: "Zed.png")
missFortune_card36 = Card.create(player_id: missFortune.id, cardtype: 'Champion', name: "Zed", title: "the Master of Shadows", role: "Assassin", rarity: "Silver", attack: 1350, magic: 150, defense: 300, image: "Zed.png")
missFortune_card37 = Card.create(player_id: missFortune.id, cardtype: 'Champion', name: "Kayle", title: "the Judicator", role: "Fighter", rarity: "Silver", attack: 900, magic: 1050, defense: 900, image: "Kayle.png")
missFortune_card38 = Card.create(player_id: missFortune.id, cardtype: 'Champion', name: "Kayle", title: "the Judicator", role: "Fighter", rarity: "Silver", attack: 900, magic: 1050, defense: 900, image: "Kayle.png")
missFortune_card39 = Card.create(player_id: missFortune.id, cardtype: 'Champion', name: "Kayle", title: "the Judicator", role: "Fighter", rarity: "Silver", attack: 900, magic: 1050, defense: 900, image: "Kayle.png")
missFortune_card40 = Card.create(
  player_id: missFortune.id,
  name: "Noxian Guillotine",
  cardtype: "Ability",
  rarity: "Diamond",
  description: "Destroy any champion on your opponent's side of the field",
  effect: "props.noxianGuillotine(props.selectedCard)",
  image: "NoxianGuillotine.png",
  quantity: 0
)

missFortune_deckcard1 = Deckcard.create(deck_id: missFortune_deck.id, card_id: missFortune_card1.id)
missFortune_deckcard2 = Deckcard.create(deck_id: missFortune_deck.id, card_id: missFortune_card2.id)
missFortune_deckcard3 = Deckcard.create(deck_id: missFortune_deck.id, card_id: missFortune_card3.id)
missFortune_deckcard4 = Deckcard.create(deck_id: missFortune_deck.id, card_id: missFortune_card4.id)
missFortune_deckcard5 = Deckcard.create(deck_id: missFortune_deck.id, card_id: missFortune_card5.id)
missFortune_deckcard6 = Deckcard.create(deck_id: missFortune_deck.id, card_id: missFortune_card6.id)
missFortune_deckcard7 = Deckcard.create(deck_id: missFortune_deck.id, card_id: missFortune_card7.id)
missFortune_deckcard8 = Deckcard.create(deck_id: missFortune_deck.id, card_id: missFortune_card8.id)
missFortune_deckcard9 = Deckcard.create(deck_id: missFortune_deck.id, card_id: missFortune_card9.id)
missFortune_deckcard10 = Deckcard.create(deck_id: missFortune_deck.id, card_id: missFortune_card10.id)
missFortune_deckcard11 = Deckcard.create(deck_id: missFortune_deck.id, card_id: missFortune_card11.id)
missFortune_deckcard12 = Deckcard.create(deck_id: missFortune_deck.id, card_id: missFortune_card12.id)
missFortune_deckcard13 = Deckcard.create(deck_id: missFortune_deck.id, card_id: missFortune_card13.id)
missFortune_deckcard14 = Deckcard.create(deck_id: missFortune_deck.id, card_id: missFortune_card14.id)
missFortune_deckcard15 = Deckcard.create(deck_id: missFortune_deck.id, card_id: missFortune_card15.id)
missFortune_deckcard16 = Deckcard.create(deck_id: missFortune_deck.id, card_id: missFortune_card16.id)
missFortune_deckcard17 = Deckcard.create(deck_id: missFortune_deck.id, card_id: missFortune_card17.id)
missFortune_deckcard18 = Deckcard.create(deck_id: missFortune_deck.id, card_id: missFortune_card18.id)
missFortune_deckcard19 = Deckcard.create(deck_id: missFortune_deck.id, card_id: missFortune_card19.id)
missFortune_deckcard20 = Deckcard.create(deck_id: missFortune_deck.id, card_id: missFortune_card20.id)
missFortune_deckcard21 = Deckcard.create(deck_id: missFortune_deck.id, card_id: missFortune_card21.id)
missFortune_deckcard22 = Deckcard.create(deck_id: missFortune_deck.id, card_id: missFortune_card22.id)
missFortune_deckcard23 = Deckcard.create(deck_id: missFortune_deck.id, card_id: missFortune_card23.id)
missFortune_deckcard24 = Deckcard.create(deck_id: missFortune_deck.id, card_id: missFortune_card24.id)
missFortune_deckcard25 = Deckcard.create(deck_id: missFortune_deck.id, card_id: missFortune_card25.id)
missFortune_deckcard26 = Deckcard.create(deck_id: missFortune_deck.id, card_id: missFortune_card26.id)
missFortune_deckcard27 = Deckcard.create(deck_id: missFortune_deck.id, card_id: missFortune_card27.id)
missFortune_deckcard28 = Deckcard.create(deck_id: missFortune_deck.id, card_id: missFortune_card28.id)
missFortune_deckcard29 = Deckcard.create(deck_id: missFortune_deck.id, card_id: missFortune_card29.id)
missFortune_deckcard30 = Deckcard.create(deck_id: missFortune_deck.id, card_id: missFortune_card30.id)
missFortune_deckcard31 = Deckcard.create(deck_id: missFortune_deck.id, card_id: missFortune_card31.id)
missFortune_deckcard32 = Deckcard.create(deck_id: missFortune_deck.id, card_id: missFortune_card32.id)
missFortune_deckcard33 = Deckcard.create(deck_id: missFortune_deck.id, card_id: missFortune_card33.id)
missFortune_deckcard34 = Deckcard.create(deck_id: missFortune_deck.id, card_id: missFortune_card34.id)
missFortune_deckcard35 = Deckcard.create(deck_id: missFortune_deck.id, card_id: missFortune_card35.id)
missFortune_deckcard36 = Deckcard.create(deck_id: missFortune_deck.id, card_id: missFortune_card36.id)
missFortune_deckcard37 = Deckcard.create(deck_id: missFortune_deck.id, card_id: missFortune_card37.id)
missFortune_deckcard38 = Deckcard.create(deck_id: missFortune_deck.id, card_id: missFortune_card38.id)
missFortune_deckcard39 = Deckcard.create(deck_id: missFortune_deck.id, card_id: missFortune_card39.id)
missFortune_deckcard40 = Deckcard.create(deck_id: missFortune_deck.id, card_id: missFortune_card40.id)

illaoi_card1 = Card.create(player_id: illaoi.id, cardtype: 'Champion', name: "Urgot", title: "the Headsman's Pride", role: "Marksman", rarity: "Gold", attack: 1600, magic: 600, defense: 1000, image: "Urgot.png")
illaoi_card2 = Card.create(player_id: illaoi.id, cardtype: 'Champion', name: "Urgot", title: "the Headsman's Pride", role: "Marksman", rarity: "Gold", attack: 1600, magic: 600, defense: 1000, image: "Urgot.png")
illaoi_card3 = Card.create(player_id: illaoi.id, cardtype: 'Champion', name: "Urgot", title: "the Headsman's Pride", role: "Marksman", rarity: "Gold", attack: 1600, magic: 600, defense: 1000, image: "Urgot.png")
illaoi_card4 = Card.create(player_id: illaoi.id, cardtype: 'Champion', name: "Ivern", title: "the Green Father", role: "Support", rarity: "Silver", attack: 450, magic: 1050, defense: 750, image: "Ivern.png")
illaoi_card5 = Card.create(player_id: illaoi.id, cardtype: 'Champion', name: "Ivern", title: "the Green Father", role: "Support", rarity: "Silver", attack: 450, magic: 1050, defense: 750, image: "Ivern.png")
illaoi_card6 = Card.create(player_id: illaoi.id, cardtype: 'Champion', name: "Ivern", title: "the Green Father", role: "Support", rarity: "Silver", attack: 450, magic: 1050, defense: 750, image: "Ivern.png")
illaoi_card7 = Card.create(player_id: illaoi.id, cardtype: 'Champion', name: "Katarina", title: "the Sinister Blade", role: "Assassin", rarity: "Gold", attack: 800, magic: 1800, defense: 600, image: "Katarina.png")
illaoi_card8 = Card.create(player_id: illaoi.id, cardtype: 'Champion', name: "Katarina", title: "the Sinister Blade", role: "Assassin", rarity: "Gold", attack: 800, magic: 1800, defense: 600, image: "Katarina.png")
illaoi_card9 = Card.create(player_id: illaoi.id, cardtype: 'Champion', name: "Katarina", title: "the Sinister Blade", role: "Assassin", rarity: "Gold", attack: 800, magic: 1800, defense: 600, image: "Katarina.png")
illaoi_card10 = Card.create(player_id: illaoi.id, cardtype: 'Champion', name: "Ezreal", title: "the Prodigal Explorer", role: "Marksman", rarity: "Silver", attack: 1050, magic: 900, defense: 300, image: "Ezreal.png")
illaoi_card11 = Card.create(player_id: illaoi.id, cardtype: 'Champion', name: "Ezreal", title: "the Prodigal Explorer", role: "Marksman", rarity: "Silver", attack: 1050, magic: 900, defense: 300, image: "Ezreal.png")
illaoi_card12 = Card.create(player_id: illaoi.id, cardtype: 'Champion', name: "Ezreal", title: "the Prodigal Explorer", role: "Marksman", rarity: "Silver", attack: 1050, magic: 900, defense: 300, image: "Ezreal.png")
illaoi_card13 = Card.create(player_id: illaoi.id, cardtype: 'Champion', name: "Swain", title: "the Master Tactician", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 1200, image: "Swain.png")
illaoi_card14 = Card.create(player_id: illaoi.id, cardtype: 'Champion', name: "Swain", title: "the Master Tactician", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 1200, image: "Swain.png")
illaoi_card15 = Card.create(player_id: illaoi.id, cardtype: 'Champion', name: "Swain", title: "the Master Tactician", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 1200, image: "Swain.png")
illaoi_card16 = Card.create(player_id: illaoi.id, cardtype: 'Champion', name: "Riven", title: "the Exile", role: "Fighter", rarity: "Gold", attack: 1600, magic: 200, defense: 1000, image: "Riven.png")
illaoi_card17 = Card.create(player_id: illaoi.id, cardtype: 'Champion', name: "Riven", title: "the Exile", role: "Fighter", rarity: "Gold", attack: 1600, magic: 200, defense: 1000, image: "Riven.png")
illaoi_card18 = Card.create(player_id: illaoi.id, cardtype: 'Champion', name: "Riven", title: "the Exile", role: "Fighter", rarity: "Gold", attack: 1600, magic: 200, defense: 1000, image: "Riven.png")
illaoi_card19 = Card.create(player_id: illaoi.id, cardtype: 'Champion', name: "Draven", title: "the Glorious Executioner", role: "Marksman", rarity: "Gold", attack: 1800, magic: 200, defense: 600, image: "Draven.png")
illaoi_card20 = Card.create(player_id: illaoi.id, cardtype: 'Champion', name: "Draven", title: "the Glorious Executioner", role: "Marksman", rarity: "Gold", attack: 1800, magic: 200, defense: 600, image: "Draven.png")
illaoi_card21 = Card.create(player_id: illaoi.id, cardtype: 'Champion', name: "Draven", title: "the Glorious Executioner", role: "Marksman", rarity: "Gold", attack: 1800, magic: 200, defense: 600, image: "Draven.png")
illaoi_card22 = Card.create(player_id: illaoi.id, cardtype: 'Champion', name: "Illaoi", title: "the Kraken Priestess", role: "Fighter", rarity: "Bronze", attack: 800, magic: 300, defense: 600, image: "Illaoi.png")
illaoi_card23 = Card.create(player_id: illaoi.id, cardtype: 'Champion', name: "Illaoi", title: "the Kraken Priestess", role: "Fighter", rarity: "Bronze", attack: 800, magic: 300, defense: 600, image: "Illaoi.png")
illaoi_card24 = Card.create(player_id: illaoi.id, cardtype: 'Champion', name: "Illaoi", title: "the Kraken Priestess", role: "Fighter", rarity: "Bronze", attack: 800, magic: 300, defense: 600, image: "Illaoi.png")
illaoi_card25 = Card.create(player_id: illaoi.id, cardtype: 'Champion', name: "Vlad", title: "the Crimson Reaper", role: "Mage", rarity: "Silver", attack: 300, magic: 1200, defense: 900, image: "Vlad.png")
illaoi_card26 = Card.create(player_id: illaoi.id, cardtype: 'Champion', name: "Vlad", title: "the Crimson Reaper", role: "Mage", rarity: "Silver", attack: 300, magic: 1200, defense: 900, image: "Vlad.png")
illaoi_card27 = Card.create(player_id: illaoi.id, cardtype: 'Champion', name: "Vlad", title: "the Crimson Reaper", role: "Mage", rarity: "Silver", attack: 300, magic: 1200, defense: 900, image: "Vlad.png")
illaoi_card28 = Card.create(player_id: illaoi.id, cardtype: 'Champion', name: "Talon", title: "the Blade's Shadow", role: "Assassin", rarity: "Gold", attack: 1350, magic: 150, defense: 450, image: "Talon.png")
illaoi_card29 = Card.create(player_id: illaoi.id, cardtype: 'Champion', name: "Talon", title: "the Blade's Shadow", role: "Assassin", rarity: "Gold", attack: 1350, magic: 150, defense: 450, image: "Talon.png")
illaoi_card30 = Card.create(player_id: illaoi.id, cardtype: 'Champion', name: "Talon", title: "the Blade's Shadow", role: "Assassin", rarity: "Gold", attack: 1350, magic: 150, defense: 450, image: "Talon.png")
illaoi_card31 = Card.create(player_id: illaoi.id, cardtype: 'Champion', name: "Twisted Fate", title: "the Card Master", role: "Mage", rarity: "Platinum", attack: 1500, magic: 1500, defense: 500, image: "TwistedFate.png")
illaoi_card32 = Card.create(player_id: illaoi.id, cardtype: 'Champion', name: "Twisted Fate", title: "the Card Master", role: "Mage", rarity: "Platinum", attack: 1500, magic: 1500, defense: 500, image: "TwistedFate.png")
illaoi_card33 = Card.create(player_id: illaoi.id, cardtype: 'Champion', name: "Twisted Fate", title: "the Card Master", role: "Mage", rarity: "Platinum", attack: 1500, magic: 1500, defense: 500, image: "TwistedFate.png")
illaoi_card34 = Card.create(player_id: illaoi.id, cardtype: 'Champion', name: "Zed", title: "the Master of Shadows", role: "Assassin", rarity: "Silver", attack: 1350, magic: 150, defense: 300, image: "Zed.png")
illaoi_card35 = Card.create(player_id: illaoi.id, cardtype: 'Champion', name: "Zed", title: "the Master of Shadows", role: "Assassin", rarity: "Silver", attack: 1350, magic: 150, defense: 300, image: "Zed.png")
illaoi_card36 = Card.create(player_id: illaoi.id, cardtype: 'Champion', name: "Zed", title: "the Master of Shadows", role: "Assassin", rarity: "Silver", attack: 1350, magic: 150, defense: 300, image: "Zed.png")
illaoi_card37 = Card.create(player_id: illaoi.id, cardtype: 'Champion', name: "Kayle", title: "the Judicator", role: "Fighter", rarity: "Silver", attack: 900, magic: 1050, defense: 900, image: "Kayle.png")
illaoi_card38 = Card.create(player_id: illaoi.id, cardtype: 'Champion', name: "Kayle", title: "the Judicator", role: "Fighter", rarity: "Silver", attack: 900, magic: 1050, defense: 900, image: "Kayle.png")
illaoi_card39 = Card.create(player_id: illaoi.id, cardtype: 'Champion', name: "Kayle", title: "the Judicator", role: "Fighter", rarity: "Silver", attack: 900, magic: 1050, defense: 900, image: "Kayle.png")
illaoi_card40 = Card.create(
  player_id: illaoi.id,
  name: "Noxian Guillotine",
  cardtype: "Ability",
  rarity: "Diamond",
  description: "Destroy any champion on your opponent's side of the field",
  effect: "props.noxianGuillotine(props.selectedCard)",
  image: "NoxianGuillotine.png",
  quantity: 0
)

illaoi_deckcard1 = Deckcard.create(deck_id: illaoi_deck.id, card_id: illaoi_card1.id)
illaoi_deckcard2 = Deckcard.create(deck_id: illaoi_deck.id, card_id: illaoi_card2.id)
illaoi_deckcard3 = Deckcard.create(deck_id: illaoi_deck.id, card_id: illaoi_card3.id)
illaoi_deckcard4 = Deckcard.create(deck_id: illaoi_deck.id, card_id: illaoi_card4.id)
illaoi_deckcard5 = Deckcard.create(deck_id: illaoi_deck.id, card_id: illaoi_card5.id)
illaoi_deckcard6 = Deckcard.create(deck_id: illaoi_deck.id, card_id: illaoi_card6.id)
illaoi_deckcard7 = Deckcard.create(deck_id: illaoi_deck.id, card_id: illaoi_card7.id)
illaoi_deckcard8 = Deckcard.create(deck_id: illaoi_deck.id, card_id: illaoi_card8.id)
illaoi_deckcard9 = Deckcard.create(deck_id: illaoi_deck.id, card_id: illaoi_card9.id)
illaoi_deckcard10 = Deckcard.create(deck_id: illaoi_deck.id, card_id: illaoi_card10.id)
illaoi_deckcard11 = Deckcard.create(deck_id: illaoi_deck.id, card_id: illaoi_card11.id)
illaoi_deckcard12 = Deckcard.create(deck_id: illaoi_deck.id, card_id: illaoi_card12.id)
illaoi_deckcard13 = Deckcard.create(deck_id: illaoi_deck.id, card_id: illaoi_card13.id)
illaoi_deckcard14 = Deckcard.create(deck_id: illaoi_deck.id, card_id: illaoi_card14.id)
illaoi_deckcard15 = Deckcard.create(deck_id: illaoi_deck.id, card_id: illaoi_card15.id)
illaoi_deckcard16 = Deckcard.create(deck_id: illaoi_deck.id, card_id: illaoi_card16.id)
illaoi_deckcard17 = Deckcard.create(deck_id: illaoi_deck.id, card_id: illaoi_card17.id)
illaoi_deckcard18 = Deckcard.create(deck_id: illaoi_deck.id, card_id: illaoi_card18.id)
illaoi_deckcard19 = Deckcard.create(deck_id: illaoi_deck.id, card_id: illaoi_card19.id)
illaoi_deckcard20 = Deckcard.create(deck_id: illaoi_deck.id, card_id: illaoi_card20.id)
illaoi_deckcard21 = Deckcard.create(deck_id: illaoi_deck.id, card_id: illaoi_card21.id)
illaoi_deckcard22 = Deckcard.create(deck_id: illaoi_deck.id, card_id: illaoi_card22.id)
illaoi_deckcard23 = Deckcard.create(deck_id: illaoi_deck.id, card_id: illaoi_card23.id)
illaoi_deckcard24 = Deckcard.create(deck_id: illaoi_deck.id, card_id: illaoi_card24.id)
illaoi_deckcard25 = Deckcard.create(deck_id: illaoi_deck.id, card_id: illaoi_card25.id)
illaoi_deckcard26 = Deckcard.create(deck_id: illaoi_deck.id, card_id: illaoi_card26.id)
illaoi_deckcard27 = Deckcard.create(deck_id: illaoi_deck.id, card_id: illaoi_card27.id)
illaoi_deckcard28 = Deckcard.create(deck_id: illaoi_deck.id, card_id: illaoi_card28.id)
illaoi_deckcard29 = Deckcard.create(deck_id: illaoi_deck.id, card_id: illaoi_card29.id)
illaoi_deckcard30 = Deckcard.create(deck_id: illaoi_deck.id, card_id: illaoi_card30.id)
illaoi_deckcard31 = Deckcard.create(deck_id: illaoi_deck.id, card_id: illaoi_card31.id)
illaoi_deckcard32 = Deckcard.create(deck_id: illaoi_deck.id, card_id: illaoi_card32.id)
illaoi_deckcard33 = Deckcard.create(deck_id: illaoi_deck.id, card_id: illaoi_card33.id)
illaoi_deckcard34 = Deckcard.create(deck_id: illaoi_deck.id, card_id: illaoi_card34.id)
illaoi_deckcard35 = Deckcard.create(deck_id: illaoi_deck.id, card_id: illaoi_card35.id)
illaoi_deckcard36 = Deckcard.create(deck_id: illaoi_deck.id, card_id: illaoi_card36.id)
illaoi_deckcard37 = Deckcard.create(deck_id: illaoi_deck.id, card_id: illaoi_card37.id)
illaoi_deckcard38 = Deckcard.create(deck_id: illaoi_deck.id, card_id: illaoi_card38.id)
illaoi_deckcard39 = Deckcard.create(deck_id: illaoi_deck.id, card_id: illaoi_card39.id)
illaoi_deckcard40 = Deckcard.create(deck_id: illaoi_deck.id, card_id: illaoi_card40.id)

gangplank_card1 = Card.create(player_id: gangplank.id, cardtype: 'Champion', name: "Urgot", title: "the Headsman's Pride", role: "Marksman", rarity: "Gold", attack: 1600, magic: 600, defense: 1000, image: "Urgot.png")
gangplank_card2 = Card.create(player_id: gangplank.id, cardtype: 'Champion', name: "Urgot", title: "the Headsman's Pride", role: "Marksman", rarity: "Gold", attack: 1600, magic: 600, defense: 1000, image: "Urgot.png")
gangplank_card3 = Card.create(player_id: gangplank.id, cardtype: 'Champion', name: "Urgot", title: "the Headsman's Pride", role: "Marksman", rarity: "Gold", attack: 1600, magic: 600, defense: 1000, image: "Urgot.png")
gangplank_card4 = Card.create(player_id: gangplank.id, cardtype: 'Champion', name: "Ivern", title: "the Green Father", role: "Support", rarity: "Silver", attack: 450, magic: 1050, defense: 750, image: "Ivern.png")
gangplank_card5 = Card.create(player_id: gangplank.id, cardtype: 'Champion', name: "Ivern", title: "the Green Father", role: "Support", rarity: "Silver", attack: 450, magic: 1050, defense: 750, image: "Ivern.png")
gangplank_card6 = Card.create(player_id: gangplank.id, cardtype: 'Champion', name: "Ivern", title: "the Green Father", role: "Support", rarity: "Silver", attack: 450, magic: 1050, defense: 750, image: "Ivern.png")
gangplank_card7 = Card.create(player_id: gangplank.id, cardtype: 'Champion', name: "Katarina", title: "the Sinister Blade", role: "Assassin", rarity: "Gold", attack: 800, magic: 1800, defense: 600, image: "Katarina.png")
gangplank_card8 = Card.create(player_id: gangplank.id, cardtype: 'Champion', name: "Katarina", title: "the Sinister Blade", role: "Assassin", rarity: "Gold", attack: 800, magic: 1800, defense: 600, image: "Katarina.png")
gangplank_card9 = Card.create(player_id: gangplank.id, cardtype: 'Champion', name: "Katarina", title: "the Sinister Blade", role: "Assassin", rarity: "Gold", attack: 800, magic: 1800, defense: 600, image: "Katarina.png")
gangplank_card10 = Card.create(player_id: gangplank.id, cardtype: 'Champion', name: "Ezreal", title: "the Prodigal Explorer", role: "Marksman", rarity: "Silver", attack: 1050, magic: 900, defense: 300, image: "Ezreal.png")
gangplank_card11 = Card.create(player_id: gangplank.id, cardtype: 'Champion', name: "Ezreal", title: "the Prodigal Explorer", role: "Marksman", rarity: "Silver", attack: 1050, magic: 900, defense: 300, image: "Ezreal.png")
gangplank_card12 = Card.create(player_id: gangplank.id, cardtype: 'Champion', name: "Ezreal", title: "the Prodigal Explorer", role: "Marksman", rarity: "Silver", attack: 1050, magic: 900, defense: 300, image: "Ezreal.png")
gangplank_card13 = Card.create(player_id: gangplank.id, cardtype: 'Champion', name: "Swain", title: "the Master Tactician", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 1200, image: "Swain.png")
gangplank_card14 = Card.create(player_id: gangplank.id, cardtype: 'Champion', name: "Swain", title: "the Master Tactician", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 1200, image: "Swain.png")
gangplank_card15 = Card.create(player_id: gangplank.id, cardtype: 'Champion', name: "Swain", title: "the Master Tactician", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 1200, image: "Swain.png")
gangplank_card16 = Card.create(player_id: gangplank.id, cardtype: 'Champion', name: "Riven", title: "the Exile", role: "Fighter", rarity: "Gold", attack: 1600, magic: 200, defense: 1000, image: "Riven.png")
gangplank_card17 = Card.create(player_id: gangplank.id, cardtype: 'Champion', name: "Riven", title: "the Exile", role: "Fighter", rarity: "Gold", attack: 1600, magic: 200, defense: 1000, image: "Riven.png")
gangplank_card18 = Card.create(player_id: gangplank.id, cardtype: 'Champion', name: "Riven", title: "the Exile", role: "Fighter", rarity: "Gold", attack: 1600, magic: 200, defense: 1000, image: "Riven.png")
gangplank_card19 = Card.create(player_id: gangplank.id, cardtype: 'Champion', name: "Draven", title: "the Glorious Executioner", role: "Marksman", rarity: "Gold", attack: 1800, magic: 200, defense: 600, image: "Draven.png")
gangplank_card20 = Card.create(player_id: gangplank.id, cardtype: 'Champion', name: "Draven", title: "the Glorious Executioner", role: "Marksman", rarity: "Gold", attack: 1800, magic: 200, defense: 600, image: "Draven.png")
gangplank_card21 = Card.create(player_id: gangplank.id, cardtype: 'Champion', name: "Draven", title: "the Glorious Executioner", role: "Marksman", rarity: "Gold", attack: 1800, magic: 200, defense: 600, image: "Draven.png")
gangplank_card22 = Card.create(player_id: gangplank.id, cardtype: 'Champion', name: "Gangplank", title: "the Saltwater Scourge", role: "Fighter", rarity: "Silver", attack: 1750, magic: 1000, defense: 1500, image: "Gankplank.png")
gangplank_card23 = Card.create(player_id: gangplank.id, cardtype: 'Champion', name: "Gangplank", title: "the Saltwater Scourge", role: "Fighter", rarity: "Silver", attack: 1750, magic: 1000, defense: 1500, image: "Gankplank.png")
gangplank_card24 = Card.create(player_id: gangplank.id, cardtype: 'Champion', name: "Gangplank", title: "the Saltwater Scourge", role: "Fighter", rarity: "Silver", attack: 1750, magic: 1000, defense: 1500, image: "Gankplank.png")
gangplank_card25 = Card.create(player_id: gangplank.id, cardtype: 'Champion', name: "Vlad", title: "the Crimson Reaper", role: "Mage", rarity: "Silver", attack: 300, magic: 1200, defense: 900, image: "Vlad.png")
gangplank_card26 = Card.create(player_id: gangplank.id, cardtype: 'Champion', name: "Vlad", title: "the Crimson Reaper", role: "Mage", rarity: "Silver", attack: 300, magic: 1200, defense: 900, image: "Vlad.png")
gangplank_card27 = Card.create(player_id: gangplank.id, cardtype: 'Champion', name: "Vlad", title: "the Crimson Reaper", role: "Mage", rarity: "Silver", attack: 300, magic: 1200, defense: 900, image: "Vlad.png")
gangplank_card28 = Card.create(player_id: gangplank.id, cardtype: 'Champion', name: "Talon", title: "the Blade's Shadow", role: "Assassin", rarity: "Gold", attack: 1350, magic: 150, defense: 450, image: "Talon.png")
gangplank_card29 = Card.create(player_id: gangplank.id, cardtype: 'Champion', name: "Talon", title: "the Blade's Shadow", role: "Assassin", rarity: "Gold", attack: 1350, magic: 150, defense: 450, image: "Talon.png")
gangplank_card30 = Card.create(player_id: gangplank.id, cardtype: 'Champion', name: "Talon", title: "the Blade's Shadow", role: "Assassin", rarity: "Gold", attack: 1350, magic: 150, defense: 450, image: "Talon.png")
gangplank_card31 = Card.create(player_id: gangplank.id, cardtype: 'Champion', name: "TwistedFate", title: "the Card Master", role: "Mage", rarity: "Platinum", attack: 1500, magic: 1500, defense: 500, image: "TwistedFate.png")
gangplank_card32 = Card.create(player_id: gangplank.id, cardtype: 'Champion', name: "TwistedFate", title: "the Card Master", role: "Mage", rarity: "Platinum", attack: 1500, magic: 1500, defense: 500, image: "TwistedFate.png")
gangplank_card33 = Card.create(player_id: gangplank.id, cardtype: 'Champion', name: "TwistedFate", title: "the Card Master", role: "Mage", rarity: "Platinum", attack: 1500, magic: 1500, defense: 500, image: "TwistedFate.png")
gangplank_card34 = Card.create(player_id: gangplank.id, cardtype: 'Champion', name: "Zed", title: "the Master of Shadows", role: "Assassin", rarity: "Silver", attack: 1350, magic: 150, defense: 300, image: "Zed.png")
gangplank_card35 = Card.create(player_id: gangplank.id, cardtype: 'Champion', name: "Zed", title: "the Master of Shadows", role: "Assassin", rarity: "Silver", attack: 1350, magic: 150, defense: 300, image: "Zed.png")
gangplank_card36 = Card.create(player_id: gangplank.id, cardtype: 'Champion', name: "Zed", title: "the Master of Shadows", role: "Assassin", rarity: "Silver", attack: 1350, magic: 150, defense: 300, image: "Zed.png")
gangplank_card37 = Card.create(player_id: gangplank.id, cardtype: 'Champion', name: "Kayle", title: "the Judicator", role: "Fighter", rarity: "Silver", attack: 900, magic: 1050, defense: 900, image: "Kayle.png")
gangplank_card38 = Card.create(player_id: gangplank.id, cardtype: 'Champion', name: "Kayle", title: "the Judicator", role: "Fighter", rarity: "Silver", attack: 900, magic: 1050, defense: 900, image: "Kayle.png")
gangplank_card39 = Card.create(player_id: gangplank.id, cardtype: 'Champion', name: "Kayle", title: "the Judicator", role: "Fighter", rarity: "Silver", attack: 900, magic: 1050, defense: 900, image: "Kayle.png")
gangplank_card40 = Card.create(
  player_id: gangplank.id,
  name: "Noxian Guillotine",
  cardtype: "Ability",
  rarity: "Diamond",
  description: "Destroy any champion on your opponent's side of the field",
  effect: "props.noxianGuillotine(props.selectedCard)",
  image: "NoxianGuillotine.png",
  quantity: 0
)

gangplank_deckcard1 = Deckcard.create(deck_id: gangplank_deck.id, card_id: gangplank_card1.id)
gangplank_deckcard2 = Deckcard.create(deck_id: gangplank_deck.id, card_id: gangplank_card2.id)
gangplank_deckcard3 = Deckcard.create(deck_id: gangplank_deck.id, card_id: gangplank_card3.id)
gangplank_deckcard4 = Deckcard.create(deck_id: gangplank_deck.id, card_id: gangplank_card4.id)
gangplank_deckcard5 = Deckcard.create(deck_id: gangplank_deck.id, card_id: gangplank_card5.id)
gangplank_deckcard6 = Deckcard.create(deck_id: gangplank_deck.id, card_id: gangplank_card6.id)
gangplank_deckcard7 = Deckcard.create(deck_id: gangplank_deck.id, card_id: gangplank_card7.id)
gangplank_deckcard8 = Deckcard.create(deck_id: gangplank_deck.id, card_id: gangplank_card8.id)
gangplank_deckcard9 = Deckcard.create(deck_id: gangplank_deck.id, card_id: gangplank_card9.id)
gangplank_deckcard10 = Deckcard.create(deck_id: gangplank_deck.id, card_id: gangplank_card10.id)
gangplank_deckcard11 = Deckcard.create(deck_id: gangplank_deck.id, card_id: gangplank_card11.id)
gangplank_deckcard12 = Deckcard.create(deck_id: gangplank_deck.id, card_id: gangplank_card12.id)
gangplank_deckcard13 = Deckcard.create(deck_id: gangplank_deck.id, card_id: gangplank_card13.id)
gangplank_deckcard14 = Deckcard.create(deck_id: gangplank_deck.id, card_id: gangplank_card14.id)
gangplank_deckcard15 = Deckcard.create(deck_id: gangplank_deck.id, card_id: gangplank_card15.id)
gangplank_deckcard16 = Deckcard.create(deck_id: gangplank_deck.id, card_id: gangplank_card16.id)
gangplank_deckcard17 = Deckcard.create(deck_id: gangplank_deck.id, card_id: gangplank_card17.id)
gangplank_deckcard18 = Deckcard.create(deck_id: gangplank_deck.id, card_id: gangplank_card18.id)
gangplank_deckcard19 = Deckcard.create(deck_id: gangplank_deck.id, card_id: gangplank_card19.id)
gangplank_deckcard20 = Deckcard.create(deck_id: gangplank_deck.id, card_id: gangplank_card20.id)
gangplank_deckcard21 = Deckcard.create(deck_id: gangplank_deck.id, card_id: gangplank_card21.id)
gangplank_deckcard22 = Deckcard.create(deck_id: gangplank_deck.id, card_id: gangplank_card22.id)
gangplank_deckcard23 = Deckcard.create(deck_id: gangplank_deck.id, card_id: gangplank_card23.id)
gangplank_deckcard24 = Deckcard.create(deck_id: gangplank_deck.id, card_id: gangplank_card24.id)
gangplank_deckcard25 = Deckcard.create(deck_id: gangplank_deck.id, card_id: gangplank_card25.id)
gangplank_deckcard26 = Deckcard.create(deck_id: gangplank_deck.id, card_id: gangplank_card26.id)
gangplank_deckcard27 = Deckcard.create(deck_id: gangplank_deck.id, card_id: gangplank_card27.id)
gangplank_deckcard28 = Deckcard.create(deck_id: gangplank_deck.id, card_id: gangplank_card28.id)
gangplank_deckcard29 = Deckcard.create(deck_id: gangplank_deck.id, card_id: gangplank_card29.id)
gangplank_deckcard30 = Deckcard.create(deck_id: gangplank_deck.id, card_id: gangplank_card30.id)
gangplank_deckcard31 = Deckcard.create(deck_id: gangplank_deck.id, card_id: gangplank_card31.id)
gangplank_deckcard32 = Deckcard.create(deck_id: gangplank_deck.id, card_id: gangplank_card32.id)
gangplank_deckcard33 = Deckcard.create(deck_id: gangplank_deck.id, card_id: gangplank_card33.id)
gangplank_deckcard34 = Deckcard.create(deck_id: gangplank_deck.id, card_id: gangplank_card34.id)
gangplank_deckcard35 = Deckcard.create(deck_id: gangplank_deck.id, card_id: gangplank_card35.id)
gangplank_deckcard36 = Deckcard.create(deck_id: gangplank_deck.id, card_id: gangplank_card36.id)
gangplank_deckcard37 = Deckcard.create(deck_id: gangplank_deck.id, card_id: gangplank_card37.id)
gangplank_deckcard38 = Deckcard.create(deck_id: gangplank_deck.id, card_id: gangplank_card38.id)
gangplank_deckcard39 = Deckcard.create(deck_id: gangplank_deck.id, card_id: gangplank_card39.id)
gangplank_deckcard40 = Deckcard.create(deck_id: gangplank_deck.id, card_id: gangplank_card40.id)

yorick_card1 = Card.create(player_id: yorick.id, cardtype: 'Champion', name: "Veigar", title: "the Tiny Master of Evil", role: "Mage", rarity: "Silver", attack: 300, magic: 1500, defense: 300, image: "Veigar.png")
yorick_card2 = Card.create(player_id: yorick.id, cardtype: 'Champion', name: "Veigar", title: "the Tiny Master of Evil", role: "Mage", rarity: "Silver", attack: 300, magic: 1500, defense: 300, image: "Veigar.png")
yorick_card3 = Card.create(player_id: yorick.id, cardtype: 'Champion', name: "Veigar", title: "the Tiny Master of Evil", role: "Mage", rarity: "Silver", attack: 300, magic: 1500, defense: 300, image: "Veigar.png")
yorick_card4 = Card.create(player_id: yorick.id, cardtype: 'Champion', name: "Urgot", title: "the Headsman's Pride", role: "Marksman", rarity: "Gold", attack: 1600, magic: 600, defense: 1000, image: "Urgot.png")
yorick_card5 = Card.create(player_id: yorick.id, cardtype: 'Champion', name: "Urgot", title: "the Headsman's Pride", role: "Marksman", rarity: "Gold", attack: 1600, magic: 600, defense: 1000, image: "Urgot.png")
yorick_card6 = Card.create(player_id: yorick.id, cardtype: 'Champion', name: "Urgot", title: "the Headsman's Pride", role: "Marksman", rarity: "Gold", attack: 1600, magic: 600, defense: 1000, image: "Urgot.png")
yorick_card7 = Card.create(player_id: yorick.id, cardtype: 'Champion', name: "Katarina", title: "the Sinister Blade", role: "Assassin", rarity: "Gold", attack: 800, magic: 1800, defense: 600, image: "Katarina.png")
yorick_card8 = Card.create(player_id: yorick.id, cardtype: 'Champion', name: "Katarina", title: "the Sinister Blade", role: "Assassin", rarity: "Gold", attack: 800, magic: 1800, defense: 600, image: "Katarina.png")
yorick_card9 = Card.create(player_id: yorick.id, cardtype: 'Champion', name: "Katarina", title: "the Sinister Blade", role: "Assassin", rarity: "Gold", attack: 800, magic: 1800, defense: 600, image: "Katarina.png")
yorick_card10 = Card.create(player_id: yorick.id, cardtype: 'Champion', name: "Kalista", title: "the Spear of Vengeance", role: "Marksman", rarity: "Silver", attack: 1200, magic: 600, defense: 300, image: "Kalista.png")
yorick_card11 = Card.create(player_id: yorick.id, cardtype: 'Champion', name: "Kalista", title: "the Spear of Vengeance", role: "Marksman", rarity: "Silver", attack: 1200, magic: 600, defense: 300, image: "Kalista.png")
yorick_card12 = Card.create(player_id: yorick.id, cardtype: 'Champion', name: "Kalista", title: "the Spear of Vengeance", role: "Marksman", rarity: "Silver", attack: 1200, magic: 600, defense: 300, image: "Kalista.png")
yorick_card13 = Card.create(player_id: yorick.id, cardtype: 'Champion', name: "Swain", title: "the Master Tactician", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 1200, image: "Swain.png")
yorick_card14 = Card.create(player_id: yorick.id, cardtype: 'Champion', name: "Swain", title: "the Master Tactician", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 1200, image: "Swain.png")
yorick_card15 = Card.create(player_id: yorick.id, cardtype: 'Champion', name: "Swain", title: "the Master Tactician", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 1200, image: "Swain.png")
yorick_card16 = Card.create(player_id: yorick.id, cardtype: 'Champion', name: "Riven", title: "the Exile", role: "Fighter", rarity: "Gold", attack: 1600, magic: 200, defense: 1000, image: "Riven.png")
yorick_card17 = Card.create(player_id: yorick.id, cardtype: 'Champion', name: "Riven", title: "the Exile", role: "Fighter", rarity: "Gold", attack: 1600, magic: 200, defense: 1000, image: "Riven.png")
yorick_card18 = Card.create(player_id: yorick.id, cardtype: 'Champion', name: "Riven", title: "the Exile", role: "Fighter", rarity: "Gold", attack: 1600, magic: 200, defense: 1000, image: "Riven.png")
yorick_card19 = Card.create(player_id: yorick.id, cardtype: 'Champion', name: "Draven", title: "the Glorious Executioner", role: "Marksman", rarity: "Gold", attack: 1800, magic: 200, defense: 600, image: "Draven.png")
yorick_card20 = Card.create(player_id: yorick.id, cardtype: 'Champion', name: "Draven", title: "the Glorious Executioner", role: "Marksman", rarity: "Gold", attack: 1800, magic: 200, defense: 600, image: "Draven.png")
yorick_card21 = Card.create(player_id: yorick.id, cardtype: 'Champion', name: "Draven", title: "the Glorious Executioner", role: "Marksman", rarity: "Gold", attack: 1800, magic: 200, defense: 600, image: "Draven.png")
yorick_card22 = Card.create(player_id: yorick.id, cardtype: 'Champion', name: "Yorick", title: "Shepherd of Souls", role: "Marksman", rarity: "Bronze", attack: 800, magic: 500, defense: 200, image: "Yorick.png")
yorick_card23 = Card.create(player_id: yorick.id, cardtype: 'Champion', name: "Yorick", title: "Shepherd of Souls", role: "Marksman", rarity: "Bronze", attack: 800, magic: 500, defense: 200, image: "Yorick.png")
yorick_card24 = Card.create(player_id: yorick.id, cardtype: 'Champion', name: "Yorick", title: "Shepherd of Souls", role: "Marksman", rarity: "Bronze", attack: 800, magic: 500, defense: 200, image: "Yorick.png")
yorick_card25 = Card.create(player_id: yorick.id, cardtype: 'Champion', name: "Karthus", title: "the Deathsinger", role: "Mage", rarity: "Silver", attack: 300, magic: 1500, defense: 300, image: "Karthus.png")
yorick_card26 = Card.create(player_id: yorick.id, cardtype: 'Champion', name: "Karthus", title: "the Deathsinger", role: "Mage", rarity: "Silver", attack: 300, magic: 1500, defense: 300, image: "Karthus.png")
yorick_card27 = Card.create(player_id: yorick.id, cardtype: 'Champion', name: "Karthus", title: "the Deathsinger", role: "Mage", rarity: "Silver", attack: 300, magic: 1500, defense: 300, image: "Karthus.png")
yorick_card28 = Card.create(player_id: yorick.id, cardtype: 'Champion', name: "Talon", title: "the Blade's Shadow", role: "Assassin", rarity: "Gold", attack: 1350, magic: 150, defense: 450, image: "Talon.png")
yorick_card29 = Card.create(player_id: yorick.id, cardtype: 'Champion', name: "Talon", title: "the Blade's Shadow", role: "Assassin", rarity: "Gold", attack: 1350, magic: 150, defense: 450, image: "Talon.png")
yorick_card30 = Card.create(player_id: yorick.id, cardtype: 'Champion', name: "Talon", title: "the Blade's Shadow", role: "Assassin", rarity: "Gold", attack: 1350, magic: 150, defense: 450, image: "Talon.png")
yorick_card31 = Card.create(player_id: yorick.id, cardtype: 'Champion', name: "Twisted Fate", title: "the Card Master", role: "Mage", rarity: "Platinum", attack: 1500, magic: 1500, defense: 500, image: "TwistedFate.png")
yorick_card32 = Card.create(player_id: yorick.id, cardtype: 'Champion', name: "Twisted Fate", title: "the Card Master", role: "Mage", rarity: "Platinum", attack: 1500, magic: 1500, defense: 500, image: "TwistedFate.png")
yorick_card33 = Card.create(player_id: yorick.id, cardtype: 'Champion', name: "Twisted Fate", title: "the Card Master", role: "Mage", rarity: "Platinum", attack: 1500, magic: 1500, defense: 500, image: "TwistedFate.png")
yorick_card34 = Card.create(player_id: yorick.id, cardtype: 'Champion', name: "Zed", title: "the Master of Shadows", role: "Assassin", rarity: "Silver", attack: 1350, magic: 150, defense: 300, image: "Zed.png")
yorick_card35 = Card.create(player_id: yorick.id, cardtype: 'Champion', name: "Zed", title: "the Master of Shadows", role: "Assassin", rarity: "Silver", attack: 1350, magic: 150, defense: 300, image: "Zed.png")
yorick_card36 = Card.create(player_id: yorick.id, cardtype: 'Champion', name: "Zed", title: "the Master of Shadows", role: "Assassin", rarity: "Silver", attack: 1350, magic: 150, defense: 300, image: "Zed.png")
yorick_card37 = Card.create(player_id: yorick.id, cardtype: 'Champion', name: "Vlad", title: "the Crimson Reaper", role: "Mage", rarity: "Silver", attack: 300, magic: 1200, defense: 900, image: "Vlad.png")
yorick_card38 = Card.create(player_id: yorick.id, cardtype: 'Champion', name: "Vlad", title: "the Crimson Reaper", role: "Mage", rarity: "Silver", attack: 300, magic: 1200, defense: 900, image: "Vlad.png")
yorick_card39 = Card.create(player_id: yorick.id, cardtype: 'Champion', name: "Vlad", title: "the Crimson Reaper", role: "Mage", rarity: "Silver", attack: 300, magic: 1200, defense: 900, image: "Vlad.png")
yorick_card40 = Card.create(
  player_id: yorick.id,
  name: "Noxian Guillotine",
  cardtype: "Ability",
  rarity: "Diamond",
  description: "Destroy any champion on your opponent's side of the field",
  effect: "props.noxianGuillotine(props.selectedCard)",
  image: "NoxianGuillotine.png",
  quantity: 0
)

yorick_deckcard1 = Deckcard.create(deck_id: yorick_deck.id, card_id: yorick_card1.id)
yorick_deckcard2 = Deckcard.create(deck_id: yorick_deck.id, card_id: yorick_card2.id)
yorick_deckcard3 = Deckcard.create(deck_id: yorick_deck.id, card_id: yorick_card3.id)
yorick_deckcard4 = Deckcard.create(deck_id: yorick_deck.id, card_id: yorick_card4.id)
yorick_deckcard5 = Deckcard.create(deck_id: yorick_deck.id, card_id: yorick_card5.id)
yorick_deckcard6 = Deckcard.create(deck_id: yorick_deck.id, card_id: yorick_card6.id)
yorick_deckcard7 = Deckcard.create(deck_id: yorick_deck.id, card_id: yorick_card7.id)
yorick_deckcard8 = Deckcard.create(deck_id: yorick_deck.id, card_id: yorick_card8.id)
yorick_deckcard9 = Deckcard.create(deck_id: yorick_deck.id, card_id: yorick_card9.id)
yorick_deckcard10 = Deckcard.create(deck_id: yorick_deck.id, card_id: yorick_card10.id)
yorick_deckcard11 = Deckcard.create(deck_id: yorick_deck.id, card_id: yorick_card11.id)
yorick_deckcard12 = Deckcard.create(deck_id: yorick_deck.id, card_id: yorick_card12.id)
yorick_deckcard13 = Deckcard.create(deck_id: yorick_deck.id, card_id: yorick_card13.id)
yorick_deckcard14 = Deckcard.create(deck_id: yorick_deck.id, card_id: yorick_card14.id)
yorick_deckcard15 = Deckcard.create(deck_id: yorick_deck.id, card_id: yorick_card15.id)
yorick_deckcard16 = Deckcard.create(deck_id: yorick_deck.id, card_id: yorick_card16.id)
yorick_deckcard17 = Deckcard.create(deck_id: yorick_deck.id, card_id: yorick_card17.id)
yorick_deckcard18 = Deckcard.create(deck_id: yorick_deck.id, card_id: yorick_card18.id)
yorick_deckcard19 = Deckcard.create(deck_id: yorick_deck.id, card_id: yorick_card19.id)
yorick_deckcard20 = Deckcard.create(deck_id: yorick_deck.id, card_id: yorick_card20.id)
yorick_deckcard21 = Deckcard.create(deck_id: yorick_deck.id, card_id: yorick_card21.id)
yorick_deckcard22 = Deckcard.create(deck_id: yorick_deck.id, card_id: yorick_card22.id)
yorick_deckcard23 = Deckcard.create(deck_id: yorick_deck.id, card_id: yorick_card23.id)
yorick_deckcard24 = Deckcard.create(deck_id: yorick_deck.id, card_id: yorick_card24.id)
yorick_deckcard25 = Deckcard.create(deck_id: yorick_deck.id, card_id: yorick_card25.id)
yorick_deckcard26 = Deckcard.create(deck_id: yorick_deck.id, card_id: yorick_card26.id)
yorick_deckcard27 = Deckcard.create(deck_id: yorick_deck.id, card_id: yorick_card27.id)
yorick_deckcard28 = Deckcard.create(deck_id: yorick_deck.id, card_id: yorick_card28.id)
yorick_deckcard29 = Deckcard.create(deck_id: yorick_deck.id, card_id: yorick_card29.id)
yorick_deckcard30 = Deckcard.create(deck_id: yorick_deck.id, card_id: yorick_card30.id)
yorick_deckcard31 = Deckcard.create(deck_id: yorick_deck.id, card_id: yorick_card31.id)
yorick_deckcard32 = Deckcard.create(deck_id: yorick_deck.id, card_id: yorick_card32.id)
yorick_deckcard33 = Deckcard.create(deck_id: yorick_deck.id, card_id: yorick_card33.id)
yorick_deckcard34 = Deckcard.create(deck_id: yorick_deck.id, card_id: yorick_card34.id)
yorick_deckcard35 = Deckcard.create(deck_id: yorick_deck.id, card_id: yorick_card35.id)
yorick_deckcard36 = Deckcard.create(deck_id: yorick_deck.id, card_id: yorick_card36.id)
yorick_deckcard37 = Deckcard.create(deck_id: yorick_deck.id, card_id: yorick_card37.id)
yorick_deckcard38 = Deckcard.create(deck_id: yorick_deck.id, card_id: yorick_card38.id)
yorick_deckcard39 = Deckcard.create(deck_id: yorick_deck.id, card_id: yorick_card39.id)
yorick_deckcard40 = Deckcard.create(deck_id: yorick_deck.id, card_id: yorick_card40.id)

thresh_card1 = Card.create(player_id: thresh.id, cardtype: 'Champion', name: "Veigar", title: "the Tiny Master of Evil", role: "Mage", rarity: "Silver", attack: 300, magic: 1500, defense: 300, image: "Veigar.png")
thresh_card2 = Card.create(player_id: thresh.id, cardtype: 'Champion', name: "Veigar", title: "the Tiny Master of Evil", role: "Mage", rarity: "Silver", attack: 300, magic: 1500, defense: 300, image: "Veigar.png")
thresh_card3 = Card.create(player_id: thresh.id, cardtype: 'Champion', name: "Veigar", title: "the Tiny Master of Evil", role: "Mage", rarity: "Silver", attack: 300, magic: 1500, defense: 300, image: "Veigar.png")
thresh_card4 = Card.create(player_id: thresh.id, cardtype: 'Champion', name: "Urgot", title: "the Headsman's Pride", role: "Marksman", rarity: "Gold", attack: 1600, magic: 600, defense: 1000, image: "Urgot.png")
thresh_card5 = Card.create(player_id: thresh.id, cardtype: 'Champion', name: "Urgot", title: "the Headsman's Pride", role: "Marksman", rarity: "Gold", attack: 1600, magic: 600, defense: 1000, image: "Urgot.png")
thresh_card6 = Card.create(player_id: thresh.id, cardtype: 'Champion', name: "Urgot", title: "the Headsman's Pride", role: "Marksman", rarity: "Gold", attack: 1600, magic: 600, defense: 1000, image: "Urgot.png")
thresh_card7 = Card.create(player_id: thresh.id, cardtype: 'Champion', name: "Katarina", title: "the Sinister Blade", role: "Assassin", rarity: "Gold", attack: 800, magic: 1800, defense: 600, image: "Katarina.png")
thresh_card8 = Card.create(player_id: thresh.id, cardtype: 'Champion', name: "Katarina", title: "the Sinister Blade", role: "Assassin", rarity: "Gold", attack: 800, magic: 1800, defense: 600, image: "Katarina.png")
thresh_card9 = Card.create(player_id: thresh.id, cardtype: 'Champion', name: "Katarina", title: "the Sinister Blade", role: "Assassin", rarity: "Gold", attack: 800, magic: 1800, defense: 600, image: "Katarina.png")
thresh_card10 = Card.create(player_id: thresh.id, cardtype: 'Champion', name: "Kalista", title: "the Spear of Vengeance", role: "Marksman", rarity: "Silver", attack: 1200, magic: 600, defense: 300, image: "Kalista.png")
thresh_card11 = Card.create(player_id: thresh.id, cardtype: 'Champion', name: "Kalista", title: "the Spear of Vengeance", role: "Marksman", rarity: "Silver", attack: 1200, magic: 600, defense: 300, image: "Kalista.png")
thresh_card12 = Card.create(player_id: thresh.id, cardtype: 'Champion', name: "Kalista", title: "the Spear of Vengeance", role: "Marksman", rarity: "Silver", attack: 1200, magic: 600, defense: 300, image: "Kalista.png")
thresh_card13 = Card.create(player_id: thresh.id, cardtype: 'Champion', name: "Swain", title: "the Master Tactician", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 1200, image: "Swain.png")
thresh_card14 = Card.create(player_id: thresh.id, cardtype: 'Champion', name: "Swain", title: "the Master Tactician", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 1200, image: "Swain.png")
thresh_card15 = Card.create(player_id: thresh.id, cardtype: 'Champion', name: "Swain", title: "the Master Tactician", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 1200, image: "Swain.png")
thresh_card16 = Card.create(player_id: thresh.id, cardtype: 'Champion', name: "Riven", title: "the Exile", role: "Fighter", rarity: "Gold", attack: 1600, magic: 200, defense: 1000, image: "Riven.png")
thresh_card17 = Card.create(player_id: thresh.id, cardtype: 'Champion', name: "Riven", title: "the Exile", role: "Fighter", rarity: "Gold", attack: 1600, magic: 200, defense: 1000, image: "Riven.png")
thresh_card18 = Card.create(player_id: thresh.id, cardtype: 'Champion', name: "Riven", title: "the Exile", role: "Fighter", rarity: "Gold", attack: 1600, magic: 200, defense: 1000, image: "Riven.png")
thresh_card19 = Card.create(player_id: thresh.id, cardtype: 'Champion', name: "Draven", title: "the Glorious Executioner", role: "Marksman", rarity: "Gold", attack: 1800, magic: 200, defense: 600, image: "Draven.png")
thresh_card20 = Card.create(player_id: thresh.id, cardtype: 'Champion', name: "Draven", title: "the Glorious Executioner", role: "Marksman", rarity: "Gold", attack: 1800, magic: 200, defense: 600, image: "Draven.png")
thresh_card21 = Card.create(player_id: thresh.id, cardtype: 'Champion', name: "Draven", title: "the Glorious Executioner", role: "Marksman", rarity: "Gold", attack: 1800, magic: 200, defense: 600, image: "Draven.png")
thresh_card22 = Card.create(player_id: thresh.id, cardtype: 'Champion', name: "Thresh", title: "the Chain Warden", role: "Support", rarity: "Bronze", attack: 750, magic: 900, defense: 900, image: "Thresh.png")
thresh_card23 = Card.create(player_id: thresh.id, cardtype: 'Champion', name: "Thresh", title: "the Chain Warden", role: "Support", rarity: "Bronze", attack: 750, magic: 900, defense: 900, image: "Thresh.png")
thresh_card24 = Card.create(player_id: thresh.id, cardtype: 'Champion', name: "Thresh", title: "the Chain Warden", role: "Support", rarity: "Bronze", attack: 750, magic: 900, defense: 900, image: "Thresh.png")
thresh_card25 = Card.create(player_id: thresh.id, cardtype: 'Champion', name: "Karthus", title: "the Deathsinger", role: "Mage", rarity: "Silver", attack: 300, magic: 1500, defense: 300, image: "Karthus.png")
thresh_card26 = Card.create(player_id: thresh.id, cardtype: 'Champion', name: "Karthus", title: "the Deathsinger", role: "Mage", rarity: "Silver", attack: 300, magic: 1500, defense: 300, image: "Karthus.png")
thresh_card27 = Card.create(player_id: thresh.id, cardtype: 'Champion', name: "Karthus", title: "the Deathsinger", role: "Mage", rarity: "Silver", attack: 300, magic: 1500, defense: 300, image: "Karthus.png")
thresh_card28 = Card.create(player_id: thresh.id, cardtype: 'Champion', name: "Talon", title: "the Blade's Shadow", role: "Assassin", rarity: "Gold", attack: 1350, magic: 150, defense: 450, image: "Talon.png")
thresh_card29 = Card.create(player_id: thresh.id, cardtype: 'Champion', name: "Talon", title: "the Blade's Shadow", role: "Assassin", rarity: "Gold", attack: 1350, magic: 150, defense: 450, image: "Talon.png")
thresh_card30 = Card.create(player_id: thresh.id, cardtype: 'Champion', name: "Talon", title: "the Blade's Shadow", role: "Assassin", rarity: "Gold", attack: 1350, magic: 150, defense: 450, image: "Talon.png")
thresh_card31 = Card.create(player_id: thresh.id, cardtype: 'Champion', name: "Vlad", title: "the Crimson Reaper", role: "Mage", rarity: "Silver", attack: 300, magic: 1200, defense: 900, image: "Vlad.png")
thresh_card32 = Card.create(player_id: thresh.id, cardtype: 'Champion', name: "Vlad", title: "the Crimson Reaper", role: "Mage", rarity: "Silver", attack: 300, magic: 1200, defense: 900, image: "Vlad.png")
thresh_card33 = Card.create(player_id: thresh.id, cardtype: 'Champion', name: "Zed", title: "the Master of Shadows", role: "Assassin", rarity: "Silver", attack: 1350, magic: 150, defense: 300, image: "Zed.png")
thresh_card34 = Card.create(player_id: thresh.id, cardtype: 'Champion', name: "Zed", title: "the Master of Shadows", role: "Assassin", rarity: "Silver", attack: 1350, magic: 150, defense: 300, image: "Zed.png")
thresh_card35 = Card.create(player_id: thresh.id, cardtype: 'Champion', name: "Zed", title: "the Master of Shadows", role: "Assassin", rarity: "Silver", attack: 1350, magic: 150, defense: 300, image: "Zed.png")
thresh_card36 = Card.create(player_id: thresh.id, cardtype: 'Champion', name: "Twisted Fate", title: "the Card Master", role: "Mage", rarity: "Platinum", attack: 1500, magic: 1500, defense: 500, image: "TwistedFate.png")
thresh_card37 = Card.create(player_id: thresh.id, cardtype: 'Champion', name: "Twisted Fate", title: "the Card Master", role: "Mage", rarity: "Platinum", attack: 1500, magic: 1500, defense: 500, image: "TwistedFate.png")
thresh_card38 = Card.create(player_id: thresh.id, cardtype: 'Champion', name: "Twisted Fate", title: "the Card Master", role: "Mage", rarity: "Platinum", attack: 1500, magic: 1500, defense: 500, image: "TwistedFate.png")
thresh_card39 = Card.create(
  player_id: thresh.id,
  name: "Noxian Guillotine",
  cardtype: "Ability",
  rarity: "Diamond",
  description: "Destroy any champion on your opponent's side of the field",
  effect: "props.noxianGuillotine(props.selectedCard)",
  image: "NoxianGuillotine.png",
  quantity: 0
)
thresh_card40 = Card.create(
  player_id: thresh.id,
  name: "Noxian Guillotine",
  cardtype: "Ability",
  rarity: "Diamond",
  description: "Destroy any champion on your opponent's side of the field",
  effect: "props.noxianGuillotine(props.selectedCard)",
  image: "NoxianGuillotine.png",
  quantity: 0
)

thresh_deckcard1 = Deckcard.create(deck_id: thresh_deck.id, card_id: thresh_card1.id)
thresh_deckcard2 = Deckcard.create(deck_id: thresh_deck.id, card_id: thresh_card2.id)
thresh_deckcard3 = Deckcard.create(deck_id: thresh_deck.id, card_id: thresh_card3.id)
thresh_deckcard4 = Deckcard.create(deck_id: thresh_deck.id, card_id: thresh_card4.id)
thresh_deckcard5 = Deckcard.create(deck_id: thresh_deck.id, card_id: thresh_card5.id)
thresh_deckcard6 = Deckcard.create(deck_id: thresh_deck.id, card_id: thresh_card6.id)
thresh_deckcard7 = Deckcard.create(deck_id: thresh_deck.id, card_id: thresh_card7.id)
thresh_deckcard8 = Deckcard.create(deck_id: thresh_deck.id, card_id: thresh_card8.id)
thresh_deckcard9 = Deckcard.create(deck_id: thresh_deck.id, card_id: thresh_card9.id)
thresh_deckcard10 = Deckcard.create(deck_id: thresh_deck.id, card_id: thresh_card10.id)
thresh_deckcard11 = Deckcard.create(deck_id: thresh_deck.id, card_id: thresh_card11.id)
thresh_deckcard12 = Deckcard.create(deck_id: thresh_deck.id, card_id: thresh_card12.id)
thresh_deckcard13 = Deckcard.create(deck_id: thresh_deck.id, card_id: thresh_card13.id)
thresh_deckcard14 = Deckcard.create(deck_id: thresh_deck.id, card_id: thresh_card14.id)
thresh_deckcard15 = Deckcard.create(deck_id: thresh_deck.id, card_id: thresh_card15.id)
thresh_deckcard16 = Deckcard.create(deck_id: thresh_deck.id, card_id: thresh_card16.id)
thresh_deckcard17 = Deckcard.create(deck_id: thresh_deck.id, card_id: thresh_card17.id)
thresh_deckcard18 = Deckcard.create(deck_id: thresh_deck.id, card_id: thresh_card18.id)
thresh_deckcard19 = Deckcard.create(deck_id: thresh_deck.id, card_id: thresh_card19.id)
thresh_deckcard20 = Deckcard.create(deck_id: thresh_deck.id, card_id: thresh_card20.id)
thresh_deckcard21 = Deckcard.create(deck_id: thresh_deck.id, card_id: thresh_card21.id)
thresh_deckcard22 = Deckcard.create(deck_id: thresh_deck.id, card_id: thresh_card22.id)
thresh_deckcard23 = Deckcard.create(deck_id: thresh_deck.id, card_id: thresh_card23.id)
thresh_deckcard24 = Deckcard.create(deck_id: thresh_deck.id, card_id: thresh_card24.id)
thresh_deckcard25 = Deckcard.create(deck_id: thresh_deck.id, card_id: thresh_card25.id)
thresh_deckcard26 = Deckcard.create(deck_id: thresh_deck.id, card_id: thresh_card26.id)
thresh_deckcard27 = Deckcard.create(deck_id: thresh_deck.id, card_id: thresh_card27.id)
thresh_deckcard28 = Deckcard.create(deck_id: thresh_deck.id, card_id: thresh_card28.id)
thresh_deckcard29 = Deckcard.create(deck_id: thresh_deck.id, card_id: thresh_card29.id)
thresh_deckcard30 = Deckcard.create(deck_id: thresh_deck.id, card_id: thresh_card30.id)
thresh_deckcard31 = Deckcard.create(deck_id: thresh_deck.id, card_id: thresh_card31.id)
thresh_deckcard32 = Deckcard.create(deck_id: thresh_deck.id, card_id: thresh_card32.id)
thresh_deckcard33 = Deckcard.create(deck_id: thresh_deck.id, card_id: thresh_card33.id)
thresh_deckcard34 = Deckcard.create(deck_id: thresh_deck.id, card_id: thresh_card34.id)
thresh_deckcard35 = Deckcard.create(deck_id: thresh_deck.id, card_id: thresh_card35.id)
thresh_deckcard36 = Deckcard.create(deck_id: thresh_deck.id, card_id: thresh_card36.id)
thresh_deckcard37 = Deckcard.create(deck_id: thresh_deck.id, card_id: thresh_card37.id)
thresh_deckcard38 = Deckcard.create(deck_id: thresh_deck.id, card_id: thresh_card38.id)
thresh_deckcard39 = Deckcard.create(deck_id: thresh_deck.id, card_id: thresh_card39.id)
thresh_deckcard40 = Deckcard.create(deck_id: thresh_deck.id, card_id: thresh_card40.id)

elise_card1 = Card.create(player_id: elise.id, cardtype: 'Champion', name: "Veigar", title: "the Tiny Master of Evil", role: "Mage", rarity: "Silver", attack: 300, magic: 1500, defense: 300, image: "Veigar.png")
elise_card2 = Card.create(player_id: elise.id, cardtype: 'Champion', name: "Veigar", title: "the Tiny Master of Evil", role: "Mage", rarity: "Silver", attack: 300, magic: 1500, defense: 300, image: "Veigar.png")
elise_card3 = Card.create(player_id: elise.id, cardtype: 'Champion', name: "Veigar", title: "the Tiny Master of Evil", role: "Mage", rarity: "Silver", attack: 300, magic: 1500, defense: 300, image: "Veigar.png")
elise_card4 = Card.create(player_id: elise.id, cardtype: 'Champion', name: "Urgot", title: "the Headsman's Pride", role: "Marksman", rarity: "Gold", attack: 1600, magic: 600, defense: 1000, image: "Urgot.png")
elise_card5 = Card.create(player_id: elise.id, cardtype: 'Champion', name: "Urgot", title: "the Headsman's Pride", role: "Marksman", rarity: "Gold", attack: 1600, magic: 600, defense: 1000, image: "Urgot.png")
elise_card6 = Card.create(player_id: elise.id, cardtype: 'Champion', name: "Urgot", title: "the Headsman's Pride", role: "Marksman", rarity: "Gold", attack: 1600, magic: 600, defense: 1000, image: "Urgot.png")
elise_card7 = Card.create(player_id: elise.id, cardtype: 'Champion', name: "Katarina", title: "the Sinister Blade", role: "Assassin", rarity: "Gold", attack: 800, magic: 1800, defense: 600, image: "Katarina.png")
elise_card8 = Card.create(player_id: elise.id, cardtype: 'Champion', name: "Katarina", title: "the Sinister Blade", role: "Assassin", rarity: "Gold", attack: 800, magic: 1800, defense: 600, image: "Katarina.png")
elise_card9 = Card.create(player_id: elise.id, cardtype: 'Champion', name: "Katarina", title: "the Sinister Blade", role: "Assassin", rarity: "Gold", attack: 800, magic: 1800, defense: 600, image: "Katarina.png")
elise_card10 = Card.create(player_id: elise.id, cardtype: 'Champion', name: "Elise", title: "the Spider Queen", role: "Mage", rarity: "Gold", attack: 1500, magic: 1750, defense: 1250, image: "Elise.png")
elise_card11 = Card.create(player_id: elise.id, cardtype: 'Champion', name: "Elise", title: "the Spider Queen", role: "Mage", rarity: "Gold", attack: 1500, magic: 1750, defense: 1250, image: "Elise.png")
elise_card12 = Card.create(player_id: elise.id, cardtype: 'Champion', name: "Elise", title: "the Spider Queen", role: "Mage", rarity: "Gold", attack: 1500, magic: 1750, defense: 1250, image: "Elise.png")
elise_card13 = Card.create(player_id: elise.id, cardtype: 'Champion', name: "Swain", title: "the Master Tactician", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 1200, image: "Swain.png")
elise_card14 = Card.create(player_id: elise.id, cardtype: 'Champion', name: "Swain", title: "the Master Tactician", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 1200, image: "Swain.png")
elise_card15 = Card.create(player_id: elise.id, cardtype: 'Champion', name: "Swain", title: "the Master Tactician", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 1200, image: "Swain.png")
elise_card16 = Card.create(player_id: elise.id, cardtype: 'Champion', name: "Riven", title: "the Exile", role: "Fighter", rarity: "Gold", attack: 1600, magic: 200, defense: 1000, image: "Riven.png")
elise_card17 = Card.create(player_id: elise.id, cardtype: 'Champion', name: "Riven", title: "the Exile", role: "Fighter", rarity: "Gold", attack: 1600, magic: 200, defense: 1000, image: "Riven.png")
elise_card18 = Card.create(player_id: elise.id, cardtype: 'Champion', name: "Riven", title: "the Exile", role: "Fighter", rarity: "Gold", attack: 1600, magic: 200, defense: 1000, image: "Riven.png")
elise_card19 = Card.create(player_id: elise.id, cardtype: 'Champion', name: "Draven", title: "the Glorious Executioner", role: "Marksman", rarity: "Gold", attack: 1800, magic: 200, defense: 600, image: "Draven.png")
elise_card20 = Card.create(player_id: elise.id, cardtype: 'Champion', name: "Draven", title: "the Glorious Executioner", role: "Marksman", rarity: "Gold", attack: 1800, magic: 200, defense: 600, image: "Draven.png")
elise_card21 = Card.create(player_id: elise.id, cardtype: 'Champion', name: "Draven", title: "the Glorious Executioner", role: "Marksman", rarity: "Gold", attack: 1800, magic: 200, defense: 600, image: "Draven.png")
elise_card22 = Card.create(player_id: elise.id, cardtype: 'Champion', name: "Thresh", title: "the Chain Warden", role: "Support", rarity: "Bronze", attack: 750, magic: 900, defense: 900, image: "Thresh.png")
elise_card23 = Card.create(player_id: elise.id, cardtype: 'Champion', name: "Thresh", title: "the Chain Warden", role: "Support", rarity: "Bronze", attack: 750, magic: 900, defense: 900, image: "Thresh.png")
elise_card24 = Card.create(player_id: elise.id, cardtype: 'Champion', name: "Thresh", title: "the Chain Warden", role: "Support", rarity: "Bronze", attack: 750, magic: 900, defense: 900, image: "Thresh.png")
elise_card25 = Card.create(player_id: elise.id, cardtype: 'Champion', name: "Karthus", title: "the Deathsinger", role: "Mage", rarity: "Silver", attack: 300, magic: 1500, defense: 300, image: "Karthus.png")
elise_card26 = Card.create(player_id: elise.id, cardtype: 'Champion', name: "Karthus", title: "the Deathsinger", role: "Mage", rarity: "Silver", attack: 300, magic: 1500, defense: 300, image: "Karthus.png")
elise_card27 = Card.create(player_id: elise.id, cardtype: 'Champion', name: "Karthus", title: "the Deathsinger", role: "Mage", rarity: "Silver", attack: 300, magic: 1500, defense: 300, image: "Karthus.png")
elise_card28 = Card.create(player_id: elise.id, cardtype: 'Champion', name: "Talon", title: "the Blade's Shadow", role: "Assassin", rarity: "Gold", attack: 1350, magic: 150, defense: 450, image: "Talon.png")
elise_card29 = Card.create(player_id: elise.id, cardtype: 'Champion', name: "Talon", title: "the Blade's Shadow", role: "Assassin", rarity: "Gold", attack: 1350, magic: 150, defense: 450, image: "Talon.png")
elise_card30 = Card.create(player_id: elise.id, cardtype: 'Champion', name: "Talon", title: "the Blade's Shadow", role: "Assassin", rarity: "Gold", attack: 1350, magic: 150, defense: 450, image: "Talon.png")
elise_card31 = Card.create(player_id: elise.id, cardtype: 'Champion', name: "Kalista", title: "the Spear of Vengeance", role: "Marksman", rarity: "Silver", attack: 1200, magic: 600, defense: 300, image: "Kalista.png")
elise_card32 = Card.create(player_id: elise.id, cardtype: 'Champion', name: "Kalista", title: "the Spear of Vengeance", role: "Marksman", rarity: "Silver", attack: 1200, magic: 600, defense: 300, image: "Kalista.png")
elise_card33 = Card.create(player_id: elise.id, cardtype: 'Champion', name: "Zed", title: "the Master of Shadows", role: "Assassin", rarity: "Silver", attack: 1350, magic: 150, defense: 300, image: "Zed.png")
elise_card34 = Card.create(player_id: elise.id, cardtype: 'Champion', name: "Zed", title: "the Master of Shadows", role: "Assassin", rarity: "Silver", attack: 1350, magic: 150, defense: 300, image: "Zed.png")
elise_card35 = Card.create(player_id: elise.id, cardtype: 'Champion', name: "Zed", title: "the Master of Shadows", role: "Assassin", rarity: "Silver", attack: 1350, magic: 150, defense: 300, image: "Zed.png")
elise_card36 = Card.create(player_id: elise.id, cardtype: 'Champion', name: "Twisted Fate", title: "the Card Master", role: "Mage", rarity: "Platinum", attack: 1500, magic: 1500, defense: 500, image: "TwistedFate.png")
elise_card37 = Card.create(player_id: elise.id, cardtype: 'Champion', name: "Twisted Fate", title: "the Card Master", role: "Mage", rarity: "Platinum", attack: 1500, magic: 1500, defense: 500, image: "TwistedFate.png")
elise_card38 = Card.create(player_id: elise.id, cardtype: 'Champion', name: "Twisted Fate", title: "the Card Master", role: "Mage", rarity: "Platinum", attack: 1500, magic: 1500, defense: 500, image: "TwistedFate.png")
elise_card39 = Card.create(
  player_id: elise.id,
  name: "Noxian Guillotine",
  cardtype: "Ability",
  rarity: "Diamond",
  description: "Destroy any champion on your opponent's side of the field",
  effect: "props.noxianGuillotine(props.selectedCard)",
  image: "NoxianGuillotine.png",
  quantity: 0
)
elise_card40 = Card.create(
  player_id: elise.id,
  name: "Noxian Guillotine",
  cardtype: "Ability",
  rarity: "Diamond",
  description: "Destroy any champion on your opponent's side of the field",
  effect: "props.noxianGuillotine(props.selectedCard)",
  image: "NoxianGuillotine.png",
  quantity: 0
)

elise_deckcard1 = Deckcard.create(deck_id: elise_deck.id, card_id: elise_card1.id)
elise_deckcard2 = Deckcard.create(deck_id: elise_deck.id, card_id: elise_card2.id)
elise_deckcard3 = Deckcard.create(deck_id: elise_deck.id, card_id: elise_card3.id)
elise_deckcard4 = Deckcard.create(deck_id: elise_deck.id, card_id: elise_card4.id)
elise_deckcard5 = Deckcard.create(deck_id: elise_deck.id, card_id: elise_card5.id)
elise_deckcard6 = Deckcard.create(deck_id: elise_deck.id, card_id: elise_card6.id)
elise_deckcard7 = Deckcard.create(deck_id: elise_deck.id, card_id: elise_card7.id)
elise_deckcard8 = Deckcard.create(deck_id: elise_deck.id, card_id: elise_card8.id)
elise_deckcard9 = Deckcard.create(deck_id: elise_deck.id, card_id: elise_card9.id)
elise_deckcard10 = Deckcard.create(deck_id: elise_deck.id, card_id: elise_card10.id)
elise_deckcard11 = Deckcard.create(deck_id: elise_deck.id, card_id: elise_card11.id)
elise_deckcard12 = Deckcard.create(deck_id: elise_deck.id, card_id: elise_card12.id)
elise_deckcard13 = Deckcard.create(deck_id: elise_deck.id, card_id: elise_card13.id)
elise_deckcard14 = Deckcard.create(deck_id: elise_deck.id, card_id: elise_card14.id)
elise_deckcard15 = Deckcard.create(deck_id: elise_deck.id, card_id: elise_card15.id)
elise_deckcard16 = Deckcard.create(deck_id: elise_deck.id, card_id: elise_card16.id)
elise_deckcard17 = Deckcard.create(deck_id: elise_deck.id, card_id: elise_card17.id)
elise_deckcard18 = Deckcard.create(deck_id: elise_deck.id, card_id: elise_card18.id)
elise_deckcard19 = Deckcard.create(deck_id: elise_deck.id, card_id: elise_card19.id)
elise_deckcard20 = Deckcard.create(deck_id: elise_deck.id, card_id: elise_card20.id)
elise_deckcard21 = Deckcard.create(deck_id: elise_deck.id, card_id: elise_card21.id)
elise_deckcard22 = Deckcard.create(deck_id: elise_deck.id, card_id: elise_card22.id)
elise_deckcard23 = Deckcard.create(deck_id: elise_deck.id, card_id: elise_card23.id)
elise_deckcard24 = Deckcard.create(deck_id: elise_deck.id, card_id: elise_card24.id)
elise_deckcard25 = Deckcard.create(deck_id: elise_deck.id, card_id: elise_card25.id)
elise_deckcard26 = Deckcard.create(deck_id: elise_deck.id, card_id: elise_card26.id)
elise_deckcard27 = Deckcard.create(deck_id: elise_deck.id, card_id: elise_card27.id)
elise_deckcard28 = Deckcard.create(deck_id: elise_deck.id, card_id: elise_card28.id)
elise_deckcard29 = Deckcard.create(deck_id: elise_deck.id, card_id: elise_card29.id)
elise_deckcard30 = Deckcard.create(deck_id: elise_deck.id, card_id: elise_card30.id)
elise_deckcard31 = Deckcard.create(deck_id: elise_deck.id, card_id: elise_card31.id)
elise_deckcard32 = Deckcard.create(deck_id: elise_deck.id, card_id: elise_card32.id)
elise_deckcard33 = Deckcard.create(deck_id: elise_deck.id, card_id: elise_card33.id)
elise_deckcard34 = Deckcard.create(deck_id: elise_deck.id, card_id: elise_card34.id)
elise_deckcard35 = Deckcard.create(deck_id: elise_deck.id, card_id: elise_card35.id)
elise_deckcard36 = Deckcard.create(deck_id: elise_deck.id, card_id: elise_card36.id)
elise_deckcard37 = Deckcard.create(deck_id: elise_deck.id, card_id: elise_card37.id)
elise_deckcard38 = Deckcard.create(deck_id: elise_deck.id, card_id: elise_card38.id)
elise_deckcard39 = Deckcard.create(deck_id: elise_deck.id, card_id: elise_card39.id)
elise_deckcard40 = Deckcard.create(deck_id: elise_deck.id, card_id: elise_card40.id)

pantheon_card1 = Card.create(player_id: pantheon.id, cardtype: 'Champion', name: "Veigar", title: "the Tiny Master of Evil", role: "Mage", rarity: "Silver", attack: 300, magic: 1500, defense: 300, image: "Veigar.png")
pantheon_card2 = Card.create(player_id: pantheon.id, cardtype: 'Champion', name: "Veigar", title: "the Tiny Master of Evil", role: "Mage", rarity: "Silver", attack: 300, magic: 1500, defense: 300, image: "Veigar.png")
pantheon_card3 = Card.create(player_id: pantheon.id, cardtype: 'Champion', name: "Veigar", title: "the Tiny Master of Evil", role: "Mage", rarity: "Silver", attack: 300, magic: 1500, defense: 300, image: "Veigar.png")
pantheon_card4 = Card.create(player_id: pantheon.id, cardtype: 'Champion', name: "Urgot", title: "the Headsman's Pride", role: "Marksman", rarity: "Gold", attack: 1600, magic: 600, defense: 1000, image: "Urgot.png")
pantheon_card5 = Card.create(player_id: pantheon.id, cardtype: 'Champion', name: "Urgot", title: "the Headsman's Pride", role: "Marksman", rarity: "Gold", attack: 1600, magic: 600, defense: 1000, image: "Urgot.png")
pantheon_card6 = Card.create(player_id: pantheon.id, cardtype: 'Champion', name: "Urgot", title: "the Headsman's Pride", role: "Marksman", rarity: "Gold", attack: 1600, magic: 600, defense: 1000, image: "Urgot.png")
pantheon_card7 = Card.create(player_id: pantheon.id, cardtype: 'Champion', name: "Katarina", title: "the Sinister Blade", role: "Assassin", rarity: "Gold", attack: 800, magic: 1800, defense: 600, image: "Katarina.png")
pantheon_card8 = Card.create(player_id: pantheon.id, cardtype: 'Champion', name: "Katarina", title: "the Sinister Blade", role: "Assassin", rarity: "Gold", attack: 800, magic: 1800, defense: 600, image: "Katarina.png")
pantheon_card9 = Card.create(player_id: pantheon.id, cardtype: 'Champion', name: "Katarina", title: "the Sinister Blade", role: "Assassin", rarity: "Gold", attack: 800, magic: 1800, defense: 600, image: "Katarina.png")
pantheon_card10 = Card.create(player_id: pantheon.id, cardtype: 'Champion', name: "Elise", title: "the Spider Queen", role: "Mage", rarity: "Gold", attack: 1500, magic: 1750, defense: 1250, image: "Elise.png")
pantheon_card11 = Card.create(player_id: pantheon.id, cardtype: 'Champion', name: "Elise", title: "the Spider Queen", role: "Mage", rarity: "Gold", attack: 1500, magic: 1750, defense: 1250, image: "Elise.png")
pantheon_card12 = Card.create(player_id: pantheon.id, cardtype: 'Champion', name: "Elise", title: "the Spider Queen", role: "Mage", rarity: "Gold", attack: 1500, magic: 1750, defense: 1250, image: "Elise.png")
pantheon_card13 = Card.create(player_id: pantheon.id, cardtype: 'Champion', name: "Swain", title: "the Master Tactician", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 1200, image: "Swain.png")
pantheon_card14 = Card.create(player_id: pantheon.id, cardtype: 'Champion', name: "Swain", title: "the Master Tactician", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 1200, image: "Swain.png")
pantheon_card15 = Card.create(player_id: pantheon.id, cardtype: 'Champion', name: "Swain", title: "the Master Tactician", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 1200, image: "Swain.png")
pantheon_card16 = Card.create(player_id: pantheon.id, cardtype: 'Champion', name: "Riven", title: "the Exile", role: "Fighter", rarity: "Gold", attack: 1600, magic: 200, defense: 1000, image: "Riven.png")
pantheon_card17 = Card.create(player_id: pantheon.id, cardtype: 'Champion', name: "Riven", title: "the Exile", role: "Fighter", rarity: "Gold", attack: 1600, magic: 200, defense: 1000, image: "Riven.png")
pantheon_card18 = Card.create(player_id: pantheon.id, cardtype: 'Champion', name: "Riven", title: "the Exile", role: "Fighter", rarity: "Gold", attack: 1600, magic: 200, defense: 1000, image: "Riven.png")
pantheon_card19 = Card.create(player_id: pantheon.id, cardtype: 'Champion', name: "Draven", title: "the Glorious Executioner", role: "Marksman", rarity: "Gold", attack: 1800, magic: 200, defense: 600, image: "Draven.png")
pantheon_card20 = Card.create(player_id: pantheon.id, cardtype: 'Champion', name: "Draven", title: "the Glorious Executioner", role: "Marksman", rarity: "Gold", attack: 1800, magic: 200, defense: 600, image: "Draven.png")
pantheon_card21 = Card.create(player_id: pantheon.id, cardtype: 'Champion', name: "Draven", title: "the Glorious Executioner", role: "Marksman", rarity: "Gold", attack: 1800, magic: 200, defense: 600, image: "Draven.png")
pantheon_card22 = Card.create(player_id: pantheon.id, cardtype: 'Champion', name: "Pantheon", title: "the Artisan of War", role: "Fighter", rarity: "Bronze", attack: 900, magic: 300, defense: 400, image: "Pantheon.png")
pantheon_card23 = Card.create(player_id: pantheon.id, cardtype: 'Champion', name: "Pantheon", title: "the Artisan of War", role: "Fighter", rarity: "Bronze", attack: 900, magic: 300, defense: 400, image: "Pantheon.png")
pantheon_card24 = Card.create(player_id: pantheon.id, cardtype: 'Champion', name: "Pantheon", title: "the Artisan of War", role: "Fighter", rarity: "Bronze", attack: 900, magic: 300, defense: 400, image: "Pantheon.png")
pantheon_card25 = Card.create(player_id: pantheon.id, cardtype: 'Champion', name: "Karthus", title: "the Deathsinger", role: "Mage", rarity: "Silver", attack: 300, magic: 1500, defense: 300, image: "Karthus.png")
pantheon_card26 = Card.create(player_id: pantheon.id, cardtype: 'Champion', name: "Karthus", title: "the Deathsinger", role: "Mage", rarity: "Silver", attack: 300, magic: 1500, defense: 300, image: "Karthus.png")
pantheon_card27 = Card.create(player_id: pantheon.id, cardtype: 'Champion', name: "Karthus", title: "the Deathsinger", role: "Mage", rarity: "Silver", attack: 300, magic: 1500, defense: 300, image: "Karthus.png")
pantheon_card28 = Card.create(player_id: pantheon.id, cardtype: 'Champion', name: "Twisted Fate", title: "the Card Master", role: "Mage", rarity: "Platinum", attack: 1500, magic: 1500, defense: 500, image: "TwistedFate.png")
pantheon_card29 = Card.create(player_id: pantheon.id, cardtype: 'Champion', name: "Twisted Fate", title: "the Card Master", role: "Mage", rarity: "Platinum", attack: 1500, magic: 1500, defense: 500, image: "TwistedFate.png")
pantheon_card30 = Card.create(player_id: pantheon.id, cardtype: 'Champion', name: "Twisted Fate", title: "the Card Master", role: "Mage", rarity: "Platinum", attack: 1500, magic: 1500, defense: 500, image: "TwistedFate.png")
pantheon_card31 = Card.create(player_id: pantheon.id, cardtype: 'Champion', name: "Syndra", title: "the Dark Sovereign", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 600, image: "Syndra.png")
pantheon_card32 = Card.create(player_id: pantheon.id, cardtype: 'Champion', name: "Syndra", title: "the Dark Sovereign", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 600, image: "Syndra.png")
pantheon_card33 = Card.create(player_id: pantheon.id, cardtype: 'Champion', name: "Heimerdinger", title: "the Reverd Inventor", role: "Mage", rarity: "Gold", attack: 400, magic: 1600, defense: 1200, image: "Heimerdinger.png")
pantheon_card34 = Card.create(player_id: pantheon.id, cardtype: 'Champion', name: "Heimerdinger", title: "the Reverd Inventor", role: "Mage", rarity: "Gold", attack: 400, magic: 1600, defense: 1200, image: "Heimerdinger.png")
pantheon_card35 = Card.create(player_id: pantheon.id, cardtype: 'Champion', name: "Heimerdinger", title: "the Reverd Inventor", role: "Mage", rarity: "Gold", attack: 400, magic: 1600, defense: 1200, image: "Heimerdinger.png")
pantheon_card36 = Card.create(player_id: pantheon.id, cardtype: 'Champion', name: "Kassadin", title: "the Void Walker", role: "Assassin", rarity: "Gold", attack: 600, magic: 1600, defense: 1000, image: "Kassadin.png")
pantheon_card37 = Card.create(player_id: pantheon.id, cardtype: 'Champion', name: "Kassadin", title: "the Void Walker", role: "Assassin", rarity: "Gold", attack: 600, magic: 1600, defense: 1000, image: "Kassadin.png")
pantheon_card38 = Card.create(player_id: pantheon.id, cardtype: 'Champion', name: "Kassadin", title: "the Void Walker", role: "Assassin", rarity: "Gold", attack: 600, magic: 1600, defense: 1000, image: "Kassadin.png")
pantheon_card39 = Card.create(
  player_id: pantheon.id,
  name: "Noxian Guillotine",
  cardtype: "Ability",
  rarity: "Diamond",
  description: "Destroy any champion on your opponent's side of the field",
  effect: "props.noxianGuillotine(props.selectedCard)",
  image: "NoxianGuillotine.png",
  quantity: 0
)
pantheon_card40 = Card.create(
  player_id: pantheon.id,
  name: "Noxian Guillotine",
  cardtype: "Ability",
  rarity: "Diamond",
  description: "Destroy any champion on your opponent's side of the field",
  effect: "props.noxianGuillotine(props.selectedCard)",
  image: "NoxianGuillotine.png",
  quantity: 0
)

pantheon_deckcard1 = Deckcard.create(deck_id: pantheon_deck.id, card_id: pantheon_card1.id)
pantheon_deckcard2 = Deckcard.create(deck_id: pantheon_deck.id, card_id: pantheon_card2.id)
pantheon_deckcard3 = Deckcard.create(deck_id: pantheon_deck.id, card_id: pantheon_card3.id)
pantheon_deckcard4 = Deckcard.create(deck_id: pantheon_deck.id, card_id: pantheon_card4.id)
pantheon_deckcard5 = Deckcard.create(deck_id: pantheon_deck.id, card_id: pantheon_card5.id)
pantheon_deckcard6 = Deckcard.create(deck_id: pantheon_deck.id, card_id: pantheon_card6.id)
pantheon_deckcard7 = Deckcard.create(deck_id: pantheon_deck.id, card_id: pantheon_card7.id)
pantheon_deckcard8 = Deckcard.create(deck_id: pantheon_deck.id, card_id: pantheon_card8.id)
pantheon_deckcard9 = Deckcard.create(deck_id: pantheon_deck.id, card_id: pantheon_card9.id)
pantheon_deckcard10 = Deckcard.create(deck_id: pantheon_deck.id, card_id: pantheon_card10.id)
pantheon_deckcard11 = Deckcard.create(deck_id: pantheon_deck.id, card_id: pantheon_card11.id)
pantheon_deckcard12 = Deckcard.create(deck_id: pantheon_deck.id, card_id: pantheon_card12.id)
pantheon_deckcard13 = Deckcard.create(deck_id: pantheon_deck.id, card_id: pantheon_card13.id)
pantheon_deckcard14 = Deckcard.create(deck_id: pantheon_deck.id, card_id: pantheon_card14.id)
pantheon_deckcard15 = Deckcard.create(deck_id: pantheon_deck.id, card_id: pantheon_card15.id)
pantheon_deckcard16 = Deckcard.create(deck_id: pantheon_deck.id, card_id: pantheon_card16.id)
pantheon_deckcard17 = Deckcard.create(deck_id: pantheon_deck.id, card_id: pantheon_card17.id)
pantheon_deckcard18 = Deckcard.create(deck_id: pantheon_deck.id, card_id: pantheon_card18.id)
pantheon_deckcard19 = Deckcard.create(deck_id: pantheon_deck.id, card_id: pantheon_card19.id)
pantheon_deckcard20 = Deckcard.create(deck_id: pantheon_deck.id, card_id: pantheon_card20.id)
pantheon_deckcard21 = Deckcard.create(deck_id: pantheon_deck.id, card_id: pantheon_card21.id)
pantheon_deckcard22 = Deckcard.create(deck_id: pantheon_deck.id, card_id: pantheon_card22.id)
pantheon_deckcard23 = Deckcard.create(deck_id: pantheon_deck.id, card_id: pantheon_card23.id)
pantheon_deckcard24 = Deckcard.create(deck_id: pantheon_deck.id, card_id: pantheon_card24.id)
pantheon_deckcard25 = Deckcard.create(deck_id: pantheon_deck.id, card_id: pantheon_card25.id)
pantheon_deckcard26 = Deckcard.create(deck_id: pantheon_deck.id, card_id: pantheon_card26.id)
pantheon_deckcard27 = Deckcard.create(deck_id: pantheon_deck.id, card_id: pantheon_card27.id)
pantheon_deckcard28 = Deckcard.create(deck_id: pantheon_deck.id, card_id: pantheon_card28.id)
pantheon_deckcard29 = Deckcard.create(deck_id: pantheon_deck.id, card_id: pantheon_card29.id)
pantheon_deckcard30 = Deckcard.create(deck_id: pantheon_deck.id, card_id: pantheon_card30.id)
pantheon_deckcard31 = Deckcard.create(deck_id: pantheon_deck.id, card_id: pantheon_card31.id)
pantheon_deckcard32 = Deckcard.create(deck_id: pantheon_deck.id, card_id: pantheon_card32.id)
pantheon_deckcard33 = Deckcard.create(deck_id: pantheon_deck.id, card_id: pantheon_card33.id)
pantheon_deckcard34 = Deckcard.create(deck_id: pantheon_deck.id, card_id: pantheon_card34.id)
pantheon_deckcard35 = Deckcard.create(deck_id: pantheon_deck.id, card_id: pantheon_card35.id)
pantheon_deckcard36 = Deckcard.create(deck_id: pantheon_deck.id, card_id: pantheon_card36.id)
pantheon_deckcard37 = Deckcard.create(deck_id: pantheon_deck.id, card_id: pantheon_card37.id)
pantheon_deckcard38 = Deckcard.create(deck_id: pantheon_deck.id, card_id: pantheon_card38.id)
pantheon_deckcard39 = Deckcard.create(deck_id: pantheon_deck.id, card_id: pantheon_card39.id)
pantheon_deckcard40 = Deckcard.create(deck_id: pantheon_deck.id, card_id: pantheon_card40.id)

soraka_card1 = Card.create(player_id: soraka.id, cardtype: 'Champion', name: "Veigar", title: "the Tiny Master of Evil", role: "Mage", rarity: "Silver", attack: 300, magic: 1500, defense: 300, image: "Veigar.png")
soraka_card2 = Card.create(player_id: soraka.id, cardtype: 'Champion', name: "Veigar", title: "the Tiny Master of Evil", role: "Mage", rarity: "Silver", attack: 300, magic: 1500, defense: 300, image: "Veigar.png")
soraka_card3 = Card.create(player_id: soraka.id, cardtype: 'Champion', name: "Veigar", title: "the Tiny Master of Evil", role: "Mage", rarity: "Silver", attack: 300, magic: 1500, defense: 300, image: "Veigar.png")
soraka_card4 = Card.create(player_id: soraka.id, cardtype: 'Champion', name: "Urgot", title: "the Headsman's Pride", role: "Marksman", rarity: "Gold", attack: 1600, magic: 600, defense: 1000, image: "Urgot.png")
soraka_card5 = Card.create(player_id: soraka.id, cardtype: 'Champion', name: "Urgot", title: "the Headsman's Pride", role: "Marksman", rarity: "Gold", attack: 1600, magic: 600, defense: 1000, image: "Urgot.png")
soraka_card6 = Card.create(player_id: soraka.id, cardtype: 'Champion', name: "Urgot", title: "the Headsman's Pride", role: "Marksman", rarity: "Gold", attack: 1600, magic: 600, defense: 1000, image: "Urgot.png")
soraka_card7 = Card.create(player_id: soraka.id, cardtype: 'Champion', name: "Katarina", title: "the Sinister Blade", role: "Assassin", rarity: "Gold", attack: 800, magic: 1800, defense: 600, image: "Katarina.png")
soraka_card8 = Card.create(player_id: soraka.id, cardtype: 'Champion', name: "Katarina", title: "the Sinister Blade", role: "Assassin", rarity: "Gold", attack: 800, magic: 1800, defense: 600, image: "Katarina.png")
soraka_card9 = Card.create(player_id: soraka.id, cardtype: 'Champion', name: "Katarina", title: "the Sinister Blade", role: "Assassin", rarity: "Gold", attack: 800, magic: 1800, defense: 600, image: "Katarina.png")
soraka_card10 = Card.create(player_id: soraka.id, cardtype: 'Champion', name: "Elise", title: "the Spider Queen", role: "Mage", rarity: "Gold", attack: 1500, magic: 1750, defense: 1250, image: "Elise.png")
soraka_card11 = Card.create(player_id: soraka.id, cardtype: 'Champion', name: "Elise", title: "the Spider Queen", role: "Mage", rarity: "Gold", attack: 1500, magic: 1750, defense: 1250, image: "Elise.png")
soraka_card12 = Card.create(player_id: soraka.id, cardtype: 'Champion', name: "Elise", title: "the Spider Queen", role: "Mage", rarity: "Gold", attack: 1500, magic: 1750, defense: 1250, image: "Elise.png")
soraka_card13 = Card.create(player_id: soraka.id, cardtype: 'Champion', name: "Swain", title: "the Master Tactician", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 1200, image: "Swain.png")
soraka_card14 = Card.create(player_id: soraka.id, cardtype: 'Champion', name: "Swain", title: "the Master Tactician", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 1200, image: "Swain.png")
soraka_card15 = Card.create(player_id: soraka.id, cardtype: 'Champion', name: "Swain", title: "the Master Tactician", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 1200, image: "Swain.png")
soraka_card16 = Card.create(player_id: soraka.id, cardtype: 'Champion', name: "Riven", title: "the Exile", role: "Fighter", rarity: "Gold", attack: 1600, magic: 200, defense: 1000, image: "Riven.png")
soraka_card17 = Card.create(player_id: soraka.id, cardtype: 'Champion', name: "Riven", title: "the Exile", role: "Fighter", rarity: "Gold", attack: 1600, magic: 200, defense: 1000, image: "Riven.png")
soraka_card18 = Card.create(player_id: soraka.id, cardtype: 'Champion', name: "Riven", title: "the Exile", role: "Fighter", rarity: "Gold", attack: 1600, magic: 200, defense: 1000, image: "Riven.png")
soraka_card19 = Card.create(player_id: soraka.id, cardtype: 'Champion', name: "Draven", title: "the Glorious Executioner", role: "Marksman", rarity: "Gold", attack: 1800, magic: 200, defense: 600, image: "Draven.png")
soraka_card20 = Card.create(player_id: soraka.id, cardtype: 'Champion', name: "Draven", title: "the Glorious Executioner", role: "Marksman", rarity: "Gold", attack: 1800, magic: 200, defense: 600, image: "Draven.png")
soraka_card21 = Card.create(player_id: soraka.id, cardtype: 'Champion', name: "Draven", title: "the Glorious Executioner", role: "Marksman", rarity: "Gold", attack: 1800, magic: 200, defense: 600, image: "Draven.png")
soraka_card22 = Card.create(player_id: soraka.id, cardtype: 'Champion', name: "Soraka", title: "the Starchild", role: "Support", rarity: "Bronze", attack: 200, magic: 700, defense: 500, image: "Soraka.png")
soraka_card23 = Card.create(player_id: soraka.id, cardtype: 'Champion', name: "Soraka", title: "the Starchild", role: "Support", rarity: "Bronze", attack: 200, magic: 700, defense: 500, image: "Soraka.png")
soraka_card24 = Card.create(player_id: soraka.id, cardtype: 'Champion', name: "Soraka", title: "the Starchild", role: "Support", rarity: "Bronze", attack: 200, magic: 700, defense: 500, image: "Soraka.png")
soraka_card25 = Card.create(player_id: soraka.id, cardtype: 'Champion', name: "Karthus", title: "the Deathsinger", role: "Mage", rarity: "Silver", attack: 300, magic: 1500, defense: 300, image: "Karthus.png")
soraka_card26 = Card.create(player_id: soraka.id, cardtype: 'Champion', name: "Karthus", title: "the Deathsinger", role: "Mage", rarity: "Silver", attack: 300, magic: 1500, defense: 300, image: "Karthus.png")
soraka_card27 = Card.create(player_id: soraka.id, cardtype: 'Champion', name: "Karthus", title: "the Deathsinger", role: "Mage", rarity: "Silver", attack: 300, magic: 1500, defense: 300, image: "Karthus.png")
soraka_card28 = Card.create(player_id: soraka.id, cardtype: 'Champion', name: "Twisted Fate", title: "the Card Master", role: "Mage", rarity: "Platinum", attack: 1500, magic: 1500, defense: 500, image: "TwistedFate.png")
soraka_card29 = Card.create(player_id: soraka.id, cardtype: 'Champion', name: "Twisted Fate", title: "the Card Master", role: "Mage", rarity: "Platinum", attack: 1500, magic: 1500, defense: 500, image: "TwistedFate.png")
soraka_card30 = Card.create(player_id: soraka.id, cardtype: 'Champion', name: "Twisted Fate", title: "the Card Master", role: "Mage", rarity: "Platinum", attack: 1500, magic: 1500, defense: 500, image: "TwistedFate.png")
soraka_card31 = Card.create(player_id: soraka.id, cardtype: 'Champion', name: "Syndra", title: "the Dark Sovereign", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 600, image: "Syndra.png")
soraka_card32 = Card.create(player_id: soraka.id, cardtype: 'Champion', name: "Syndra", title: "the Dark Sovereign", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 600, image: "Syndra.png")
soraka_card33 = Card.create(player_id: soraka.id, cardtype: 'Champion', name: "Heimerdinger", title: "the Reverd Inventor", role: "Mage", rarity: "Gold", attack: 400, magic: 1600, defense: 1200, image: "Heimerdinger.png")
soraka_card34 = Card.create(player_id: soraka.id, cardtype: 'Champion', name: "Heimerdinger", title: "the Reverd Inventor", role: "Mage", rarity: "Gold", attack: 400, magic: 1600, defense: 1200, image: "Heimerdinger.png")
soraka_card35 = Card.create(player_id: soraka.id, cardtype: 'Champion', name: "Heimerdinger", title: "the Reverd Inventor", role: "Mage", rarity: "Gold", attack: 400, magic: 1600, defense: 1200, image: "Heimerdinger.png")
soraka_card36 = Card.create(player_id: soraka.id, cardtype: 'Champion', name: "Kassadin", title: "the Void Walker", role: "Assassin", rarity: "Gold", attack: 600, magic: 1600, defense: 1000, image: "Kassadin.png")
soraka_card37 = Card.create(player_id: soraka.id, cardtype: 'Champion', name: "Kassadin", title: "the Void Walker", role: "Assassin", rarity: "Gold", attack: 600, magic: 1600, defense: 1000, image: "Kassadin.png")
soraka_card38 = Card.create(player_id: soraka.id, cardtype: 'Champion', name: "Kassadin", title: "the Void Walker", role: "Assassin", rarity: "Gold", attack: 600, magic: 1600, defense: 1000, image: "Kassadin.png")
soraka_card39 = Card.create(
  player_id: soraka.id,
  name: "Noxian Guillotine",
  cardtype: "Ability",
  rarity: "Diamond",
  description: "Destroy any champion on your opponent's side of the field",
  effect: "props.noxianGuillotine(props.selectedCard)",
  image: "NoxianGuillotine.png",
  quantity: 0
)
soraka_card40 = Card.create(
  player_id: soraka.id,
  name: "Noxian Guillotine",
  cardtype: "Ability",
  rarity: "Diamond",
  description: "Destroy any champion on your opponent's side of the field",
  effect: "props.noxianGuillotine(props.selectedCard)",
  image: "NoxianGuillotine.png",
  quantity: 0
)

soraka_deckcard1 = Deckcard.create(deck_id: soraka_deck.id, card_id: soraka_card1.id)
soraka_deckcard2 = Deckcard.create(deck_id: soraka_deck.id, card_id: soraka_card2.id)
soraka_deckcard3 = Deckcard.create(deck_id: soraka_deck.id, card_id: soraka_card3.id)
soraka_deckcard4 = Deckcard.create(deck_id: soraka_deck.id, card_id: soraka_card4.id)
soraka_deckcard5 = Deckcard.create(deck_id: soraka_deck.id, card_id: soraka_card5.id)
soraka_deckcard6 = Deckcard.create(deck_id: soraka_deck.id, card_id: soraka_card6.id)
soraka_deckcard7 = Deckcard.create(deck_id: soraka_deck.id, card_id: soraka_card7.id)
soraka_deckcard8 = Deckcard.create(deck_id: soraka_deck.id, card_id: soraka_card8.id)
soraka_deckcard9 = Deckcard.create(deck_id: soraka_deck.id, card_id: soraka_card9.id)
soraka_deckcard10 = Deckcard.create(deck_id: soraka_deck.id, card_id: soraka_card10.id)
soraka_deckcard11 = Deckcard.create(deck_id: soraka_deck.id, card_id: soraka_card11.id)
soraka_deckcard12 = Deckcard.create(deck_id: soraka_deck.id, card_id: soraka_card12.id)
soraka_deckcard13 = Deckcard.create(deck_id: soraka_deck.id, card_id: soraka_card13.id)
soraka_deckcard14 = Deckcard.create(deck_id: soraka_deck.id, card_id: soraka_card14.id)
soraka_deckcard15 = Deckcard.create(deck_id: soraka_deck.id, card_id: soraka_card15.id)
soraka_deckcard16 = Deckcard.create(deck_id: soraka_deck.id, card_id: soraka_card16.id)
soraka_deckcard17 = Deckcard.create(deck_id: soraka_deck.id, card_id: soraka_card17.id)
soraka_deckcard18 = Deckcard.create(deck_id: soraka_deck.id, card_id: soraka_card18.id)
soraka_deckcard19 = Deckcard.create(deck_id: soraka_deck.id, card_id: soraka_card19.id)
soraka_deckcard20 = Deckcard.create(deck_id: soraka_deck.id, card_id: soraka_card20.id)
soraka_deckcard21 = Deckcard.create(deck_id: soraka_deck.id, card_id: soraka_card21.id)
soraka_deckcard22 = Deckcard.create(deck_id: soraka_deck.id, card_id: soraka_card22.id)
soraka_deckcard23 = Deckcard.create(deck_id: soraka_deck.id, card_id: soraka_card23.id)
soraka_deckcard24 = Deckcard.create(deck_id: soraka_deck.id, card_id: soraka_card24.id)
soraka_deckcard25 = Deckcard.create(deck_id: soraka_deck.id, card_id: soraka_card25.id)
soraka_deckcard26 = Deckcard.create(deck_id: soraka_deck.id, card_id: soraka_card26.id)
soraka_deckcard27 = Deckcard.create(deck_id: soraka_deck.id, card_id: soraka_card27.id)
soraka_deckcard28 = Deckcard.create(deck_id: soraka_deck.id, card_id: soraka_card28.id)
soraka_deckcard29 = Deckcard.create(deck_id: soraka_deck.id, card_id: soraka_card29.id)
soraka_deckcard30 = Deckcard.create(deck_id: soraka_deck.id, card_id: soraka_card30.id)
soraka_deckcard31 = Deckcard.create(deck_id: soraka_deck.id, card_id: soraka_card31.id)
soraka_deckcard32 = Deckcard.create(deck_id: soraka_deck.id, card_id: soraka_card32.id)
soraka_deckcard33 = Deckcard.create(deck_id: soraka_deck.id, card_id: soraka_card33.id)
soraka_deckcard34 = Deckcard.create(deck_id: soraka_deck.id, card_id: soraka_card34.id)
soraka_deckcard35 = Deckcard.create(deck_id: soraka_deck.id, card_id: soraka_card35.id)
soraka_deckcard36 = Deckcard.create(deck_id: soraka_deck.id, card_id: soraka_card36.id)
soraka_deckcard37 = Deckcard.create(deck_id: soraka_deck.id, card_id: soraka_card37.id)
soraka_deckcard38 = Deckcard.create(deck_id: soraka_deck.id, card_id: soraka_card38.id)
soraka_deckcard39 = Deckcard.create(deck_id: soraka_deck.id, card_id: soraka_card39.id)
soraka_deckcard40 = Deckcard.create(deck_id: soraka_deck.id, card_id: soraka_card40.id)

leona_card1 = Card.create(player_id: leona.id, cardtype: 'Champion', name: "Veigar", title: "the Tiny Master of Evil", role: "Mage", rarity: "Silver", attack: 300, magic: 1500, defense: 300, image: "Veigar.png")
leona_card2 = Card.create(player_id: leona.id, cardtype: 'Champion', name: "Veigar", title: "the Tiny Master of Evil", role: "Mage", rarity: "Silver", attack: 300, magic: 1500, defense: 300, image: "Veigar.png")
leona_card3 = Card.create(player_id: leona.id, cardtype: 'Champion', name: "Veigar", title: "the Tiny Master of Evil", role: "Mage", rarity: "Silver", attack: 300, magic: 1500, defense: 300, image: "Veigar.png")
leona_card4 = Card.create(player_id: leona.id, cardtype: 'Champion', name: "Urgot", title: "the Headsman's Pride", role: "Marksman", rarity: "Gold", attack: 1600, magic: 600, defense: 1000, image: "Urgot.png")
leona_card5 = Card.create(player_id: leona.id, cardtype: 'Champion', name: "Urgot", title: "the Headsman's Pride", role: "Marksman", rarity: "Gold", attack: 1600, magic: 600, defense: 1000, image: "Urgot.png")
leona_card6 = Card.create(player_id: leona.id, cardtype: 'Champion', name: "Urgot", title: "the Headsman's Pride", role: "Marksman", rarity: "Gold", attack: 1600, magic: 600, defense: 1000, image: "Urgot.png")
leona_card7 = Card.create(player_id: leona.id, cardtype: 'Champion', name: "Katarina", title: "the Sinister Blade", role: "Assassin", rarity: "Gold", attack: 800, magic: 1800, defense: 600, image: "Katarina.png")
leona_card8 = Card.create(player_id: leona.id, cardtype: 'Champion', name: "Katarina", title: "the Sinister Blade", role: "Assassin", rarity: "Gold", attack: 800, magic: 1800, defense: 600, image: "Katarina.png")
leona_card9 = Card.create(player_id: leona.id, cardtype: 'Champion', name: "Katarina", title: "the Sinister Blade", role: "Assassin", rarity: "Gold", attack: 800, magic: 1800, defense: 600, image: "Katarina.png")
leona_card10 = Card.create(player_id: leona.id, cardtype: 'Champion', name: "Elise", title: "the Spider Queen", role: "Mage", rarity: "Gold", attack: 1500, magic: 1750, defense: 1250, image: "Elise.png")
leona_card11 = Card.create(player_id: leona.id, cardtype: 'Champion', name: "Elise", title: "the Spider Queen", role: "Mage", rarity: "Gold", attack: 1500, magic: 1750, defense: 1250, image: "Elise.png")
leona_card12 = Card.create(player_id: leona.id, cardtype: 'Champion', name: "Elise", title: "the Spider Queen", role: "Mage", rarity: "Gold", attack: 1500, magic: 1750, defense: 1250, image: "Elise.png")
leona_card13 = Card.create(player_id: leona.id, cardtype: 'Champion', name: "Swain", title: "the Master Tactician", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 1200, image: "Swain.png")
leona_card14 = Card.create(player_id: leona.id, cardtype: 'Champion', name: "Swain", title: "the Master Tactician", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 1200, image: "Swain.png")
leona_card15 = Card.create(player_id: leona.id, cardtype: 'Champion', name: "Swain", title: "the Master Tactician", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 1200, image: "Swain.png")
leona_card16 = Card.create(player_id: leona.id, cardtype: 'Champion', name: "Riven", title: "the Exile", role: "Fighter", rarity: "Gold", attack: 1600, magic: 200, defense: 1000, image: "Riven.png")
leona_card17 = Card.create(player_id: leona.id, cardtype: 'Champion', name: "Riven", title: "the Exile", role: "Fighter", rarity: "Gold", attack: 1600, magic: 200, defense: 1000, image: "Riven.png")
leona_card18 = Card.create(player_id: leona.id, cardtype: 'Champion', name: "Riven", title: "the Exile", role: "Fighter", rarity: "Gold", attack: 1600, magic: 200, defense: 1000, image: "Riven.png")
leona_card19 = Card.create(player_id: leona.id, cardtype: 'Champion', name: "Draven", title: "the Glorious Executioner", role: "Marksman", rarity: "Gold", attack: 1800, magic: 200, defense: 600, image: "Draven.png")
leona_card20 = Card.create(player_id: leona.id, cardtype: 'Champion', name: "Draven", title: "the Glorious Executioner", role: "Marksman", rarity: "Gold", attack: 1800, magic: 200, defense: 600, image: "Draven.png")
leona_card21 = Card.create(player_id: leona.id, cardtype: 'Champion', name: "Draven", title: "the Glorious Executioner", role: "Marksman", rarity: "Gold", attack: 1800, magic: 200, defense: 600, image: "Draven.png")
leona_card22 = Card.create(player_id: leona.id, cardtype: 'Champion', name: "Leona", title: "the Radiant Dawn", role: "Tank", rarity: "Bronze", attack: 400, magic: 300, defense: 800, image: "Leona.png")
leona_card23 = Card.create(player_id: leona.id, cardtype: 'Champion', name: "Leona", title: "the Radiant Dawn", role: "Tank", rarity: "Bronze", attack: 400, magic: 300, defense: 800, image: "Leona.png")
leona_card24 = Card.create(player_id: leona.id, cardtype: 'Champion', name: "Leona", title: "the Radiant Dawn", role: "Tank", rarity: "Bronze", attack: 400, magic: 300, defense: 800, image: "Leona.png")
leona_card25 = Card.create(player_id: leona.id, cardtype: 'Champion', name: "Syndra", title: "the Dark Sovereign", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 600, image: "Syndra.png")
leona_card26 = Card.create(player_id: leona.id, cardtype: 'Champion', name: "Syndra", title: "the Dark Sovereign", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 600, image: "Syndra.png")
leona_card27 = Card.create(player_id: leona.id, cardtype: 'Champion', name: "Syndra", title: "the Dark Sovereign", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 600, image: "Syndra.png")
leona_card28 = Card.create(player_id: leona.id, cardtype: 'Champion', name: "Twisted Fate", title: "the Card Master", role: "Mage", rarity: "Platinum", attack: 1500, magic: 1500, defense: 500, image: "TwistedFate.png")
leona_card29 = Card.create(player_id: leona.id, cardtype: 'Champion', name: "Twisted Fate", title: "the Card Master", role: "Mage", rarity: "Platinum", attack: 1500, magic: 1500, defense: 500, image: "TwistedFate.png")
leona_card30 = Card.create(player_id: leona.id, cardtype: 'Champion', name: "Twisted Fate", title: "the Card Master", role: "Mage", rarity: "Platinum", attack: 1500, magic: 1500, defense: 500, image: "TwistedFate.png")
leona_card31 = Card.create(player_id: leona.id, cardtype: 'Champion', name: "Vayne", title: "the Night Hunter", role: "Marksman", rarity: "Gold", attack: 2000, magic: 200, defense: 200, image: "Vayne.png")
leona_card32 = Card.create(player_id: leona.id, cardtype: 'Champion', name: "Heimerdinger", title: "the Reverd Inventor", role: "Mage", rarity: "Gold", attack: 400, magic: 1600, defense: 1200, image: "Heimerdinger.png")
leona_card33 = Card.create(player_id: leona.id, cardtype: 'Champion', name: "Heimerdinger", title: "the Reverd Inventor", role: "Mage", rarity: "Gold", attack: 400, magic: 1600, defense: 1200, image: "Heimerdinger.png")
leona_card34 = Card.create(player_id: leona.id, cardtype: 'Champion', name: "Heimerdinger", title: "the Reverd Inventor", role: "Mage", rarity: "Gold", attack: 400, magic: 1600, defense: 1200, image: "Heimerdinger.png")
leona_card35 = Card.create(player_id: leona.id, cardtype: 'Champion', name: "Kassadin", title: "the Void Walker", role: "Assassin", rarity: "Gold", attack: 600, magic: 1600, defense: 1000, image: "Kassadin.png")
leona_card36 = Card.create(player_id: leona.id, cardtype: 'Champion', name: "Kassadin", title: "the Void Walker", role: "Assassin", rarity: "Gold", attack: 600, magic: 1600, defense: 1000, image: "Kassadin.png")
leona_card37 = Card.create(player_id: leona.id, cardtype: 'Champion', name: "Kassadin", title: "the Void Walker", role: "Assassin", rarity: "Gold", attack: 600, magic: 1600, defense: 1000, image: "Kassadin.png")
leona_card38 = Card.create(
  player_id: leona.id,
  name: "Noxian Guillotine",
  cardtype: "Ability",
  rarity: "Diamond",
  description: "Destroy any champion on your opponent's side of the field",
  effect: "props.noxianGuillotine(props.selectedCard)",
  image: "NoxianGuillotine.png",
  quantity: 0
)
leona_card39 = Card.create(
  player_id: leona.id,
  name: "Noxian Guillotine",
  cardtype: "Ability",
  rarity: "Diamond",
  description: "Destroy any champion on your opponent's side of the field",
  effect: "props.noxianGuillotine(props.selectedCard)",
  image: "NoxianGuillotine.png",
  quantity: 0
)
leona_card40 = Card.create(
  player_id: leona.id,
  name: "Noxian Guillotine",
  cardtype: "Ability",
  rarity: "Diamond",
  description: "Destroy any champion on your opponent's side of the field",
  effect: "props.noxianGuillotine(props.selectedCard)",
  image: "NoxianGuillotine.png",
  quantity: 0
)

leona_deckcard1 = Deckcard.create(deck_id: leona_deck.id, card_id: leona_card1.id)
leona_deckcard2 = Deckcard.create(deck_id: leona_deck.id, card_id: leona_card2.id)
leona_deckcard3 = Deckcard.create(deck_id: leona_deck.id, card_id: leona_card3.id)
leona_deckcard4 = Deckcard.create(deck_id: leona_deck.id, card_id: leona_card4.id)
leona_deckcard5 = Deckcard.create(deck_id: leona_deck.id, card_id: leona_card5.id)
leona_deckcard6 = Deckcard.create(deck_id: leona_deck.id, card_id: leona_card6.id)
leona_deckcard7 = Deckcard.create(deck_id: leona_deck.id, card_id: leona_card7.id)
leona_deckcard8 = Deckcard.create(deck_id: leona_deck.id, card_id: leona_card8.id)
leona_deckcard9 = Deckcard.create(deck_id: leona_deck.id, card_id: leona_card9.id)
leona_deckcard10 = Deckcard.create(deck_id: leona_deck.id, card_id: leona_card10.id)
leona_deckcard11 = Deckcard.create(deck_id: leona_deck.id, card_id: leona_card11.id)
leona_deckcard12 = Deckcard.create(deck_id: leona_deck.id, card_id: leona_card12.id)
leona_deckcard13 = Deckcard.create(deck_id: leona_deck.id, card_id: leona_card13.id)
leona_deckcard14 = Deckcard.create(deck_id: leona_deck.id, card_id: leona_card14.id)
leona_deckcard15 = Deckcard.create(deck_id: leona_deck.id, card_id: leona_card15.id)
leona_deckcard16 = Deckcard.create(deck_id: leona_deck.id, card_id: leona_card16.id)
leona_deckcard17 = Deckcard.create(deck_id: leona_deck.id, card_id: leona_card17.id)
leona_deckcard18 = Deckcard.create(deck_id: leona_deck.id, card_id: leona_card18.id)
leona_deckcard19 = Deckcard.create(deck_id: leona_deck.id, card_id: leona_card19.id)
leona_deckcard20 = Deckcard.create(deck_id: leona_deck.id, card_id: leona_card20.id)
leona_deckcard21 = Deckcard.create(deck_id: leona_deck.id, card_id: leona_card21.id)
leona_deckcard22 = Deckcard.create(deck_id: leona_deck.id, card_id: leona_card22.id)
leona_deckcard23 = Deckcard.create(deck_id: leona_deck.id, card_id: leona_card23.id)
leona_deckcard24 = Deckcard.create(deck_id: leona_deck.id, card_id: leona_card24.id)
leona_deckcard25 = Deckcard.create(deck_id: leona_deck.id, card_id: leona_card25.id)
leona_deckcard26 = Deckcard.create(deck_id: leona_deck.id, card_id: leona_card26.id)
leona_deckcard27 = Deckcard.create(deck_id: leona_deck.id, card_id: leona_card27.id)
leona_deckcard28 = Deckcard.create(deck_id: leona_deck.id, card_id: leona_card28.id)
leona_deckcard29 = Deckcard.create(deck_id: leona_deck.id, card_id: leona_card29.id)
leona_deckcard30 = Deckcard.create(deck_id: leona_deck.id, card_id: leona_card30.id)
leona_deckcard31 = Deckcard.create(deck_id: leona_deck.id, card_id: leona_card31.id)
leona_deckcard32 = Deckcard.create(deck_id: leona_deck.id, card_id: leona_card32.id)
leona_deckcard33 = Deckcard.create(deck_id: leona_deck.id, card_id: leona_card33.id)
leona_deckcard34 = Deckcard.create(deck_id: leona_deck.id, card_id: leona_card34.id)
leona_deckcard35 = Deckcard.create(deck_id: leona_deck.id, card_id: leona_card35.id)
leona_deckcard36 = Deckcard.create(deck_id: leona_deck.id, card_id: leona_card36.id)
leona_deckcard37 = Deckcard.create(deck_id: leona_deck.id, card_id: leona_card37.id)
leona_deckcard38 = Deckcard.create(deck_id: leona_deck.id, card_id: leona_card38.id)
leona_deckcard39 = Deckcard.create(deck_id: leona_deck.id, card_id: leona_card39.id)
leona_deckcard40 = Deckcard.create(deck_id: leona_deck.id, card_id: leona_card40.id)

ashe_card1 = Card.create(player_id: ashe.id, cardtype: 'Champion', name: "Vayne", title: "the Night Hunter", role: "Marksman", rarity: "Gold", attack: 2000, magic: 200, defense: 200, image: "Vayne.png")
ashe_card2 = Card.create(player_id: ashe.id, cardtype: 'Champion', name: "Vayne", title: "the Night Hunter", role: "Marksman", rarity: "Gold", attack: 2000, magic: 200, defense: 200, image: "Vayne.png")
ashe_card3 = Card.create(player_id: ashe.id, cardtype: 'Champion', name: "Vayne", title: "the Night Hunter", role: "Marksman", rarity: "Gold", attack: 2000, magic: 200, defense: 200, image: "Vayne.png")
ashe_card4 = Card.create(player_id: ashe.id, cardtype: 'Champion', name: "Shaco", title: "the Demon Jester", role: "Assassin", rarity: "Platinum", attack: 2000, magic: 1500, defense: 1000, image: "Shaco.png")
ashe_card5 = Card.create(player_id: ashe.id, cardtype: 'Champion', name: "Shaco", title: "the Demon Jester", role: "Assassin", rarity: "Platinum", attack: 2000, magic: 1500, defense: 1000, image: "Shaco.png")
ashe_card6 = Card.create(player_id: ashe.id, cardtype: 'Champion', name: "Shaco", title: "the Demon Jester", role: "Assassin", rarity: "Platinum", attack: 2000, magic: 1500, defense: 1000, image: "Shaco.png")
ashe_card7 = Card.create(player_id: ashe.id, cardtype: 'Champion', name: "Katarina", title: "the Sinister Blade", role: "Assassin", rarity: "Gold", attack: 800, magic: 1800, defense: 600, image: "Katarina.png")
ashe_card8 = Card.create(player_id: ashe.id, cardtype: 'Champion', name: "Katarina", title: "the Sinister Blade", role: "Assassin", rarity: "Gold", attack: 800, magic: 1800, defense: 600, image: "Katarina.png")
ashe_card9 = Card.create(player_id: ashe.id, cardtype: 'Champion', name: "Katarina", title: "the Sinister Blade", role: "Assassin", rarity: "Gold", attack: 800, magic: 1800, defense: 600, image: "Katarina.png")
ashe_card10 = Card.create(player_id: ashe.id, cardtype: 'Champion', name: "Elise", title: "the Spider Queen", role: "Mage", rarity: "Gold", attack: 1500, magic: 1750, defense: 1250, image: "Elise.png")
ashe_card11 = Card.create(player_id: ashe.id, cardtype: 'Champion', name: "Elise", title: "the Spider Queen", role: "Mage", rarity: "Gold", attack: 1500, magic: 1750, defense: 1250, image: "Elise.png")
ashe_card12 = Card.create(player_id: ashe.id, cardtype: 'Champion', name: "Elise", title: "the Spider Queen", role: "Mage", rarity: "Gold", attack: 1500, magic: 1750, defense: 1250, image: "Elise.png")
ashe_card13 = Card.create(player_id: ashe.id, cardtype: 'Champion', name: "Swain", title: "the Master Tactician", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 1200, image: "Swain.png")
ashe_card14 = Card.create(player_id: ashe.id, cardtype: 'Champion', name: "Swain", title: "the Master Tactician", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 1200, image: "Swain.png")
ashe_card15 = Card.create(player_id: ashe.id, cardtype: 'Champion', name: "Swain", title: "the Master Tactician", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 1200, image: "Swain.png")
ashe_card16 = Card.create(player_id: ashe.id, cardtype: 'Champion', name: "Riven", title: "the Exile", role: "Fighter", rarity: "Gold", attack: 1600, magic: 200, defense: 1000, image: "Riven.png")
ashe_card17 = Card.create(player_id: ashe.id, cardtype: 'Champion', name: "Riven", title: "the Exile", role: "Fighter", rarity: "Gold", attack: 1600, magic: 200, defense: 1000, image: "Riven.png")
ashe_card18 = Card.create(player_id: ashe.id, cardtype: 'Champion', name: "Riven", title: "the Exile", role: "Fighter", rarity: "Gold", attack: 1600, magic: 200, defense: 1000, image: "Riven.png")
ashe_card19 = Card.create(player_id: ashe.id, cardtype: 'Champion', name: "Draven", title: "the Glorious Executioner", role: "Marksman", rarity: "Gold", attack: 1800, magic: 200, defense: 600, image: "Draven.png")
ashe_card20 = Card.create(player_id: ashe.id, cardtype: 'Champion', name: "Draven", title: "the Glorious Executioner", role: "Marksman", rarity: "Gold", attack: 1800, magic: 200, defense: 600, image: "Draven.png")
ashe_card21 = Card.create(player_id: ashe.id, cardtype: 'Champion', name: "Draven", title: "the Glorious Executioner", role: "Marksman", rarity: "Gold", attack: 1800, magic: 200, defense: 600, image: "Draven.png")
ashe_card22 = Card.create(player_id: ashe.id, cardtype: 'Champion', name: "Ashe", title: "the Frost Archer", role: "Marskman", rarity: "Bronze", attack: 700, magic: 200, defense: 300, image: "Ashe.png")
ashe_card23 = Card.create(player_id: ashe.id, cardtype: 'Champion', name: "Ashe", title: "the Frost Archer", role: "Marskman", rarity: "Bronze", attack: 700, magic: 200, defense: 300, image: "Ashe.png")
ashe_card24 = Card.create(player_id: ashe.id, cardtype: 'Champion', name: "Ashe", title: "the Frost Archer", role: "Marskman", rarity: "Bronze", attack: 700, magic: 200, defense: 300, image: "Ashe.png")
ashe_card25 = Card.create(player_id: ashe.id, cardtype: 'Champion', name: "Syndra", title: "the Dark Sovereign", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 600, image: "Syndra.png")
ashe_card26 = Card.create(player_id: ashe.id, cardtype: 'Champion', name: "Syndra", title: "the Dark Sovereign", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 600, image: "Syndra.png")
ashe_card27 = Card.create(player_id: ashe.id, cardtype: 'Champion', name: "Syndra", title: "the Dark Sovereign", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 600, image: "Syndra.png")
ashe_card28 = Card.create(player_id: ashe.id, cardtype: 'Champion', name: "Vel'koz", title: "the Eye of the Void", role: "Mage", rarity: "Gold", attack: 400, magic: 2000, defense: 400, image: "Velkoz.png")
ashe_card29 = Card.create(player_id: ashe.id, cardtype: 'Champion', name: "Vel'koz", title: "the Eye of the Void", role: "Mage", rarity: "Gold", attack: 400, magic: 2000, defense: 400, image: "Velkoz.png")
ashe_card30 = Card.create(player_id: ashe.id, cardtype: 'Champion', name: "Vel'koz", title: "the Eye of the Void", role: "Mage", rarity: "Gold", attack: 400, magic: 2000, defense: 400, image: "Velkoz.png")
ashe_card31 = Card.create(player_id: ashe.id, cardtype: 'Champion', name: "Heimerdinger", title: "the Reverd Inventor", role: "Mage", rarity: "Gold", attack: 400, magic: 1600, defense: 1200, image: "Heimerdinger.png")
ashe_card32 = Card.create(player_id: ashe.id, cardtype: 'Champion', name: "Heimerdinger", title: "the Reverd Inventor", role: "Mage", rarity: "Gold", attack: 400, magic: 1600, defense: 1200, image: "Heimerdinger.png")
ashe_card33 = Card.create(player_id: ashe.id, cardtype: 'Champion', name: "Heimerdinger", title: "the Reverd Inventor", role: "Mage", rarity: "Gold", attack: 400, magic: 1600, defense: 1200, image: "Heimerdinger.png")
ashe_card34 = Card.create(player_id: ashe.id, cardtype: 'Champion', name: "Kassadin", title: "the Void Walker", role: "Assassin", rarity: "Gold", attack: 600, magic: 1600, defense: 1000, image: "Kassadin.png")
ashe_card35 = Card.create(player_id: ashe.id, cardtype: 'Champion', name: "Kassadin", title: "the Void Walker", role: "Assassin", rarity: "Gold", attack: 600, magic: 1600, defense: 1000, image: "Kassadin.png")
ashe_card36 = Card.create(player_id: ashe.id, cardtype: 'Champion', name: "Kassadin", title: "the Void Walker", role: "Assassin", rarity: "Gold", attack: 600, magic: 1600, defense: 1000, image: "Kassadin.png")
ashe_card37 = Card.create(
  player_id: ashe.id,
  name: "Noxian Guillotine",
  cardtype: "Ability",
  rarity: "Diamond",
  description: "Destroy any champion on your opponent's side of the field",
  effect: "props.noxianGuillotine(props.selectedCard)",
  image: "NoxianGuillotine.png",
  quantity: 0
)
ashe_card38 = Card.create(
  player_id: ashe.id,
  name: "Noxian Guillotine",
  cardtype: "Ability",
  rarity: "Diamond",
  description: "Destroy any champion on your opponent's side of the field",
  effect: "props.noxianGuillotine(props.selectedCard)",
  image: "NoxianGuillotine.png",
  quantity: 0
)
ashe_card39 = Card.create(
  player_id: ashe.id,
  name: "Noxian Guillotine",
  cardtype: "Ability",
  rarity: "Diamond",
  description: "Destroy any champion on your opponent's side of the field",
  effect: "props.noxianGuillotine(props.selectedCard)",
  image: "NoxianGuillotine.png",
  quantity: 0
)
ashe_card40 = Card.create(
  player_id: ashe.id,
  name: "Requiem",
  cardtype: "Ability",
  rarity: "Diamond",
  description: "Destroy every champion on your opponent's side of the field",
  effect: "props.requiem(props.selectedCard)",
  image: "Requiem.png",
  quantity: 0
)


ashe_deckcard1 = Deckcard.create(deck_id: ashe_deck.id, card_id: ashe_card1.id)
ashe_deckcard2 = Deckcard.create(deck_id: ashe_deck.id, card_id: ashe_card2.id)
ashe_deckcard3 = Deckcard.create(deck_id: ashe_deck.id, card_id: ashe_card3.id)
ashe_deckcard4 = Deckcard.create(deck_id: ashe_deck.id, card_id: ashe_card4.id)
ashe_deckcard5 = Deckcard.create(deck_id: ashe_deck.id, card_id: ashe_card5.id)
ashe_deckcard6 = Deckcard.create(deck_id: ashe_deck.id, card_id: ashe_card6.id)
ashe_deckcard7 = Deckcard.create(deck_id: ashe_deck.id, card_id: ashe_card7.id)
ashe_deckcard8 = Deckcard.create(deck_id: ashe_deck.id, card_id: ashe_card8.id)
ashe_deckcard9 = Deckcard.create(deck_id: ashe_deck.id, card_id: ashe_card9.id)
ashe_deckcard10 = Deckcard.create(deck_id: ashe_deck.id, card_id: ashe_card10.id)
ashe_deckcard11 = Deckcard.create(deck_id: ashe_deck.id, card_id: ashe_card11.id)
ashe_deckcard12 = Deckcard.create(deck_id: ashe_deck.id, card_id: ashe_card12.id)
ashe_deckcard13 = Deckcard.create(deck_id: ashe_deck.id, card_id: ashe_card13.id)
ashe_deckcard14 = Deckcard.create(deck_id: ashe_deck.id, card_id: ashe_card14.id)
ashe_deckcard15 = Deckcard.create(deck_id: ashe_deck.id, card_id: ashe_card15.id)
ashe_deckcard16 = Deckcard.create(deck_id: ashe_deck.id, card_id: ashe_card16.id)
ashe_deckcard17 = Deckcard.create(deck_id: ashe_deck.id, card_id: ashe_card17.id)
ashe_deckcard18 = Deckcard.create(deck_id: ashe_deck.id, card_id: ashe_card18.id)
ashe_deckcard19 = Deckcard.create(deck_id: ashe_deck.id, card_id: ashe_card19.id)
ashe_deckcard20 = Deckcard.create(deck_id: ashe_deck.id, card_id: ashe_card20.id)
ashe_deckcard21 = Deckcard.create(deck_id: ashe_deck.id, card_id: ashe_card21.id)
ashe_deckcard22 = Deckcard.create(deck_id: ashe_deck.id, card_id: ashe_card22.id)
ashe_deckcard23 = Deckcard.create(deck_id: ashe_deck.id, card_id: ashe_card23.id)
ashe_deckcard24 = Deckcard.create(deck_id: ashe_deck.id, card_id: ashe_card24.id)
ashe_deckcard25 = Deckcard.create(deck_id: ashe_deck.id, card_id: ashe_card25.id)
ashe_deckcard26 = Deckcard.create(deck_id: ashe_deck.id, card_id: ashe_card26.id)
ashe_deckcard27 = Deckcard.create(deck_id: ashe_deck.id, card_id: ashe_card27.id)
ashe_deckcard28 = Deckcard.create(deck_id: ashe_deck.id, card_id: ashe_card28.id)
ashe_deckcard29 = Deckcard.create(deck_id: ashe_deck.id, card_id: ashe_card29.id)
ashe_deckcard30 = Deckcard.create(deck_id: ashe_deck.id, card_id: ashe_card30.id)
ashe_deckcard31 = Deckcard.create(deck_id: ashe_deck.id, card_id: ashe_card31.id)
ashe_deckcard32 = Deckcard.create(deck_id: ashe_deck.id, card_id: ashe_card32.id)
ashe_deckcard33 = Deckcard.create(deck_id: ashe_deck.id, card_id: ashe_card33.id)
ashe_deckcard34 = Deckcard.create(deck_id: ashe_deck.id, card_id: ashe_card34.id)
ashe_deckcard35 = Deckcard.create(deck_id: ashe_deck.id, card_id: ashe_card35.id)
ashe_deckcard36 = Deckcard.create(deck_id: ashe_deck.id, card_id: ashe_card36.id)
ashe_deckcard37 = Deckcard.create(deck_id: ashe_deck.id, card_id: ashe_card37.id)
ashe_deckcard38 = Deckcard.create(deck_id: ashe_deck.id, card_id: ashe_card38.id)
ashe_deckcard39 = Deckcard.create(deck_id: ashe_deck.id, card_id: ashe_card39.id)
ashe_deckcard40 = Deckcard.create(deck_id: ashe_deck.id, card_id: ashe_card40.id)

sejuani_card1 = Card.create(player_id: sejuani.id, cardtype: 'Champion', name: "Vayne", title: "the Night Hunter", role: "Marksman", rarity: "Gold", attack: 2000, magic: 200, defense: 200, image: "Vayne.png")
sejuani_card2 = Card.create(player_id: sejuani.id, cardtype: 'Champion', name: "Vayne", title: "the Night Hunter", role: "Marksman", rarity: "Gold", attack: 2000, magic: 200, defense: 200, image: "Vayne.png")
sejuani_card3 = Card.create(player_id: sejuani.id, cardtype: 'Champion', name: "Vayne", title: "the Night Hunter", role: "Marksman", rarity: "Gold", attack: 2000, magic: 200, defense: 200, image: "Vayne.png")
sejuani_card4 = Card.create(player_id: sejuani.id, cardtype: 'Champion', name: "Evelynn", title: "the Widowmaker", role: "Assassin", rarity: "Diamond", attack: 1200, magic: 2100, defense: 600, image: "Evelynn.png")
sejuani_card5 = Card.create(player_id: sejuani.id, cardtype: 'Champion', name: "Evelynn", title: "the Widowmaker", role: "Assassin", rarity: "Diamond", attack: 1200, magic: 2100, defense: 600, image: "Evelynn.png")
sejuani_card6 = Card.create(player_id: sejuani.id, cardtype: 'Champion', name: "Evelynn", title: "the Widowmaker", role: "Assassin", rarity: "Diamond", attack: 1200, magic: 2100, defense: 600, image: "Evelynn.png")
sejuani_card7 = Card.create(player_id: sejuani.id, cardtype: 'Champion', name: "Katarina", title: "the Sinister Blade", role: "Assassin", rarity: "Gold", attack: 800, magic: 1800, defense: 600, image: "Katarina.png")
sejuani_card8 = Card.create(player_id: sejuani.id, cardtype: 'Champion', name: "Katarina", title: "the Sinister Blade", role: "Assassin", rarity: "Gold", attack: 800, magic: 1800, defense: 600, image: "Katarina.png")
sejuani_card9 = Card.create(player_id: sejuani.id, cardtype: 'Champion', name: "Katarina", title: "the Sinister Blade", role: "Assassin", rarity: "Gold", attack: 800, magic: 1800, defense: 600, image: "Katarina.png")
sejuani_card10 = Card.create(player_id: sejuani.id, cardtype: 'Champion', name: "Elise", title: "the Spider Queen", role: "Mage", rarity: "Gold", attack: 1500, magic: 1750, defense: 1250, image: "Elise.png")
sejuani_card11 = Card.create(player_id: sejuani.id, cardtype: 'Champion', name: "Elise", title: "the Spider Queen", role: "Mage", rarity: "Gold", attack: 1500, magic: 1750, defense: 1250, image: "Elise.png")
sejuani_card12 = Card.create(player_id: sejuani.id, cardtype: 'Champion', name: "Elise", title: "the Spider Queen", role: "Mage", rarity: "Gold", attack: 1500, magic: 1750, defense: 1250, image: "Elise.png")
sejuani_card13 = Card.create(player_id: sejuani.id, cardtype: 'Champion', name: "Swain", title: "the Master Tactician", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 1200, image: "Swain.png")
sejuani_card14 = Card.create(player_id: sejuani.id, cardtype: 'Champion', name: "Swain", title: "the Master Tactician", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 1200, image: "Swain.png")
sejuani_card15 = Card.create(player_id: sejuani.id, cardtype: 'Champion', name: "Swain", title: "the Master Tactician", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 1200, image: "Swain.png")
sejuani_card16 = Card.create(player_id: sejuani.id, cardtype: 'Champion', name: "Fiddlesticks", title: "the Harbinger of Doom", role: "Mage", rarity: "Diamond", attack: 500, magic: 2250, defense: 750, image: "Fiddlesticks.png")
sejuani_card17 = Card.create(player_id: sejuani.id, cardtype: 'Champion', name: "Fiddlesticks", title: "the Harbinger of Doom", role: "Mage", rarity: "Diamond", attack: 500, magic: 2250, defense: 750, image: "Fiddlesticks.png")
sejuani_card18 = Card.create(player_id: sejuani.id, cardtype: 'Champion', name: "Fiddlesticks", title: "the Harbinger of Doom", role: "Mage", rarity: "Diamond", attack: 500, magic: 2250, defense: 750, image: "Fiddlesticks.png")
sejuani_card19 = Card.create(player_id: sejuani.id, cardtype: 'Champion', name: "Draven", title: "the Glorious Executioner", role: "Marksman", rarity: "Gold", attack: 1800, magic: 200, defense: 600, image: "Draven.png")
sejuani_card20 = Card.create(player_id: sejuani.id, cardtype: 'Champion', name: "Draven", title: "the Glorious Executioner", role: "Marksman", rarity: "Gold", attack: 1800, magic: 200, defense: 600, image: "Draven.png")
sejuani_card21 = Card.create(player_id: sejuani.id, cardtype: 'Champion', name: "Draven", title: "the Glorious Executioner", role: "Marksman", rarity: "Gold", attack: 1800, magic: 200, defense: 600, image: "Draven.png")
sejuani_card22 = Card.create(player_id: sejuani.id, cardtype: 'Champion', name: "Sejuani", title: "the Winter's Wrath", role: "Tank", rarity: "Bronze", attack: 500, magic: 600, defense: 700, image: "Sejuani.png")
sejuani_card23 = Card.create(player_id: sejuani.id, cardtype: 'Champion', name: "Sejuani", title: "the Winter's Wrath", role: "Tank", rarity: "Bronze", attack: 500, magic: 600, defense: 700, image: "Sejuani.png")
sejuani_card24 = Card.create(player_id: sejuani.id, cardtype: 'Champion', name: "Sejuani", title: "the Winter's Wrath", role: "Tank", rarity: "Bronze", attack: 500, magic: 600, defense: 700, image: "Sejuani.png")
sejuani_card25 = Card.create(player_id: sejuani.id, cardtype: 'Champion', name: "Syndra", title: "the Dark Sovereign", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 600, image: "Syndra.png")
sejuani_card26 = Card.create(player_id: sejuani.id, cardtype: 'Champion', name: "Syndra", title: "the Dark Sovereign", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 600, image: "Syndra.png")
sejuani_card27 = Card.create(player_id: sejuani.id, cardtype: 'Champion', name: "Syndra", title: "the Dark Sovereign", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 600, image: "Syndra.png")
sejuani_card28 = Card.create(player_id: sejuani.id, cardtype: 'Champion', name: "Vel'koz", title: "the Eye of the Void", role: "Mage", rarity: "Gold", attack: 400, magic: 2000, defense: 400, image: "Velkoz.png")
sejuani_card29 = Card.create(player_id: sejuani.id, cardtype: 'Champion', name: "Vel'koz", title: "the Eye of the Void", role: "Mage", rarity: "Gold", attack: 400, magic: 2000, defense: 400, image: "Velkoz.png")
sejuani_card30 = Card.create(player_id: sejuani.id, cardtype: 'Champion', name: "Vel'koz", title: "the Eye of the Void", role: "Mage", rarity: "Gold", attack: 400, magic: 2000, defense: 400, image: "Velkoz.png")
sejuani_card31 = Card.create(player_id: sejuani.id, cardtype: 'Champion', name: "Heimerdinger", title: "the Reverd Inventor", role: "Mage", rarity: "Gold", attack: 400, magic: 1600, defense: 1200, image: "Heimerdinger.png")
sejuani_card32 = Card.create(player_id: sejuani.id, cardtype: 'Champion', name: "Heimerdinger", title: "the Reverd Inventor", role: "Mage", rarity: "Gold", attack: 400, magic: 1600, defense: 1200, image: "Heimerdinger.png")
sejuani_card33 = Card.create(player_id: sejuani.id, cardtype: 'Champion', name: "Heimerdinger", title: "the Reverd Inventor", role: "Mage", rarity: "Gold", attack: 400, magic: 1600, defense: 1200, image: "Heimerdinger.png")
sejuani_card34 = Card.create(player_id: sejuani.id, cardtype: 'Champion', name: "Shaco", title: "the Demon Jester", role: "Assassin", rarity: "Platinum", attack: 2000, magic: 1500, defense: 1000, image: "Shaco.png")
sejuani_card35 = Card.create(player_id: sejuani.id, cardtype: 'Champion', name: "Shaco", title: "the Demon Jester", role: "Assassin", rarity: "Platinum", attack: 2000, magic: 1500, defense: 1000, image: "Shaco.png")
sejuani_card36 = Card.create(player_id: sejuani.id, cardtype: 'Champion', name: "Shaco", title: "the Demon Jester", role: "Assassin", rarity: "Platinum", attack: 2000, magic: 1500, defense: 1000, image: "Shaco.png")
sejuani_card37 = Card.create(
  player_id: sejuani.id,
  name: "Noxian Guillotine",
  cardtype: "Ability",
  rarity: "Diamond",
  description: "Destroy any champion on your opponent's side of the field",
  effect: "props.noxianGuillotine(props.selectedCard)",
  image: "NoxianGuillotine.png",
  quantity: 0
)
sejuani_card38 = Card.create(
  player_id: sejuani.id,
  name: "Noxian Guillotine",
  cardtype: "Ability",
  rarity: "Diamond",
  description: "Destroy any champion on your opponent's side of the field",
  effect: "props.noxianGuillotine(props.selectedCard)",
  image: "NoxianGuillotine.png",
  quantity: 0
)
sejuani_card39 = Card.create(
  player_id: sejuani.id,
  name: "Noxian Guillotine",
  cardtype: "Ability",
  rarity: "Diamond",
  description: "Destroy any champion on your opponent's side of the field",
  effect: "props.noxianGuillotine(props.selectedCard)",
  image: "NoxianGuillotine.png",
  quantity: 0
)
sejuani_card40 = Card.create(
  player_id: sejuani.id,
  name: "Requiem",
  cardtype: "Ability",
  rarity: "Diamond",
  description: "Destroy every champion on your opponent's side of the field",
  effect: "props.requiem(props.selectedCard)",
  image: "Requiem.png",
  quantity: 0
)

sejuani_deckcard1 = Deckcard.create(deck_id: sejuani_deck.id, card_id: sejuani_card1.id)
sejuani_deckcard2 = Deckcard.create(deck_id: sejuani_deck.id, card_id: sejuani_card2.id)
sejuani_deckcard3 = Deckcard.create(deck_id: sejuani_deck.id, card_id: sejuani_card3.id)
sejuani_deckcard4 = Deckcard.create(deck_id: sejuani_deck.id, card_id: sejuani_card4.id)
sejuani_deckcard5 = Deckcard.create(deck_id: sejuani_deck.id, card_id: sejuani_card5.id)
sejuani_deckcard6 = Deckcard.create(deck_id: sejuani_deck.id, card_id: sejuani_card6.id)
sejuani_deckcard7 = Deckcard.create(deck_id: sejuani_deck.id, card_id: sejuani_card7.id)
sejuani_deckcard8 = Deckcard.create(deck_id: sejuani_deck.id, card_id: sejuani_card8.id)
sejuani_deckcard9 = Deckcard.create(deck_id: sejuani_deck.id, card_id: sejuani_card9.id)
sejuani_deckcard10 = Deckcard.create(deck_id: sejuani_deck.id, card_id: sejuani_card10.id)
sejuani_deckcard11 = Deckcard.create(deck_id: sejuani_deck.id, card_id: sejuani_card11.id)
sejuani_deckcard12 = Deckcard.create(deck_id: sejuani_deck.id, card_id: sejuani_card12.id)
sejuani_deckcard13 = Deckcard.create(deck_id: sejuani_deck.id, card_id: sejuani_card13.id)
sejuani_deckcard14 = Deckcard.create(deck_id: sejuani_deck.id, card_id: sejuani_card14.id)
sejuani_deckcard15 = Deckcard.create(deck_id: sejuani_deck.id, card_id: sejuani_card15.id)
sejuani_deckcard16 = Deckcard.create(deck_id: sejuani_deck.id, card_id: sejuani_card16.id)
sejuani_deckcard17 = Deckcard.create(deck_id: sejuani_deck.id, card_id: sejuani_card17.id)
sejuani_deckcard18 = Deckcard.create(deck_id: sejuani_deck.id, card_id: sejuani_card18.id)
sejuani_deckcard19 = Deckcard.create(deck_id: sejuani_deck.id, card_id: sejuani_card19.id)
sejuani_deckcard20 = Deckcard.create(deck_id: sejuani_deck.id, card_id: sejuani_card20.id)
sejuani_deckcard21 = Deckcard.create(deck_id: sejuani_deck.id, card_id: sejuani_card21.id)
sejuani_deckcard22 = Deckcard.create(deck_id: sejuani_deck.id, card_id: sejuani_card22.id)
sejuani_deckcard23 = Deckcard.create(deck_id: sejuani_deck.id, card_id: sejuani_card23.id)
sejuani_deckcard24 = Deckcard.create(deck_id: sejuani_deck.id, card_id: sejuani_card24.id)
sejuani_deckcard25 = Deckcard.create(deck_id: sejuani_deck.id, card_id: sejuani_card25.id)
sejuani_deckcard26 = Deckcard.create(deck_id: sejuani_deck.id, card_id: sejuani_card26.id)
sejuani_deckcard27 = Deckcard.create(deck_id: sejuani_deck.id, card_id: sejuani_card27.id)
sejuani_deckcard28 = Deckcard.create(deck_id: sejuani_deck.id, card_id: sejuani_card28.id)
sejuani_deckcard29 = Deckcard.create(deck_id: sejuani_deck.id, card_id: sejuani_card29.id)
sejuani_deckcard30 = Deckcard.create(deck_id: sejuani_deck.id, card_id: sejuani_card30.id)
sejuani_deckcard31 = Deckcard.create(deck_id: sejuani_deck.id, card_id: sejuani_card31.id)
sejuani_deckcard32 = Deckcard.create(deck_id: sejuani_deck.id, card_id: sejuani_card32.id)
sejuani_deckcard33 = Deckcard.create(deck_id: sejuani_deck.id, card_id: sejuani_card33.id)
sejuani_deckcard34 = Deckcard.create(deck_id: sejuani_deck.id, card_id: sejuani_card34.id)
sejuani_deckcard35 = Deckcard.create(deck_id: sejuani_deck.id, card_id: sejuani_card35.id)
sejuani_deckcard36 = Deckcard.create(deck_id: sejuani_deck.id, card_id: sejuani_card36.id)
sejuani_deckcard37 = Deckcard.create(deck_id: sejuani_deck.id, card_id: sejuani_card37.id)
sejuani_deckcard38 = Deckcard.create(deck_id: sejuani_deck.id, card_id: sejuani_card38.id)
sejuani_deckcard39 = Deckcard.create(deck_id: sejuani_deck.id, card_id: sejuani_card39.id)
sejuani_deckcard40 = Deckcard.create(deck_id: sejuani_deck.id, card_id: sejuani_card40.id)

lissandra_card1 = Card.create(player_id: lissandra.id, cardtype: 'Champion', name: "Vayne", title: "the Night Hunter", role: "Marksman", rarity: "Gold", attack: 2000, magic: 200, defense: 200, image: "Vayne.png")
lissandra_card2 = Card.create(player_id: lissandra.id, cardtype: 'Champion', name: "Vayne", title: "the Night Hunter", role: "Marksman", rarity: "Gold", attack: 2000, magic: 200, defense: 200, image: "Vayne.png")
lissandra_card3 = Card.create(player_id: lissandra.id, cardtype: 'Champion', name: "Vayne", title: "the Night Hunter", role: "Marksman", rarity: "Gold", attack: 2000, magic: 200, defense: 200, image: "Vayne.png")
lissandra_card4 = Card.create(player_id: lissandra.id, cardtype: 'Champion', name: "Evelynn", title: "the Widowmaker", role: "Assassin", rarity: "Diamond", attack: 1200, magic: 2100, defense: 600, image: "Evelynn.png")
lissandra_card5 = Card.create(player_id: lissandra.id, cardtype: 'Champion', name: "Evelynn", title: "the Widowmaker", role: "Assassin", rarity: "Diamond", attack: 1200, magic: 2100, defense: 600, image: "Evelynn.png")
lissandra_card6 = Card.create(player_id: lissandra.id, cardtype: 'Champion', name: "Evelynn", title: "the Widowmaker", role: "Assassin", rarity: "Diamond", attack: 1200, magic: 2100, defense: 600, image: "Evelynn.png")
lissandra_card7 = Card.create(player_id: lissandra.id, cardtype: 'Champion', name: "Katarina", title: "the Sinister Blade", role: "Assassin", rarity: "Gold", attack: 800, magic: 1800, defense: 600, image: "Katarina.png")
lissandra_card8 = Card.create(player_id: lissandra.id, cardtype: 'Champion', name: "Katarina", title: "the Sinister Blade", role: "Assassin", rarity: "Gold", attack: 800, magic: 1800, defense: 600, image: "Katarina.png")
lissandra_card9 = Card.create(player_id: lissandra.id, cardtype: 'Champion', name: "Katarina", title: "the Sinister Blade", role: "Assassin", rarity: "Gold", attack: 800, magic: 1800, defense: 600, image: "Katarina.png")
lissandra_card10 = Card.create(player_id: lissandra.id, cardtype: 'Champion', name: "Rumble", title: "the Mechanized Menace", role: "Fighter", rarity: "Diamond", attack: 900, magic: 2400, defense: 1800, image: "Rumble.png")
lissandra_card11 = Card.create(player_id: lissandra.id, cardtype: 'Champion', name: "Rumble", title: "the Mechanized Menace", role: "Fighter", rarity: "Diamond", attack: 900, magic: 2400, defense: 1800, image: "Rumble.png")
lissandra_card12 = Card.create(player_id: lissandra.id, cardtype: 'Champion', name: "Rumble", title: "the Mechanized Menace", role: "Fighter", rarity: "Diamond", attack: 900, magic: 2400, defense: 1800, image: "Rumble.png")
lissandra_card13 = Card.create(player_id: lissandra.id, cardtype: 'Champion', name: "Swain", title: "the Master Tactician", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 1200, image: "Swain.png")
lissandra_card14 = Card.create(player_id: lissandra.id, cardtype: 'Champion', name: "Swain", title: "the Master Tactician", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 1200, image: "Swain.png")
lissandra_card15 = Card.create(player_id: lissandra.id, cardtype: 'Champion', name: "Swain", title: "the Master Tactician", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 1200, image: "Swain.png")
lissandra_card16 = Card.create(player_id: lissandra.id, cardtype: 'Champion', name: "Fiddlesticks", title: "the Harbinger of Doom", role: "Mage", rarity: "Diamond", attack: 500, magic: 2250, defense: 750, image: "Fiddlesticks.png")
lissandra_card17 = Card.create(player_id: lissandra.id, cardtype: 'Champion', name: "Fiddlesticks", title: "the Harbinger of Doom", role: "Mage", rarity: "Diamond", attack: 500, magic: 2250, defense: 750, image: "Fiddlesticks.png")
lissandra_card18 = Card.create(player_id: lissandra.id, cardtype: 'Champion', name: "Fiddlesticks", title: "the Harbinger of Doom", role: "Mage", rarity: "Diamond", attack: 500, magic: 2250, defense: 750, image: "Fiddlesticks.png")
lissandra_card19 = Card.create(player_id: lissandra.id, cardtype: 'Champion', name: "Lissandra", title: "the Ice Witch", role: "Mage", rarity: "Bronze", attack: 200, magic: 800, defense: 500, image: "Lissandra.png")
lissandra_card20 = Card.create(player_id: lissandra.id, cardtype: 'Champion', name: "Lissandra", title: "the Ice Witch", role: "Mage", rarity: "Bronze", attack: 200, magic: 800, defense: 500, image: "Lissandra.png")
lissandra_card21 = Card.create(player_id: lissandra.id, cardtype: 'Champion', name: "Lissandra", title: "the Ice Witch", role: "Mage", rarity: "Bronze", attack: 200, magic: 800, defense: 500, image: "Lissandra.png")
lissandra_card22 = Card.create(player_id: lissandra.id, cardtype: 'Champion', name: "Syndra", title: "the Dark Sovereign", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 600, image: "Syndra.png")
lissandra_card23 = Card.create(player_id: lissandra.id, cardtype: 'Champion', name: "Syndra", title: "the Dark Sovereign", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 600, image: "Syndra.png")
lissandra_card24 = Card.create(player_id: lissandra.id, cardtype: 'Champion', name: "Syndra", title: "the Dark Sovereign", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 600, image: "Syndra.png")
lissandra_card25 = Card.create(player_id: lissandra.id, cardtype: 'Champion', name: "Vel'koz", title: "the Eye of the Void", role: "Mage", rarity: "Gold", attack: 400, magic: 2000, defense: 400, image: "Velkoz.png")
lissandra_card26 = Card.create(player_id: lissandra.id, cardtype: 'Champion', name: "Vel'koz", title: "the Eye of the Void", role: "Mage", rarity: "Gold", attack: 400, magic: 2000, defense: 400, image: "Velkoz.png")
lissandra_card27 = Card.create(player_id: lissandra.id, cardtype: 'Champion', name: "Vel'koz", title: "the Eye of the Void", role: "Mage", rarity: "Gold", attack: 400, magic: 2000, defense: 400, image: "Velkoz.png")
lissandra_card28 = Card.create(player_id: lissandra.id, cardtype: 'Champion', name: "Yasuo", title: "the Unforgiven", role: "Fighter", rarity: "Diamond", attack: 2400, magic: 1200, defense: 1200, image: "Yasuo.png")
lissandra_card29 = Card.create(player_id: lissandra.id, cardtype: 'Champion', name: "Yasuo", title: "the Unforgiven", role: "Fighter", rarity: "Diamond", attack: 2400, magic: 1200, defense: 1200, image: "Yasuo.png")
lissandra_card30 = Card.create(player_id: lissandra.id, cardtype: 'Champion', name: "Yasuo", title: "the Unforgiven", role: "Fighter", rarity: "Diamond", attack: 2400, magic: 1200, defense: 1200, image: "Yasuo.png")
lissandra_card31 = Card.create(player_id: lissandra.id, cardtype: 'Champion', name: "Shaco", title: "the Demon Jester", role: "Assassin", rarity: "Platinum", attack: 2000, magic: 1500, defense: 1000, image: "Shaco.png")
lissandra_card32 = Card.create(player_id: lissandra.id, cardtype: 'Champion', name: "Shaco", title: "the Demon Jester", role: "Assassin", rarity: "Platinum", attack: 2000, magic: 1500, defense: 1000, image: "Shaco.png")
lissandra_card33 = Card.create(player_id: lissandra.id, cardtype: 'Champion', name: "Shaco", title: "the Demon Jester", role: "Assassin", rarity: "Platinum", attack: 2000, magic: 1500, defense: 1000, image: "Shaco.png")
lissandra_card34 = Card.create(
  player_id: lissandra.id,
  name: "Void Staff",
  cardtype: "Item",
  rarity: "Platinum",
  description: "500 bonus to all stats to equipped Mage.",
  effect: "props.equip(props.selectedCard)",
  image: "VoidStaff.png",
  quantity: 0
)
lissandra_card35 = Card.create(
  player_id: lissandra.id,
  name: "Void Staff",
  cardtype: "Item",
  rarity: "Platinum",
  description: "500 bonus to all stats to equipped Mage.",
  effect: "props.equip(props.selectedCard)",
  image: "VoidStaff.png",
  quantity: 0
)
lissandra_card36 = Card.create(
  player_id: lissandra.id,
  name: "Noxian Guillotine",
  cardtype: "Ability",
  rarity: "Diamond",
  description: "Destroy any champion on your opponent's side of the field",
  effect: "props.noxianGuillotine(props.selectedCard)",
  image: "NoxianGuillotine.png",
  quantity: 0
)
lissandra_card37 = Card.create(
  player_id: lissandra.id,
  name: "Noxian Guillotine",
  cardtype: "Ability",
  rarity: "Diamond",
  description: "Destroy any champion on your opponent's side of the field",
  effect: "props.noxianGuillotine(props.selectedCard)",
  image: "NoxianGuillotine.png",
  quantity: 0
)
lissandra_card38 = Card.create(
  player_id: lissandra.id,
  name: "Noxian Guillotine",
  cardtype: "Ability",
  rarity: "Diamond",
  description: "Destroy any champion on your opponent's side of the field",
  effect: "props.noxianGuillotine(props.selectedCard)",
  image: "NoxianGuillotine.png",
  quantity: 0
)
lissandra_card39 = Card.create(
  player_id: lissandra.id,
  name: "Requiem",
  cardtype: "Ability",
  rarity: "Diamond",
  description: "Destroy every champion on your opponent's side of the field",
  effect: "props.requiem(props.selectedCard)",
  image: "Requiem.png",
  quantity: 0
)
lissandra_card40 = Card.create(
  player_id: lissandra.id,
  name: "Requiem",
  cardtype: "Ability",
  rarity: "Diamond",
  description: "Destroy every champion on your opponent's side of the field",
  effect: "props.requiem(props.selectedCard)",
  image: "Requiem.png",
  quantity: 0
)

lissandra_deckcard1 = Deckcard.create(deck_id: lissandra_deck.id, card_id: lissandra_card1.id)
lissandra_deckcard2 = Deckcard.create(deck_id: lissandra_deck.id, card_id: lissandra_card2.id)
lissandra_deckcard3 = Deckcard.create(deck_id: lissandra_deck.id, card_id: lissandra_card3.id)
lissandra_deckcard4 = Deckcard.create(deck_id: lissandra_deck.id, card_id: lissandra_card4.id)
lissandra_deckcard5 = Deckcard.create(deck_id: lissandra_deck.id, card_id: lissandra_card5.id)
lissandra_deckcard6 = Deckcard.create(deck_id: lissandra_deck.id, card_id: lissandra_card6.id)
lissandra_deckcard7 = Deckcard.create(deck_id: lissandra_deck.id, card_id: lissandra_card7.id)
lissandra_deckcard8 = Deckcard.create(deck_id: lissandra_deck.id, card_id: lissandra_card8.id)
lissandra_deckcard9 = Deckcard.create(deck_id: lissandra_deck.id, card_id: lissandra_card9.id)
lissandra_deckcard10 = Deckcard.create(deck_id: lissandra_deck.id, card_id: lissandra_card10.id)
lissandra_deckcard11 = Deckcard.create(deck_id: lissandra_deck.id, card_id: lissandra_card11.id)
lissandra_deckcard12 = Deckcard.create(deck_id: lissandra_deck.id, card_id: lissandra_card12.id)
lissandra_deckcard13 = Deckcard.create(deck_id: lissandra_deck.id, card_id: lissandra_card13.id)
lissandra_deckcard14 = Deckcard.create(deck_id: lissandra_deck.id, card_id: lissandra_card14.id)
lissandra_deckcard15 = Deckcard.create(deck_id: lissandra_deck.id, card_id: lissandra_card15.id)
lissandra_deckcard16 = Deckcard.create(deck_id: lissandra_deck.id, card_id: lissandra_card16.id)
lissandra_deckcard17 = Deckcard.create(deck_id: lissandra_deck.id, card_id: lissandra_card17.id)
lissandra_deckcard18 = Deckcard.create(deck_id: lissandra_deck.id, card_id: lissandra_card18.id)
lissandra_deckcard19 = Deckcard.create(deck_id: lissandra_deck.id, card_id: lissandra_card19.id)
lissandra_deckcard20 = Deckcard.create(deck_id: lissandra_deck.id, card_id: lissandra_card20.id)
lissandra_deckcard21 = Deckcard.create(deck_id: lissandra_deck.id, card_id: lissandra_card21.id)
lissandra_deckcard22 = Deckcard.create(deck_id: lissandra_deck.id, card_id: lissandra_card22.id)
lissandra_deckcard23 = Deckcard.create(deck_id: lissandra_deck.id, card_id: lissandra_card23.id)
lissandra_deckcard24 = Deckcard.create(deck_id: lissandra_deck.id, card_id: lissandra_card24.id)
lissandra_deckcard25 = Deckcard.create(deck_id: lissandra_deck.id, card_id: lissandra_card25.id)
lissandra_deckcard26 = Deckcard.create(deck_id: lissandra_deck.id, card_id: lissandra_card26.id)
lissandra_deckcard27 = Deckcard.create(deck_id: lissandra_deck.id, card_id: lissandra_card27.id)
lissandra_deckcard28 = Deckcard.create(deck_id: lissandra_deck.id, card_id: lissandra_card28.id)
lissandra_deckcard29 = Deckcard.create(deck_id: lissandra_deck.id, card_id: lissandra_card29.id)
lissandra_deckcard30 = Deckcard.create(deck_id: lissandra_deck.id, card_id: lissandra_card30.id)
lissandra_deckcard31 = Deckcard.create(deck_id: lissandra_deck.id, card_id: lissandra_card31.id)
lissandra_deckcard32 = Deckcard.create(deck_id: lissandra_deck.id, card_id: lissandra_card32.id)
lissandra_deckcard33 = Deckcard.create(deck_id: lissandra_deck.id, card_id: lissandra_card33.id)
lissandra_deckcard34 = Deckcard.create(deck_id: lissandra_deck.id, card_id: lissandra_card34.id)
lissandra_deckcard35 = Deckcard.create(deck_id: lissandra_deck.id, card_id: lissandra_card35.id)
lissandra_deckcard36 = Deckcard.create(deck_id: lissandra_deck.id, card_id: lissandra_card36.id)
lissandra_deckcard37 = Deckcard.create(deck_id: lissandra_deck.id, card_id: lissandra_card37.id)
lissandra_deckcard38 = Deckcard.create(deck_id: lissandra_deck.id, card_id: lissandra_card38.id)
lissandra_deckcard39 = Deckcard.create(deck_id: lissandra_deck.id, card_id: lissandra_card39.id)
lissandra_deckcard40 = Deckcard.create(deck_id: lissandra_deck.id, card_id: lissandra_card40.id)

renekton_card1 = Card.create(player_id: renekton.id, cardtype: 'Champion', name: "Evelynn", title: "the Widowmaker", role: "Assassin", rarity: "Diamond", attack: 1200, magic: 2100, defense: 600, image: "Evelynn.png")
renekton_card2 = Card.create(player_id: renekton.id, cardtype: 'Champion', name: "Evelynn", title: "the Widowmaker", role: "Assassin", rarity: "Diamond", attack: 1200, magic: 2100, defense: 600, image: "Evelynn.png")
renekton_card3 = Card.create(player_id: renekton.id, cardtype: 'Champion', name: "Evelynn", title: "the Widowmaker", role: "Assassin", rarity: "Diamond", attack: 1200, magic: 2100, defense: 600, image: "Evelynn.png")
renekton_card4 = Card.create(player_id: renekton.id, cardtype: 'Champion', name: "LeBlanc", title: "the Deceiver", role: "Assassin", rarity: "Diamond", attack: 250, magic: 2500, defense: 1000, image: "Leblanc.png")
renekton_card5 = Card.create(player_id: renekton.id, cardtype: 'Champion', name: "LeBlanc", title: "the Deceiver", role: "Assassin", rarity: "Diamond", attack: 250, magic: 2500, defense: 1000, image: "Leblanc.png")
renekton_card6 = Card.create(player_id: renekton.id, cardtype: 'Champion', name: "LeBlanc", title: "the Deceiver", role: "Assassin", rarity: "Diamond", attack: 250, magic: 2500, defense: 1000, image: "Leblanc.png")
renekton_card7 = Card.create(player_id: renekton.id, cardtype: 'Champion', name: "Rumble", title: "the Mechanized Menace", role: "Fighter", rarity: "Diamond", attack: 900, magic: 2400, defense: 1800, image: "Rumble.png")
renekton_card8 = Card.create(player_id: renekton.id, cardtype: 'Champion', name: "Rumble", title: "the Mechanized Menace", role: "Fighter", rarity: "Diamond", attack: 900, magic: 2400, defense: 1800, image: "Rumble.png")
renekton_card9 = Card.create(player_id: renekton.id, cardtype: 'Champion', name: "Rumble", title: "the Mechanized Menace", role: "Fighter", rarity: "Diamond", attack: 900, magic: 2400, defense: 1800, image: "Rumble.png")
renekton_card10 = Card.create(player_id: renekton.id, cardtype: 'Champion', name: "Swain", title: "the Master Tactician", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 1200, image: "Swain.png")
renekton_card11 = Card.create(player_id: renekton.id, cardtype: 'Champion', name: "Swain", title: "the Master Tactician", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 1200, image: "Swain.png")
renekton_card12 = Card.create(player_id: renekton.id, cardtype: 'Champion', name: "Swain", title: "the Master Tactician", role: "Mage", rarity: "Gold", attack: 400, magic: 1800, defense: 1200, image: "Swain.png")
renekton_card13 = Card.create(player_id: renekton.id, cardtype: 'Champion', name: "Fiddlesticks", title: "the Harbinger of Doom", role: "Mage", rarity: "Diamond", attack: 500, magic: 2250, defense: 750, image: "Fiddlesticks.png")
renekton_card14 = Card.create(player_id: renekton.id, cardtype: 'Champion', name: "Fiddlesticks", title: "the Harbinger of Doom", role: "Mage", rarity: "Diamond", attack: 500, magic: 2250, defense: 750, image: "Fiddlesticks.png")
renekton_card15 = Card.create(player_id: renekton.id, cardtype: 'Champion', name: "Fiddlesticks", title: "the Harbinger of Doom", role: "Mage", rarity: "Diamond", attack: 500, magic: 2250, defense: 750, image: "Fiddlesticks.png")
renekton_card16 = Card.create(player_id: renekton.id, cardtype: 'Champion', name: "Vayne", title: "the Night Hunter", role: "Marksman", rarity: "Gold", attack: 2000, magic: 200, defense: 200, image: "Vayne.png")
renekton_card17 = Card.create(player_id: renekton.id, cardtype: 'Champion', name: "Vayne", title: "the Night Hunter", role: "Marksman", rarity: "Gold", attack: 2000, magic: 200, defense: 200, image: "Vayne.png")
renekton_card18 = Card.create(player_id: renekton.id, cardtype: 'Champion', name: "Renekton", title: "the Butcher of the Sands", role: "Fighter", rarity: "Bronze", attack: 800, magic: 200, defense: 500, image: "Renekton.png")
renekton_card19 = Card.create(player_id: renekton.id, cardtype: 'Champion', name: "Renekton", title: "the Butcher of the Sands", role: "Fighter", rarity: "Bronze", attack: 800, magic: 200, defense: 500, image: "Renekton.png")
renekton_card20 = Card.create(player_id: renekton.id, cardtype: 'Champion', name: "Renekton", title: "the Butcher of the Sands", role: "Fighter", rarity: "Bronze", attack: 800, magic: 200, defense: 500, image: "Renekton.png")
renekton_card21 = Card.create(player_id: renekton.id, cardtype: 'Champion', name: "Viktor", title: "the Machine Herald", role: "Mage", rarity: "Diamond", attack: 500, magic: 2500, defense: 1000, image: "Viktor.png")
renekton_card22 = Card.create(player_id: renekton.id, cardtype: 'Champion', name: "Viktor", title: "the Machine Herald", role: "Mage", rarity: "Diamond", attack: 500, magic: 2500, defense: 1000, image: "Viktor.png")
renekton_card23 = Card.create(player_id: renekton.id, cardtype: 'Champion', name: "Viktor", title: "the Machine Herald", role: "Mage", rarity: "Diamond", attack: 500, magic: 2500, defense: 1000, image: "Viktor.png")
renekton_card24 = Card.create(player_id: renekton.id, cardtype: 'Champion', name: "Vel'koz", title: "the Eye of the Void", role: "Mage", rarity: "Gold", attack: 400, magic: 2000, defense: 400, image: "Velkoz.png")
renekton_card25 = Card.create(player_id: renekton.id, cardtype: 'Champion', name: "Vel'koz", title: "the Eye of the Void", role: "Mage", rarity: "Gold", attack: 400, magic: 2000, defense: 400, image: "Velkoz.png")
renekton_card26 = Card.create(player_id: renekton.id, cardtype: 'Champion', name: "Vel'koz", title: "the Eye of the Void", role: "Mage", rarity: "Gold", attack: 400, magic: 2000, defense: 400, image: "Velkoz.png")
renekton_card27 = Card.create(player_id: renekton.id, cardtype: 'Champion', name: "Yasuo", title: "the Unforgiven", role: "Fighter", rarity: "Diamond", attack: 2400, magic: 1200, defense: 1200, image: "Yasuo.png")
renekton_card28 = Card.create(player_id: renekton.id, cardtype: 'Champion', name: "Yasuo", title: "the Unforgiven", role: "Fighter", rarity: "Diamond", attack: 2400, magic: 1200, defense: 1200, image: "Yasuo.png")
renekton_card29 = Card.create(player_id: renekton.id, cardtype: 'Champion', name: "Yasuo", title: "the Unforgiven", role: "Fighter", rarity: "Diamond", attack: 2400, magic: 1200, defense: 1200, image: "Yasuo.png")
renekton_card30 = Card.create(player_id: renekton.id, cardtype: 'Champion', name: "Shaco", title: "the Demon Jester", role: "Assassin", rarity: "Platinum", attack: 2000, magic: 1500, defense: 1000, image: "Shaco.png")
renekton_card31 = Card.create(player_id: renekton.id, cardtype: 'Champion', name: "Shaco", title: "the Demon Jester", role: "Assassin", rarity: "Platinum", attack: 2000, magic: 1500, defense: 1000, image: "Shaco.png")
renekton_card32 = Card.create(player_id: renekton.id, cardtype: 'Champion', name: "Shaco", title: "the Demon Jester", role: "Assassin", rarity: "Platinum", attack: 2000, magic: 1500, defense: 1000, image: "Shaco.png")
renekton_card33 = Card.create(
  player_id: renekton.id,
  name: "Duskblade of Draktharr",
  cardtype: "Item",
  rarity: "Platinum",
  description: "500 bonus to all stats to equipped Assassin.",
  effect: "props.equip(props.selectedCard)",
  image: "DuskbladeofDraktharr.png",
  quantity: 0
)
renekton_card34 = Card.create(
  player_id: renekton.id,
  name: "Duskblade of Draktharr",
  cardtype: "Item",
  rarity: "Platinum",
  description: "500 bonus to all stats to equipped Assassin.",
  effect: "props.equip(props.selectedCard)",
  image: "DuskbladeofDraktharr.png",
  quantity: 0
)
renekton_card35 = Card.create(
  player_id: renekton.id,
  name: "Duskblade of Draktharr",
  cardtype: "Item",
  rarity: "Platinum",
  description: "500 bonus to all stats to equipped Assassin.",
  effect: "props.equip(props.selectedCard)",
  image: "DuskbladeofDraktharr.png",
  quantity: 0
)
renekton_card36 = Card.create(
  player_id: renekton.id,
  name: "Noxian Guillotine",
  cardtype: "Ability",
  rarity: "Diamond",
  description: "Destroy any champion on your opponent's side of the field",
  effect: "props.noxianGuillotine(props.selectedCard)",
  image: "NoxianGuillotine.png",
  quantity: 0
)
renekton_card37 = Card.create(
  player_id: renekton.id,
  name: "Noxian Guillotine",
  cardtype: "Ability",
  rarity: "Diamond",
  description: "Destroy any champion on your opponent's side of the field",
  effect: "props.noxianGuillotine(props.selectedCard)",
  image: "NoxianGuillotine.png",
  quantity: 0
)
renekton_card38 = Card.create(
  player_id: renekton.id,
  name: "Noxian Guillotine",
  cardtype: "Ability",
  rarity: "Diamond",
  description: "Destroy any champion on your opponent's side of the field",
  effect: "props.noxianGuillotine(props.selectedCard)",
  image: "NoxianGuillotine.png",
  quantity: 0
)
renekton_card39 = Card.create(
  player_id: renekton.id,
  name: "Requiem",
  cardtype: "Ability",
  rarity: "Diamond",
  description: "Destroy every champion on your opponent's side of the field",
  effect: "props.requiem(props.selectedCard)",
  image: "Requiem.png",
  quantity: 0
)
renekton_card40 = Card.create(
  player_id: renekton.id,
  name: "Requiem",
  cardtype: "Ability",
  rarity: "Diamond",
  description: "Destroy every champion on your opponent's side of the field",
  effect: "props.requiem(props.selectedCard)",
  image: "Requiem.png",
  quantity: 0
)

renekton_deckcard1 = Deckcard.create(deck_id: renekton_deck.id, card_id: renekton_card1.id)
renekton_deckcard2 = Deckcard.create(deck_id: renekton_deck.id, card_id: renekton_card2.id)
renekton_deckcard3 = Deckcard.create(deck_id: renekton_deck.id, card_id: renekton_card3.id)
renekton_deckcard4 = Deckcard.create(deck_id: renekton_deck.id, card_id: renekton_card4.id)
renekton_deckcard5 = Deckcard.create(deck_id: renekton_deck.id, card_id: renekton_card5.id)
renekton_deckcard6 = Deckcard.create(deck_id: renekton_deck.id, card_id: renekton_card6.id)
renekton_deckcard7 = Deckcard.create(deck_id: renekton_deck.id, card_id: renekton_card7.id)
renekton_deckcard8 = Deckcard.create(deck_id: renekton_deck.id, card_id: renekton_card8.id)
renekton_deckcard9 = Deckcard.create(deck_id: renekton_deck.id, card_id: renekton_card9.id)
renekton_deckcard10 = Deckcard.create(deck_id: renekton_deck.id, card_id: renekton_card10.id)
renekton_deckcard11 = Deckcard.create(deck_id: renekton_deck.id, card_id: renekton_card11.id)
renekton_deckcard12 = Deckcard.create(deck_id: renekton_deck.id, card_id: renekton_card12.id)
renekton_deckcard13 = Deckcard.create(deck_id: renekton_deck.id, card_id: renekton_card13.id)
renekton_deckcard14 = Deckcard.create(deck_id: renekton_deck.id, card_id: renekton_card14.id)
renekton_deckcard15 = Deckcard.create(deck_id: renekton_deck.id, card_id: renekton_card15.id)
renekton_deckcard16 = Deckcard.create(deck_id: renekton_deck.id, card_id: renekton_card16.id)
renekton_deckcard17 = Deckcard.create(deck_id: renekton_deck.id, card_id: renekton_card17.id)
renekton_deckcard18 = Deckcard.create(deck_id: renekton_deck.id, card_id: renekton_card18.id)
renekton_deckcard19 = Deckcard.create(deck_id: renekton_deck.id, card_id: renekton_card19.id)
renekton_deckcard20 = Deckcard.create(deck_id: renekton_deck.id, card_id: renekton_card20.id)
renekton_deckcard21 = Deckcard.create(deck_id: renekton_deck.id, card_id: renekton_card21.id)
renekton_deckcard22 = Deckcard.create(deck_id: renekton_deck.id, card_id: renekton_card22.id)
renekton_deckcard23 = Deckcard.create(deck_id: renekton_deck.id, card_id: renekton_card23.id)
renekton_deckcard24 = Deckcard.create(deck_id: renekton_deck.id, card_id: renekton_card24.id)
renekton_deckcard25 = Deckcard.create(deck_id: renekton_deck.id, card_id: renekton_card25.id)
renekton_deckcard26 = Deckcard.create(deck_id: renekton_deck.id, card_id: renekton_card26.id)
renekton_deckcard27 = Deckcard.create(deck_id: renekton_deck.id, card_id: renekton_card27.id)
renekton_deckcard28 = Deckcard.create(deck_id: renekton_deck.id, card_id: renekton_card28.id)
renekton_deckcard29 = Deckcard.create(deck_id: renekton_deck.id, card_id: renekton_card29.id)
renekton_deckcard30 = Deckcard.create(deck_id: renekton_deck.id, card_id: renekton_card30.id)
renekton_deckcard31 = Deckcard.create(deck_id: renekton_deck.id, card_id: renekton_card31.id)
renekton_deckcard32 = Deckcard.create(deck_id: renekton_deck.id, card_id: renekton_card32.id)
renekton_deckcard33 = Deckcard.create(deck_id: renekton_deck.id, card_id: renekton_card33.id)
renekton_deckcard34 = Deckcard.create(deck_id: renekton_deck.id, card_id: renekton_card34.id)
renekton_deckcard35 = Deckcard.create(deck_id: renekton_deck.id, card_id: renekton_card35.id)
renekton_deckcard36 = Deckcard.create(deck_id: renekton_deck.id, card_id: renekton_card36.id)
renekton_deckcard37 = Deckcard.create(deck_id: renekton_deck.id, card_id: renekton_card37.id)
renekton_deckcard38 = Deckcard.create(deck_id: renekton_deck.id, card_id: renekton_card38.id)
renekton_deckcard39 = Deckcard.create(deck_id: renekton_deck.id, card_id: renekton_card39.id)
renekton_deckcard40 = Deckcard.create(deck_id: renekton_deck.id, card_id: renekton_card40.id)

nasus_card1 = Card.create(player_id: nasus.id, cardtype: 'Champion', name: "Evelynn", title: "the Widowmaker", role: "Assassin", rarity: "Diamond", attack: 1200, magic: 2100, defense: 600, image: "Evelynn.png")
nasus_card2 = Card.create(player_id: nasus.id, cardtype: 'Champion', name: "Evelynn", title: "the Widowmaker", role: "Assassin", rarity: "Diamond", attack: 1200, magic: 2100, defense: 600, image: "Evelynn.png")
nasus_card3 = Card.create(player_id: nasus.id, cardtype: 'Champion', name: "Evelynn", title: "the Widowmaker", role: "Assassin", rarity: "Diamond", attack: 1200, magic: 2100, defense: 600, image: "Evelynn.png")
nasus_card4 = Card.create(player_id: nasus.id, cardtype: 'Champion', name: "LeBlanc", title: "the Deceiver", role: "Assassin", rarity: "Diamond", attack: 250, magic: 2500, defense: 1000, image: "Leblanc.png")
nasus_card5 = Card.create(player_id: nasus.id, cardtype: 'Champion', name: "LeBlanc", title: "the Deceiver", role: "Assassin", rarity: "Diamond", attack: 250, magic: 2500, defense: 1000, image: "Leblanc.png")
nasus_card6 = Card.create(player_id: nasus.id, cardtype: 'Champion', name: "LeBlanc", title: "the Deceiver", role: "Assassin", rarity: "Diamond", attack: 250, magic: 2500, defense: 1000, image: "Leblanc.png")
nasus_card7 = Card.create(player_id: nasus.id, cardtype: 'Champion', name: "Rumble", title: "the Mechanized Menace", role: "Fighter", rarity: "Diamond", attack: 900, magic: 2400, defense: 1800, image: "Rumble.png")
nasus_card8 = Card.create(player_id: nasus.id, cardtype: 'Champion', name: "Rumble", title: "the Mechanized Menace", role: "Fighter", rarity: "Diamond", attack: 900, magic: 2400, defense: 1800, image: "Rumble.png")
nasus_card9 = Card.create(player_id: nasus.id, cardtype: 'Champion', name: "Rumble", title: "the Mechanized Menace", role: "Fighter", rarity: "Diamond", attack: 900, magic: 2400, defense: 1800, image: "Rumble.png")
nasus_card10 = Card.create(player_id: nasus.id, cardtype: 'Champion', name: "Cassiopeia", title: "the Serpent's Embrace", role: "Mage", rarity: "Diamond", attack: 600, magic: 2700, defense: 900, image: "Cassiopeia.png")
nasus_card11 = Card.create(player_id: nasus.id, cardtype: 'Champion', name: "Cassiopeia", title: "the Serpent's Embrace", role: "Mage", rarity: "Diamond", attack: 600, magic: 2700, defense: 900, image: "Cassiopeia.png")
nasus_card12 = Card.create(player_id: nasus.id, cardtype: 'Champion', name: "Cassiopeia", title: "the Serpent's Embrace", role: "Mage", rarity: "Diamond", attack: 600, magic: 2700, defense: 900, image: "Cassiopeia.png")
nasus_card13 = Card.create(player_id: nasus.id, cardtype: 'Champion', name: "Fiddlesticks", title: "the Harbinger of Doom", role: "Mage", rarity: "Diamond", attack: 500, magic: 2250, defense: 750, image: "Fiddlesticks.png")
nasus_card14 = Card.create(player_id: nasus.id, cardtype: 'Champion', name: "Fiddlesticks", title: "the Harbinger of Doom", role: "Mage", rarity: "Diamond", attack: 500, magic: 2250, defense: 750, image: "Fiddlesticks.png")
nasus_card15 = Card.create(player_id: nasus.id, cardtype: 'Champion', name: "Fiddlesticks", title: "the Harbinger of Doom", role: "Mage", rarity: "Diamond", attack: 500, magic: 2250, defense: 750, image: "Fiddlesticks.png")
nasus_card16 = Card.create(player_id: nasus.id, cardtype: 'Champion', name: "Vayne", title: "the Night Hunter", role: "Marksman", rarity: "Gold", attack: 2000, magic: 200, defense: 200, image: "Vayne.png")
nasus_card17 = Card.create(player_id: nasus.id, cardtype: 'Champion', name: "Nasus", title: "the Curator of the Sands", role: "Fighter", rarity: "Bronze", attack: 700, magic: 600, defense: 500, image: "Nasus.png")
nasus_card18 = Card.create(player_id: nasus.id, cardtype: 'Champion', name: "Nasus", title: "the Curator of the Sands", role: "Fighter", rarity: "Bronze", attack: 700, magic: 600, defense: 500, image: "Nasus.png")
nasus_card19 = Card.create(player_id: nasus.id, cardtype: 'Champion', name: "Nasus", title: "the Curator of the Sands", role: "Fighter", rarity: "Bronze", attack: 700, magic: 600, defense: 500, image: "Nasus.png")
nasus_card20 = Card.create(player_id: nasus.id, cardtype: 'Champion', name: "Viktor", title: "the Machine Herald", role: "Mage", rarity: "Diamond", attack: 500, magic: 2500, defense: 1000, image: "Viktor.png")
nasus_card21 = Card.create(player_id: nasus.id, cardtype: 'Champion', name: "Viktor", title: "the Machine Herald", role: "Mage", rarity: "Diamond", attack: 500, magic: 2500, defense: 1000, image: "Viktor.png")
nasus_card22 = Card.create(player_id: nasus.id, cardtype: 'Champion', name: "Viktor", title: "the Machine Herald", role: "Mage", rarity: "Diamond", attack: 500, magic: 2500, defense: 1000, image: "Viktor.png")
nasus_card23 = Card.create(player_id: nasus.id, cardtype: 'Champion', name: "Vel'koz", title: "the Eye of the Void", role: "Mage", rarity: "Gold", attack: 400, magic: 2000, defense: 400, image: "Velkoz.png")
nasus_card24 = Card.create(player_id: nasus.id, cardtype: 'Champion', name: "Vel'koz", title: "the Eye of the Void", role: "Mage", rarity: "Gold", attack: 400, magic: 2000, defense: 400, image: "Velkoz.png")
nasus_card25 = Card.create(player_id: nasus.id, cardtype: 'Champion', name: "Vel'koz", title: "the Eye of the Void", role: "Mage", rarity: "Gold", attack: 400, magic: 2000, defense: 400, image: "Velkoz.png")
nasus_card26 = Card.create(player_id: nasus.id, cardtype: 'Champion', name: "Yasuo", title: "the Unforgiven", role: "Fighter", rarity: "Diamond", attack: 2400, magic: 1200, defense: 1200, image: "Yasuo.png")
nasus_card27 = Card.create(player_id: nasus.id, cardtype: 'Champion', name: "Yasuo", title: "the Unforgiven", role: "Fighter", rarity: "Diamond", attack: 2400, magic: 1200, defense: 1200, image: "Yasuo.png")
nasus_card28 = Card.create(player_id: nasus.id, cardtype: 'Champion', name: "Yasuo", title: "the Unforgiven", role: "Fighter", rarity: "Diamond", attack: 2400, magic: 1200, defense: 1200, image: "Yasuo.png")
nasus_card29 = Card.create(player_id: nasus.id, cardtype: 'Champion', name: "Shaco", title: "the Demon Jester", role: "Assassin", rarity: "Platinum", attack: 2000, magic: 1500, defense: 1000, image: "Shaco.png")
nasus_card30 = Card.create(player_id: nasus.id, cardtype: 'Champion', name: "Shaco", title: "the Demon Jester", role: "Assassin", rarity: "Platinum", attack: 2000, magic: 1500, defense: 1000, image: "Shaco.png")
nasus_card31 = Card.create(player_id: nasus.id, cardtype: 'Champion', name: "Shaco", title: "the Demon Jester", role: "Assassin", rarity: "Platinum", attack: 2000, magic: 1500, defense: 1000, image: "Shaco.png")
nasus_card32 = Card.create(
  player_id: nasus.id,
  name: "Void Staff",
  cardtype: "Item",
  rarity: "Platinum",
  description: "500 bonus to all stats to equipped Mage.",
  effect: "props.equip(props.selectedCard)",
  image: "VoidStaff.png",
  quantity: 0
)
nasus_card33 = Card.create(
  player_id: nasus.id,
  name: "Void Staff",
  cardtype: "Item",
  rarity: "Platinum",
  description: "500 bonus to all stats to equipped Mage.",
  effect: "props.equip(props.selectedCard)",
  image: "VoidStaff.png",
  quantity: 0
)
nasus_card34 = Card.create(
  player_id: nasus.id,
  name: "Void Staff",
  cardtype: "Item",
  rarity: "Platinum",
  description: "500 bonus to all stats to equipped Mage.",
  effect: "props.equip(props.selectedCard)",
  image: "VoidStaff.png",
  quantity: 0
)
nasus_card35 = Card.create(
  player_id: nasus.id,
  name: "Noxian Guillotine",
  cardtype: "Ability",
  rarity: "Diamond",
  description: "Destroy any champion on your opponent's side of the field",
  effect: "props.noxianGuillotine(props.selectedCard)",
  image: "NoxianGuillotine.png",
  quantity: 0
)
nasus_card36 = Card.create(
  player_id: nasus.id,
  name: "Noxian Guillotine",
  cardtype: "Ability",
  rarity: "Diamond",
  description: "Destroy any champion on your opponent's side of the field",
  effect: "props.noxianGuillotine(props.selectedCard)",
  image: "NoxianGuillotine.png",
  quantity: 0
)
nasus_card37 = Card.create(
  player_id: nasus.id,
  name: "Noxian Guillotine",
  cardtype: "Ability",
  rarity: "Diamond",
  description: "Destroy any champion on your opponent's side of the field",
  effect: "props.noxianGuillotine(props.selectedCard)",
  image: "NoxianGuillotine.png",
  quantity: 0
)
nasus_card38 = Card.create(
  player_id: nasus.id,
  name: "Requiem",
  cardtype: "Ability",
  rarity: "Diamond",
  description: "Destroy every champion on your opponent's side of the field",
  effect: "props.requiem(props.selectedCard)",
  image: "Requiem.png",
  quantity: 0
)
nasus_card39 = Card.create(
  player_id: nasus.id,
  name: "Requiem",
  cardtype: "Ability",
  rarity: "Diamond",
  description: "Destroy every champion on your opponent's side of the field",
  effect: "props.requiem(props.selectedCard)",
  image: "Requiem.png",
  quantity: 0
)
nasus_card40 = Card.create(
  player_id: nasus.id,
  name: "Requiem",
  cardtype: "Ability",
  rarity: "Diamond",
  description: "Destroy every champion on your opponent's side of the field",
  effect: "props.requiem(props.selectedCard)",
  image: "Requiem.png",
  quantity: 0
)

nasus_deckcard1 = Deckcard.create(deck_id: nasus_deck.id, card_id: nasus_card1.id)
nasus_deckcard2 = Deckcard.create(deck_id: nasus_deck.id, card_id: nasus_card2.id)
nasus_deckcard3 = Deckcard.create(deck_id: nasus_deck.id, card_id: nasus_card3.id)
nasus_deckcard4 = Deckcard.create(deck_id: nasus_deck.id, card_id: nasus_card4.id)
nasus_deckcard5 = Deckcard.create(deck_id: nasus_deck.id, card_id: nasus_card5.id)
nasus_deckcard6 = Deckcard.create(deck_id: nasus_deck.id, card_id: nasus_card6.id)
nasus_deckcard7 = Deckcard.create(deck_id: nasus_deck.id, card_id: nasus_card7.id)
nasus_deckcard8 = Deckcard.create(deck_id: nasus_deck.id, card_id: nasus_card8.id)
nasus_deckcard9 = Deckcard.create(deck_id: nasus_deck.id, card_id: nasus_card9.id)
nasus_deckcard10 = Deckcard.create(deck_id: nasus_deck.id, card_id: nasus_card10.id)
nasus_deckcard11 = Deckcard.create(deck_id: nasus_deck.id, card_id: nasus_card11.id)
nasus_deckcard12 = Deckcard.create(deck_id: nasus_deck.id, card_id: nasus_card12.id)
nasus_deckcard13 = Deckcard.create(deck_id: nasus_deck.id, card_id: nasus_card13.id)
nasus_deckcard14 = Deckcard.create(deck_id: nasus_deck.id, card_id: nasus_card14.id)
nasus_deckcard15 = Deckcard.create(deck_id: nasus_deck.id, card_id: nasus_card15.id)
nasus_deckcard16 = Deckcard.create(deck_id: nasus_deck.id, card_id: nasus_card16.id)
nasus_deckcard17 = Deckcard.create(deck_id: nasus_deck.id, card_id: nasus_card17.id)
nasus_deckcard18 = Deckcard.create(deck_id: nasus_deck.id, card_id: nasus_card18.id)
nasus_deckcard19 = Deckcard.create(deck_id: nasus_deck.id, card_id: nasus_card19.id)
nasus_deckcard20 = Deckcard.create(deck_id: nasus_deck.id, card_id: nasus_card20.id)
nasus_deckcard21 = Deckcard.create(deck_id: nasus_deck.id, card_id: nasus_card21.id)
nasus_deckcard22 = Deckcard.create(deck_id: nasus_deck.id, card_id: nasus_card22.id)
nasus_deckcard23 = Deckcard.create(deck_id: nasus_deck.id, card_id: nasus_card23.id)
nasus_deckcard24 = Deckcard.create(deck_id: nasus_deck.id, card_id: nasus_card24.id)
nasus_deckcard25 = Deckcard.create(deck_id: nasus_deck.id, card_id: nasus_card25.id)
nasus_deckcard26 = Deckcard.create(deck_id: nasus_deck.id, card_id: nasus_card26.id)
nasus_deckcard27 = Deckcard.create(deck_id: nasus_deck.id, card_id: nasus_card27.id)
nasus_deckcard28 = Deckcard.create(deck_id: nasus_deck.id, card_id: nasus_card28.id)
nasus_deckcard29 = Deckcard.create(deck_id: nasus_deck.id, card_id: nasus_card29.id)
nasus_deckcard30 = Deckcard.create(deck_id: nasus_deck.id, card_id: nasus_card30.id)
nasus_deckcard31 = Deckcard.create(deck_id: nasus_deck.id, card_id: nasus_card31.id)
nasus_deckcard32 = Deckcard.create(deck_id: nasus_deck.id, card_id: nasus_card32.id)
nasus_deckcard33 = Deckcard.create(deck_id: nasus_deck.id, card_id: nasus_card33.id)
nasus_deckcard34 = Deckcard.create(deck_id: nasus_deck.id, card_id: nasus_card34.id)
nasus_deckcard35 = Deckcard.create(deck_id: nasus_deck.id, card_id: nasus_card35.id)
nasus_deckcard36 = Deckcard.create(deck_id: nasus_deck.id, card_id: nasus_card36.id)
nasus_deckcard37 = Deckcard.create(deck_id: nasus_deck.id, card_id: nasus_card37.id)
nasus_deckcard38 = Deckcard.create(deck_id: nasus_deck.id, card_id: nasus_card38.id)
nasus_deckcard39 = Deckcard.create(deck_id: nasus_deck.id, card_id: nasus_card39.id)
nasus_deckcard40 = Deckcard.create(deck_id: nasus_deck.id, card_id: nasus_card40.id)

xerath_card1 = Card.create(player_id: xerath.id, cardtype: 'Champion', name: "Anivia", title: "the Cryophoenix", role: "Mage", rarity: "Diamond", attack: 300, magic: 3000, defense: 1200, image: "Anivia.png")
xerath_card2 = Card.create(player_id: xerath.id, cardtype: 'Champion', name: "Anivia", title: "the Cryophoenix", role: "Mage", rarity: "Diamond", attack: 300, magic: 3000, defense: 1200, image: "Anivia.png")
xerath_card3 = Card.create(player_id: xerath.id, cardtype: 'Champion', name: "Anivia", title: "the Cryophoenix", role: "Mage", rarity: "Diamond", attack: 300, magic: 3000, defense: 1200, image: "Anivia.png")
xerath_card4 = Card.create(player_id: xerath.id, cardtype: 'Champion', name: "Evelynn", title: "the Widowmaker", role: "Assassin", rarity: "Diamond", attack: 1200, magic: 2100, defense: 600, image: "Evelynn.png")
xerath_card5 = Card.create(player_id: xerath.id, cardtype: 'Champion', name: "Evelynn", title: "the Widowmaker", role: "Assassin", rarity: "Diamond", attack: 1200, magic: 2100, defense: 600, image: "Evelynn.png")
xerath_card6 = Card.create(player_id: xerath.id, cardtype: 'Champion', name: "Evelynn", title: "the Widowmaker", role: "Assassin", rarity: "Diamond", attack: 1200, magic: 2100, defense: 600, image: "Evelynn.png")
xerath_card7 = Card.create(player_id: xerath.id, cardtype: 'Champion', name: "LeBlanc", title: "the Deceiver", role: "Assassin", rarity: "Diamond", attack: 250, magic: 2500, defense: 1000, image: "Leblanc.png")
xerath_card8 = Card.create(player_id: xerath.id, cardtype: 'Champion', name: "LeBlanc", title: "the Deceiver", role: "Assassin", rarity: "Diamond", attack: 250, magic: 2500, defense: 1000, image: "Leblanc.png")
xerath_card9 = Card.create(player_id: xerath.id, cardtype: 'Champion', name: "LeBlanc", title: "the Deceiver", role: "Assassin", rarity: "Diamond", attack: 250, magic: 2500, defense: 1000, image: "Leblanc.png")
xerath_card10 = Card.create(player_id: xerath.id, cardtype: 'Champion', name: "Rumble", title: "the Mechanized Menace", role: "Fighter", rarity: "Diamond", attack: 900, magic: 2400, defense: 1800, image: "Rumble.png")
xerath_card11 = Card.create(player_id: xerath.id, cardtype: 'Champion', name: "Rumble", title: "the Mechanized Menace", role: "Fighter", rarity: "Diamond", attack: 900, magic: 2400, defense: 1800, image: "Rumble.png")
xerath_card12 = Card.create(player_id: xerath.id, cardtype: 'Champion', name: "Rumble", title: "the Mechanized Menace", role: "Fighter", rarity: "Diamond", attack: 900, magic: 2400, defense: 1800, image: "Rumble.png")
xerath_card13 = Card.create(player_id: xerath.id, cardtype: 'Champion', name: "Cassiopeia", title: "the Serpent's Embrace", role: "Mage", rarity: "Diamond", attack: 600, magic: 2700, defense: 900, image: "Cassiopeia.png")
xerath_card14 = Card.create(player_id: xerath.id, cardtype: 'Champion', name: "Cassiopeia", title: "the Serpent's Embrace", role: "Mage", rarity: "Diamond", attack: 600, magic: 2700, defense: 900, image: "Cassiopeia.png")
xerath_card15 = Card.create(player_id: xerath.id, cardtype: 'Champion', name: "Cassiopeia", title: "the Serpent's Embrace", role: "Mage", rarity: "Diamond", attack: 600, magic: 2700, defense: 900, image: "Cassiopeia.png")
xerath_card16 = Card.create(player_id: xerath.id, cardtype: 'Champion', name: "Fiddlesticks", title: "the Harbinger of Doom", role: "Mage", rarity: "Diamond", attack: 500, magic: 2250, defense: 750, image: "Fiddlesticks.png")
xerath_card17 = Card.create(player_id: xerath.id, cardtype: 'Champion', name: "Fiddlesticks", title: "the Harbinger of Doom", role: "Mage", rarity: "Diamond", attack: 500, magic: 2250, defense: 750, image: "Fiddlesticks.png")
xerath_card18 = Card.create(player_id: xerath.id, cardtype: 'Champion', name: "Fiddlesticks", title: "the Harbinger of Doom", role: "Mage", rarity: "Diamond", attack: 500, magic: 2250, defense: 750, image: "Fiddlesticks.png")
xerath_card19 = Card.create(player_id: xerath.id, cardtype: 'Champion', name: "Vel'koz", title: "the Eye of the Void", role: "Mage", rarity: "Gold", attack: 400, magic: 2000, defense: 400, image: "Velkoz.png")
xerath_card20 = Card.create(player_id: xerath.id, cardtype: 'Champion', name: "Xerath", title: "the Magus Ascendant", role: "Mage", rarity: "Gold", attack: 200, magic: 2000, defense: 600, image: "Xerath.png")
xerath_card21 = Card.create(player_id: xerath.id, cardtype: 'Champion', name: "Xerath", title: "the Magus Ascendant", role: "Mage", rarity: "Gold", attack: 200, magic: 2000, defense: 600, image: "Xerath.png")
xerath_card22 = Card.create(player_id: xerath.id, cardtype: 'Champion', name: "Xerath", title: "the Magus Ascendant", role: "Mage", rarity: "Gold", attack: 200, magic: 2000, defense: 600, image: "Xerath.png")
xerath_card23 = Card.create(player_id: xerath.id, cardtype: 'Champion', name: "Viktor", title: "the Machine Herald", role: "Mage", rarity: "Diamond", attack: 500, magic: 2500, defense: 1000, image: "Viktor.png")
xerath_card24 = Card.create(player_id: xerath.id, cardtype: 'Champion', name: "Viktor", title: "the Machine Herald", role: "Mage", rarity: "Diamond", attack: 500, magic: 2500, defense: 1000, image: "Viktor.png")
xerath_card25 = Card.create(player_id: xerath.id, cardtype: 'Champion', name: "Viktor", title: "the Machine Herald", role: "Mage", rarity: "Diamond", attack: 500, magic: 2500, defense: 1000, image: "Viktor.png")
xerath_card26 = Card.create(player_id: xerath.id, cardtype: 'Champion', name: "Yasuo", title: "the Unforgiven", role: "Fighter", rarity: "Diamond", attack: 2400, magic: 1200, defense: 1200, image: "Yasuo.png")
xerath_card27 = Card.create(player_id: xerath.id, cardtype: 'Champion', name: "Yasuo", title: "the Unforgiven", role: "Fighter", rarity: "Diamond", attack: 2400, magic: 1200, defense: 1200, image: "Yasuo.png")
xerath_card28 = Card.create(player_id: xerath.id, cardtype: 'Champion', name: "Yasuo", title: "the Unforgiven", role: "Fighter", rarity: "Diamond", attack: 2400, magic: 1200, defense: 1200, image: "Yasuo.png")
xerath_card29 = Card.create(player_id: xerath.id, cardtype: 'Champion', name: "Shaco", title: "the Demon Jester", role: "Assassin", rarity: "Platinum", attack: 2000, magic: 1500, defense: 1000, image: "Shaco.png")
xerath_card30 = Card.create(player_id: xerath.id, cardtype: 'Champion', name: "Shaco", title: "the Demon Jester", role: "Assassin", rarity: "Platinum", attack: 2000, magic: 1500, defense: 1000, image: "Shaco.png")
xerath_card31 = Card.create(player_id: xerath.id, cardtype: 'Champion', name: "Shaco", title: "the Demon Jester", role: "Assassin", rarity: "Platinum", attack: 2000, magic: 1500, defense: 1000, image: "Shaco.png")
xerath_card32 = Card.create(
  player_id: xerath.id,
  name: "Rabadon's Deathcap",
  cardtype: "Item",
  rarity: "Diamond",
  description: "700 bonus to all stats to equipped Mage.",
  effect: "props.equip(props.selectedCard)",
  image: "RabadonsDeathcap.png",
  quantity: 0
)
xerath_card33 = Card.create(
  player_id: xerath.id,
  name: "Rabadon's Deathcap",
  cardtype: "Item",
  rarity: "Diamond",
  description: "700 bonus to all stats to equipped Mage.",
  effect: "props.equip(props.selectedCard)",
  image: "RabadonsDeathcap.png",
  quantity: 0
)
xerath_card34 = Card.create(
  player_id: xerath.id,
  name: "Rabadon's Deathcap",
  cardtype: "Item",
  rarity: "Diamond",
  description: "700 bonus to all stats to equipped Mage.",
  effect: "props.equip(props.selectedCard)",
  image: "RabadonsDeathcap.png",
  quantity: 0
)
xerath_card35 = Card.create(
  player_id: xerath.id,
  name: "Noxian Guillotine",
  cardtype: "Ability",
  rarity: "Diamond",
  description: "Destroy any champion on your opponent's side of the field",
  effect: "props.noxianGuillotine(props.selectedCard)",
  image: "NoxianGuillotine.png",
  quantity: 0
)
xerath_card36 = Card.create(
  player_id: xerath.id,
  name: "Noxian Guillotine",
  cardtype: "Ability",
  rarity: "Diamond",
  description: "Destroy any champion on your opponent's side of the field",
  effect: "props.noxianGuillotine(props.selectedCard)",
  image: "NoxianGuillotine.png",
  quantity: 0
)
xerath_card37 = Card.create(
  player_id: xerath.id,
  name: "Noxian Guillotine",
  cardtype: "Ability",
  rarity: "Diamond",
  description: "Destroy any champion on your opponent's side of the field",
  effect: "props.noxianGuillotine(props.selectedCard)",
  image: "NoxianGuillotine.png",
  quantity: 0
)
xerath_card38 = Card.create(
  player_id: xerath.id,
  name: "Requiem",
  cardtype: "Ability",
  rarity: "Diamond",
  description: "Destroy every champion on your opponent's side of the field",
  effect: "props.requiem(props.selectedCard)",
  image: "Requiem.png",
  quantity: 0
)
xerath_card39 = Card.create(
  player_id: xerath.id,
  name: "Requiem",
  cardtype: "Ability",
  rarity: "Diamond",
  description: "Destroy every champion on your opponent's side of the field",
  effect: "props.requiem(props.selectedCard)",
  image: "Requiem.png",
  quantity: 0
)
xerath_card40 = Card.create(
  player_id: xerath.id,
  name: "Requiem",
  cardtype: "Ability",
  rarity: "Diamond",
  description: "Destroy every champion on your opponent's side of the field",
  effect: "props.requiem(props.selectedCard)",
  image: "Requiem.png",
  quantity: 0
)

xerath_deckcard1 = Deckcard.create(deck_id: xerath_deck.id, card_id: xerath_card1.id)
xerath_deckcard2 = Deckcard.create(deck_id: xerath_deck.id, card_id: xerath_card2.id)
xerath_deckcard3 = Deckcard.create(deck_id: xerath_deck.id, card_id: xerath_card3.id)
xerath_deckcard4 = Deckcard.create(deck_id: xerath_deck.id, card_id: xerath_card4.id)
xerath_deckcard5 = Deckcard.create(deck_id: xerath_deck.id, card_id: xerath_card5.id)
xerath_deckcard6 = Deckcard.create(deck_id: xerath_deck.id, card_id: xerath_card6.id)
xerath_deckcard7 = Deckcard.create(deck_id: xerath_deck.id, card_id: xerath_card7.id)
xerath_deckcard8 = Deckcard.create(deck_id: xerath_deck.id, card_id: xerath_card8.id)
xerath_deckcard9 = Deckcard.create(deck_id: xerath_deck.id, card_id: xerath_card9.id)
xerath_deckcard10 = Deckcard.create(deck_id: xerath_deck.id, card_id: xerath_card10.id)
xerath_deckcard11 = Deckcard.create(deck_id: xerath_deck.id, card_id: xerath_card11.id)
xerath_deckcard12 = Deckcard.create(deck_id: xerath_deck.id, card_id: xerath_card12.id)
xerath_deckcard13 = Deckcard.create(deck_id: xerath_deck.id, card_id: xerath_card13.id)
xerath_deckcard14 = Deckcard.create(deck_id: xerath_deck.id, card_id: xerath_card14.id)
xerath_deckcard15 = Deckcard.create(deck_id: xerath_deck.id, card_id: xerath_card15.id)
xerath_deckcard16 = Deckcard.create(deck_id: xerath_deck.id, card_id: xerath_card16.id)
xerath_deckcard17 = Deckcard.create(deck_id: xerath_deck.id, card_id: xerath_card17.id)
xerath_deckcard18 = Deckcard.create(deck_id: xerath_deck.id, card_id: xerath_card18.id)
xerath_deckcard19 = Deckcard.create(deck_id: xerath_deck.id, card_id: xerath_card19.id)
xerath_deckcard20 = Deckcard.create(deck_id: xerath_deck.id, card_id: xerath_card20.id)
xerath_deckcard21 = Deckcard.create(deck_id: xerath_deck.id, card_id: xerath_card21.id)
xerath_deckcard22 = Deckcard.create(deck_id: xerath_deck.id, card_id: xerath_card22.id)
xerath_deckcard23 = Deckcard.create(deck_id: xerath_deck.id, card_id: xerath_card23.id)
xerath_deckcard24 = Deckcard.create(deck_id: xerath_deck.id, card_id: xerath_card24.id)
xerath_deckcard25 = Deckcard.create(deck_id: xerath_deck.id, card_id: xerath_card25.id)
xerath_deckcard26 = Deckcard.create(deck_id: xerath_deck.id, card_id: xerath_card26.id)
xerath_deckcard27 = Deckcard.create(deck_id: xerath_deck.id, card_id: xerath_card27.id)
xerath_deckcard28 = Deckcard.create(deck_id: xerath_deck.id, card_id: xerath_card28.id)
xerath_deckcard29 = Deckcard.create(deck_id: xerath_deck.id, card_id: xerath_card29.id)
xerath_deckcard30 = Deckcard.create(deck_id: xerath_deck.id, card_id: xerath_card30.id)
xerath_deckcard31 = Deckcard.create(deck_id: xerath_deck.id, card_id: xerath_card31.id)
xerath_deckcard32 = Deckcard.create(deck_id: xerath_deck.id, card_id: xerath_card32.id)
xerath_deckcard33 = Deckcard.create(deck_id: xerath_deck.id, card_id: xerath_card33.id)
xerath_deckcard34 = Deckcard.create(deck_id: xerath_deck.id, card_id: xerath_card34.id)
xerath_deckcard35 = Deckcard.create(deck_id: xerath_deck.id, card_id: xerath_card35.id)
xerath_deckcard36 = Deckcard.create(deck_id: xerath_deck.id, card_id: xerath_card36.id)
xerath_deckcard37 = Deckcard.create(deck_id: xerath_deck.id, card_id: xerath_card37.id)
xerath_deckcard38 = Deckcard.create(deck_id: xerath_deck.id, card_id: xerath_card38.id)
xerath_deckcard39 = Deckcard.create(deck_id: xerath_deck.id, card_id: xerath_card39.id)
xerath_deckcard40 = Deckcard.create(deck_id: xerath_deck.id, card_id: xerath_card40.id)


def generate_cards
  cardinfo = HTTParty.get('http://ddragon.leagueoflegends.com/cdn/6.24.1/data/en_US/champion.json')
  cardinfo["data"].each do |champ, cardObj|
    cardDescription = HTTParty.get("http://ddragon.leagueoflegends.com/cdn/6.24.1/data/en_US/champion/#{cardObj["id"]}.json")["data"]["#{cardObj["id"]}"]["lore"]
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
        description: cardDescription,
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
        description: cardDescription,
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
        description: cardDescription,
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
        description: cardDescription,
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
        description: cardDescription,
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
