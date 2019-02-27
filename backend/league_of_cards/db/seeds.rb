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
karma_card4 = Card.create(player_id: karma.id, cardtype: 'Champion', name: "Ivern", title: "the Green Father", role: "Support", rarity: "Silver", attack: 450, magic: 1050, defense: 7500, image: "Ivern.png")
karma_card5 = Card.create(player_id: karma.id, cardtype: 'Champion', name: "Ivern", title: "the Green Father", role: "Support", rarity: "Silver", attack: 450, magic: 1050, defense: 7500, image: "Ivern.png")
karma_card6 = Card.create(player_id: karma.id, cardtype: 'Champion', name: "Ivern", title: "the Green Father", role: "Support", rarity: "Silver", attack: 450, magic: 1050, defense: 7500, image: "Ivern.png")
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
karma_card25 = Card.create(player_id: karma.id, cardtype: 'Champion', name: "Morgana", title: "Fallen Angel", role: "Mage", rarity: "Bronze", attack: 100, magic: 800, defense: 600, image: "Morgana.png")
karma_card26 = Card.create(player_id: karma.id, cardtype: 'Champion', name: "Morgana", title: "Fallen Angel", role: "Mage", rarity: "Bronze", attack: 100, magic: 800, defense: 600, image: "Morgana.png")
karma_card27 = Card.create(player_id: karma.id, cardtype: 'Champion', name: "Morgana", title: "Fallen Angel", role: "Mage", rarity: "Bronze", attack: 100, magic: 800, defense: 600, image: "Morgana.png")
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
shen_card4 = Card.create(player_id: shen.id, cardtype: 'Champion', name: "Ivern", title: "the Green Father", role: "Support", rarity: "Silver", attack: 450, magic: 1050, defense: 7500, image: "Ivern.png")
shen_card5 = Card.create(player_id: shen.id, cardtype: 'Champion', name: "Ivern", title: "the Green Father", role: "Support", rarity: "Silver", attack: 450, magic: 1050, defense: 7500, image: "Ivern.png")
shen_card6 = Card.create(player_id: shen.id, cardtype: 'Champion', name: "Ivern", title: "the Green Father", role: "Support", rarity: "Silver", attack: 450, magic: 1050, defense: 7500, image: "Ivern.png")
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
zed_card4 = Card.create(player_id: zed.id, cardtype: 'Champion', name: "Ivern", title: "the Green Father", role: "Support", rarity: "Silver", attack: 450, magic: 1050, defense: 7500, image: "Ivern.png")
zed_card5 = Card.create(player_id: zed.id, cardtype: 'Champion', name: "Ivern", title: "the Green Father", role: "Support", rarity: "Silver", attack: 450, magic: 1050, defense: 7500, image: "Ivern.png")
zed_card6 = Card.create(player_id: zed.id, cardtype: 'Champion', name: "Ivern", title: "the Green Father", role: "Support", rarity: "Silver", attack: 450, magic: 1050, defense: 7500, image: "Ivern.png")
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
darius_card4 = Card.create(player_id: darius.id, cardtype: 'Champion', name: "Ivern", title: "the Green Father", role: "Support", rarity: "Silver", attack: 450, magic: 1050, defense: 7500, image: "Ivern.png")
darius_card5 = Card.create(player_id: darius.id, cardtype: 'Champion', name: "Ivern", title: "the Green Father", role: "Support", rarity: "Silver", attack: 450, magic: 1050, defense: 7500, image: "Ivern.png")
darius_card6 = Card.create(player_id: darius.id, cardtype: 'Champion', name: "Ivern", title: "the Green Father", role: "Support", rarity: "Silver", attack: 450, magic: 1050, defense: 7500, image: "Ivern.png")
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
darius_card19 = Card.create(player_id: darius.id, cardtype: 'Champion', name: "Tryndamere", title: "the Barbarian King", role: "Fighter", rarity: "Bronze", attack: 1000, magic: 200, defense: 500, image: "Tryndamere.png")
darius_card20 = Card.create(player_id: darius.id, cardtype: 'Champion', name: "Tryndamere", title: "the Barbarian King", role: "Fighter", rarity: "Bronze", attack: 1000, magic: 200, defense: 500, image: "Tryndamere.png")
darius_card21 = Card.create(player_id: darius.id, cardtype: 'Champion', name: "Tryndamere", title: "the Barbarian King", role: "Fighter", rarity: "Bronze", attack: 1000, magic: 200, defense: 500, image: "Tryndamere.png")
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

katarina_card1 = Card.create(player_id: katarina.id, cardtype: 'Champion', name: "Alistar", title: "the Minotaur", role: "Tank", rarity: "Silver", attack: 900, magic: 750, defense: 1350, image: "Alistar.png")
katarina_card2 = Card.create(player_id: katarina.id, cardtype: 'Champion', name: "Alistar", title: "the Minotaur", role: "Tank", rarity: "Silver", attack: 900, magic: 750, defense: 1350, image: "Alistar.png")
katarina_card3 = Card.create(player_id: katarina.id, cardtype: 'Champion', name: "Alistar", title: "the Minotaur", role: "Tank", rarity: "Silver", attack: 900, magic: 750, defense: 1350, image: "Alistar.png")
katarina_card4 = Card.create(player_id: katarina.id, cardtype: 'Champion', name: "Ivern", title: "the Green Father", role: "Support", rarity: "Silver", attack: 450, magic: 1050, defense: 7500, image: "Ivern.png")
katarina_card5 = Card.create(player_id: katarina.id, cardtype: 'Champion', name: "Ivern", title: "the Green Father", role: "Support", rarity: "Silver", attack: 450, magic: 1050, defense: 7500, image: "Ivern.png")
katarina_card6 = Card.create(player_id: katarina.id, cardtype: 'Champion', name: "Ivern", title: "the Green Father", role: "Support", rarity: "Silver", attack: 450, magic: 1050, defense: 7500, image: "Ivern.png")
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
katarina_card22 = Card.create(player_id: katarina.id, cardtype: 'Champion', name: "Jhin", title: "the Virtuoso", role: "Marksman", rarity: "Bronze", attack: 1000, magic: 600, defense: 200, image: "Jhin.png")
katarina_card23 = Card.create(player_id: katarina.id, cardtype: 'Champion', name: "Jhin", title: "the Virtuoso", role: "Marksman", rarity: "Bronze", attack: 1000, magic: 600, defense: 200, image: "Jhin.png")
katarina_card24 = Card.create(player_id: katarina.id, cardtype: 'Champion', name: "Jhin", title: "the Virtuoso", role: "Marksman", rarity: "Bronze", attack: 1000, magic: 600, defense: 200, image: "Jhin.png")
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
  player_id: darius.id,
  name: "Noxian Guillotine",
  cardtype: "Ability",
  rarity: "Diamond",
  description: "Destroy any champion on your opponent's side of the field",
  effect: "props.noxianGuillotine(props.selectedCard)",
  image: "NoxianGuillotine.png",
  quantity: 0
)

katarine_deckcard1 = Deckcard.create(deck_id: katarine_deck.id, card_id: katarine_card1.id)
katarine_deckcard2 = Deckcard.create(deck_id: katarine_deck.id, card_id: katarine_card2.id)
katarine_deckcard3 = Deckcard.create(deck_id: katarine_deck.id, card_id: katarine_card3.id)
katarine_deckcard4 = Deckcard.create(deck_id: katarine_deck.id, card_id: katarine_card4.id)
katarine_deckcard5 = Deckcard.create(deck_id: katarine_deck.id, card_id: katarine_card5.id)
katarine_deckcard6 = Deckcard.create(deck_id: katarine_deck.id, card_id: katarine_card6.id)
katarine_deckcard7 = Deckcard.create(deck_id: katarine_deck.id, card_id: katarine_card7.id)
katarine_deckcard8 = Deckcard.create(deck_id: katarine_deck.id, card_id: katarine_card8.id)
katarine_deckcard9 = Deckcard.create(deck_id: katarine_deck.id, card_id: katarine_card9.id)
katarine_deckcard10 = Deckcard.create(deck_id: katarine_deck.id, card_id: katarine_card10.id)
katarine_deckcard11 = Deckcard.create(deck_id: katarine_deck.id, card_id: katarine_card11.id)
katarine_deckcard12 = Deckcard.create(deck_id: katarine_deck.id, card_id: katarine_card12.id)
katarine_deckcard13 = Deckcard.create(deck_id: katarine_deck.id, card_id: katarine_card13.id)
katarine_deckcard14 = Deckcard.create(deck_id: katarine_deck.id, card_id: katarine_card14.id)
katarine_deckcard15 = Deckcard.create(deck_id: katarine_deck.id, card_id: katarine_card15.id)
katarine_deckcard16 = Deckcard.create(deck_id: katarine_deck.id, card_id: katarine_card16.id)
katarine_deckcard17 = Deckcard.create(deck_id: katarine_deck.id, card_id: katarine_card17.id)
katarine_deckcard18 = Deckcard.create(deck_id: katarine_deck.id, card_id: katarine_card18.id)
katarine_deckcard19 = Deckcard.create(deck_id: katarine_deck.id, card_id: katarine_card19.id)
katarine_deckcard20 = Deckcard.create(deck_id: katarine_deck.id, card_id: katarine_card20.id)
katarine_deckcard21 = Deckcard.create(deck_id: katarine_deck.id, card_id: katarine_card21.id)
katarine_deckcard22 = Deckcard.create(deck_id: katarine_deck.id, card_id: katarine_card22.id)
katarine_deckcard23 = Deckcard.create(deck_id: katarine_deck.id, card_id: katarine_card23.id)
katarine_deckcard24 = Deckcard.create(deck_id: katarine_deck.id, card_id: katarine_card24.id)
katarine_deckcard25 = Deckcard.create(deck_id: katarine_deck.id, card_id: katarine_card25.id)
katarine_deckcard26 = Deckcard.create(deck_id: katarine_deck.id, card_id: katarine_card26.id)
katarine_deckcard27 = Deckcard.create(deck_id: katarine_deck.id, card_id: katarine_card27.id)
katarine_deckcard28 = Deckcard.create(deck_id: katarine_deck.id, card_id: katarine_card28.id)
katarine_deckcard29 = Deckcard.create(deck_id: katarine_deck.id, card_id: katarine_card29.id)
katarine_deckcard30 = Deckcard.create(deck_id: katarine_deck.id, card_id: katarine_card30.id)
katarine_deckcard31 = Deckcard.create(deck_id: katarine_deck.id, card_id: katarine_card31.id)
katarine_deckcard32 = Deckcard.create(deck_id: katarine_deck.id, card_id: katarine_card32.id)
katarine_deckcard33 = Deckcard.create(deck_id: katarine_deck.id, card_id: katarine_card33.id)
katarine_deckcard34 = Deckcard.create(deck_id: katarine_deck.id, card_id: katarine_card34.id)
katarine_deckcard35 = Deckcard.create(deck_id: katarine_deck.id, card_id: katarine_card35.id)
katarine_deckcard36 = Deckcard.create(deck_id: katarine_deck.id, card_id: katarine_card36.id)
katarine_deckcard37 = Deckcard.create(deck_id: katarine_deck.id, card_id: katarine_card37.id)
katarine_deckcard38 = Deckcard.create(deck_id: katarine_deck.id, card_id: katarine_card38.id)
katarine_deckcard39 = Deckcard.create(deck_id: katarine_deck.id, card_id: katarine_card39.id)
katarine_deckcard40 = Deckcard.create(deck_id: katarine_deck.id, card_id: katarine_card40.id)

swain_card1 = Card.create(player_id: swain.id, cardtype: 'Champion', name: "Alistar", title: "the Minotaur", role: "Tank", rarity: "Silver", attack: 900, magic: 750, defense: 1350, image: "Alistar.png")
swain_card2 = Card.create(player_id: swain.id, cardtype: 'Champion', name: "Alistar", title: "the Minotaur", role: "Tank", rarity: "Silver", attack: 900, magic: 750, defense: 1350, image: "Alistar.png")
swain_card3 = Card.create(player_id: swain.id, cardtype: 'Champion', name: "Alistar", title: "the Minotaur", role: "Tank", rarity: "Silver", attack: 900, magic: 750, defense: 1350, image: "Alistar.png")
swain_card4 = Card.create(player_id: swain.id, cardtype: 'Champion', name: "Ivern", title: "the Green Father", role: "Support", rarity: "Silver", attack: 450, magic: 1050, defense: 7500, image: "Ivern.png")
swain_card5 = Card.create(player_id: swain.id, cardtype: 'Champion', name: "Ivern", title: "the Green Father", role: "Support", rarity: "Silver", attack: 450, magic: 1050, defense: 7500, image: "Ivern.png")
swain_card6 = Card.create(player_id: swain.id, cardtype: 'Champion', name: "Ivern", title: "the Green Father", role: "Support", rarity: "Silver", attack: 450, magic: 1050, defense: 7500, image: "Ivern.png")
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
swain_card19 = Card.create(player_id: swain.id, cardtype: 'Champion', name: "Draven", title: "the Glorious Executioner", role: "Marksmen", rarity: "Gold", attack: 1800, magic: 200, defense: 600, image: "Draven.png")
swain_card20 = Card.create(player_id: swain.id, cardtype: 'Champion', name: "Draven", title: "the Glorious Executioner", role: "Marksmen", rarity: "Gold", attack: 1800, magic: 200, defense: 600, image: "Draven.png")
swain_card21 = Card.create(player_id: swain.id, cardtype: 'Champion', name: "Draven", title: "the Glorious Executioner", role: "Marksmen", rarity: "Gold", attack: 1800, magic: 200, defense: 600, image: "Draven.png")
swain_card22 = Card.create(player_id: swain.id, cardtype: 'Champion', name: "Jhin", title: "the Virtuoso", role: "Marksman", rarity: "Bronze", attack: 1000, magic: 600, defense: 200, image: "Jhin.png")
swain_card23 = Card.create(player_id: swain.id, cardtype: 'Champion', name: "Jhin", title: "the Virtuoso", role: "Marksman", rarity: "Bronze", attack: 1000, magic: 600, defense: 200, image: "Jhin.png")
swain_card24 = Card.create(player_id: swain.id, cardtype: 'Champion', name: "Jhin", title: "the Virtuoso", role: "Marksman", rarity: "Bronze", attack: 1000, magic: 600, defense: 200, image: "Jhin.png")
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
  player_id: darius.id,
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
