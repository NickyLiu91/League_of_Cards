import React from "react";
import Collection from "./Collection.js"
import CardInfo from "../components/CardInfo.js"
import SideBar from "./SideBar.js"
import DuelField from "./DuelField.js"
import CardStore from "./CardStore.js"
import DecksList from "./DecksList.js"
import DuelistsList from "./DuelistsList.js"
import Header from "../components/Header.js"
import HomeScreen from "../components/HomeScreen.js"
import Rules from "../components/Rules.js"
import Campaign from "./Campaign.js"
import {connect} from 'react-redux';

let deckNumber = 0

class Home extends React.Component {
  state = {
    render: 'home',
    loggedIn: false,
    name: '',
    collection: [],
    allPlayers: [],
    currentDeck: '',
    currentDeckCards: [],
    currentPlayer: '',
    currentPlayerCollection: [],
    noDupesCurrentPlayerCollection: [],
    selectedCard: '',
    player2: '',
    player2Deck: [],
    password: '',
    decksList: [],
    gold: '',
    defeated: '',
    duelLocation: '',
    dialogue: ''
  }

  handleName = (event) => {
    this.setState({
      name: event.target.value
    })
  }

  handlePassword = (event) => {
    this.setState({
      password: event.target.value
    })
  }

  findNewElement = (array1, array2) => {
    return array1.filter()
  }

  generateChampion = (playerObj, nameVar, titleVar, roleVar, rarityVar, attackVar, magicVar, defenseVar, descriptionVar, imageVar, deck) => {
    let object = {}
    console.log(deck)

    fetch("http://localhost:3000/api/v1/cards", {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json'
      },
      body: JSON.stringify(
        {
          player_id: playerObj.id,
          name: nameVar,
          title: titleVar,
          role: roleVar,
          rarity: rarityVar,
          attack: attackVar,
          magic: magicVar,
          defense: defenseVar,
          description: descriptionVar,
          image: imageVar,
          cardtype: "Champion"
        }
      )
    })
    .then(response => {
      fetch(`http://localhost:3000/api/v1/players/${playerObj.id}`)
      .then(res => res.json())
      .then(json => {deck = json.decks[0]})
      .then(response => {
        fetch(`http://localhost:3000/api/v1/players/${playerObj.id}`)
        .then(response => response.json())
        .then(json => {Object.assign(object, {newCard: json.cards[deckNumber++], allCards: json.cards})})
        .then(response => {
          fetch(`http://localhost:3000/api/v1/deckcards`, {
            method: 'POST',
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
            },
            body: JSON.stringify(
                {
                  deck_id: deck.id,
                  card_id: object.newCard.id
                }
          )})
          .then(res => res.json())
          .then(json => {this.props.changeDeckCards([...this.props.deckCards, json])
          console.log(json)})
        })
      })
    })
  }

  generateNonChampion = (playerObj, nameVar, rarityVar, descriptionVar, effectVar, imageVar, typeVar, deck) => {
    let object = {}
    console.log(deck)

    fetch("http://localhost:3000/api/v1/cards", {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json'
      },
      body: JSON.stringify(
        {
          player_id: playerObj.id,
          name: nameVar,
          rarity: rarityVar,
          description: descriptionVar,
          effect: effectVar,
          image: imageVar,
          cardtype: typeVar
        }
      )
    })
    .then(response => {
      fetch(`http://localhost:3000/api/v1/players/${playerObj.id}`)
      .then(res => res.json())
      .then(json => {deck = json.decks[0]})
      .then(response => {
        fetch(`http://localhost:3000/api/v1/players/${playerObj.id}`)
        .then(response => response.json())
        .then(json => {Object.assign(object, {newCard: json.cards[deckNumber++], allCards: json.cards})})
        .then(response => {
          fetch(`http://localhost:3000/api/v1/deckcards`, {
            method: 'POST',
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
            },
            body: JSON.stringify(
                {
                  deck_id: deck.id,
                  card_id: object.newCard.id
                }
          )})
        })
      })
    })
  }

  generateDeck = (playerObj) => {
    // let allCards =
    let object = {}
    let deck
    // let card
    // let allCards
    fetch("http://localhost:3000/api/v1/cards", {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json'
      },
      body: JSON.stringify(
        {
          player_id: playerObj.id,
          name: "Taric",
          title: "the Shield of Valoran",
          role: "Support",
          rarity: "Bronze",
          attack: 400,
          magic: 500,
          defense: 800,
          description: "''The best weapons are beautiful.''<br><br>Taric is the Aspect of the Protector, wielding incredible power as Runeterra's guardian of life, love, and beauty. Shamed by a dereliction of duty and exiled from his homeland Demacia, Taric ascended Mount ...",
          image: "Taric.png",
          cardtype: "Champion"
        }
      )
    })
    .then(response => {
      fetch(`http://localhost:3000/api/v1/players/${playerObj.id}`)
      .then(res => res.json())
      .then(json => {deck = json.decks[0]})
      .then(response => {
        fetch(`http://localhost:3000/api/v1/players/${playerObj.id}`)
        .then(response => response.json())
        .then(json => {Object.assign(object, {newCard: json.cards[deckNumber++], allCards: json.cards})})
        .then(response => {
          fetch(`http://localhost:3000/api/v1/deckcards`, {
            method: 'POST',
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
            },
            body: JSON.stringify(
                {
                  deck_id: deck.id,
                  card_id: object.newCard.id
                }
          )})
        })
      })
    })
    .then(res => this.generateChampion(playerObj, "Taric", "the Shield of Valoran", "Support", "Bronze", 400, 500, 800, "''The best weapons are beautiful.''<br><br>Taric is the Aspect of the Protector, wielding incredible power as Runeterra's guardian of life, love, and beauty. Shamed by a dereliction of duty and exiled from his homeland Demacia, Taric ascended Mount ...", "Taric.png", deck))
    .then(res => this.generateChampion(playerObj, "Taric", "the Shield of Valoran", "Support", "Bronze", 400, 500, 800, "''The best weapons are beautiful.''<br><br>Taric is the Aspect of the Protector, wielding incredible power as Runeterra's guardian of life, love, and beauty. Shamed by a dereliction of duty and exiled from his homeland Demacia, Taric ascended Mount ...", "Taric.png", deck))
    .then(res => this.generateChampion(playerObj, "Blitzcrank", "the Great Steam Golem", "Tank", "Bronze", 400, 500, 800, "Zaun is a place where both magic and science have gone awry, and the unchecked nature of experimentation has taken its toll. However, Zaun's lenient restrictions allow their researchers and inventors the leeway to push the bounds of science at an ...", "Blitzcrank.png", deck))
    .then(res => this.generateChampion(playerObj, "Blitzcrank", "the Great Steam Golem", "Tank", "Bronze", 400, 500, 800, "Zaun is a place where both magic and science have gone awry, and the unchecked nature of experimentation has taken its toll. However, Zaun's lenient restrictions allow their researchers and inventors the leeway to push the bounds of science at an ...", "Blitzcrank.png", deck))
    .then(res => this.generateChampion(playerObj, "Blitzcrank", "the Great Steam Golem", "Tank", "Bronze", 400, 500, 800, "Zaun is a place where both magic and science have gone awry, and the unchecked nature of experimentation has taken its toll. However, Zaun's lenient restrictions allow their researchers and inventors the leeway to push the bounds of science at an ...", "Blitzcrank.png", deck))
    .then(res => this.generateChampion(playerObj, "Nautilus", "the Titan of the depths", "Tank", "Bronze", 400, 600, 600, "Once, Nautilus was a sailor commissioned by the Institute of War to explore the uncharted reaches of the Guardian's Sea. This expedition took him deep into unknown waters where he and his crew found a vast section of black oozing liquid that none of ...", "Nautilus.png", deck))
    .then(res => this.generateChampion(playerObj, "Nautilus", "the Titan of the depths", "Tank", "Bronze", 400, 600, 600, "Once, Nautilus was a sailor commissioned by the Institute of War to explore the uncharted reaches of the Guardian's Sea. This expedition took him deep into unknown waters where he and his crew found a vast section of black oozing liquid that none of ...", "Nautilus.png", deck))
    .then(res => this.generateChampion(playerObj, "Nautilus", "the Titan of the depths", "Tank", "Bronze", 400, 600, 600, "Once, Nautilus was a sailor commissioned by the Institute of War to explore the uncharted reaches of the Guardian's Sea. This expedition took him deep into unknown waters where he and his crew found a vast section of black oozing liquid that none of ...", "Nautilus.png", deck))
    .then(res => this.generateChampion(playerObj, "Ashe", "the Frost Archer", "Marksman", "Bronze", 700, 200, 300, "With each arrow she fires from her ancient ice-enchanted bow, Ashe proves she is a master archer. She chooses each target carefully, waits for the right moment, and then strikes with power and precision. It is with this same vision and focus that she ...", "Ashe.png", deck))
    .then(res => this.generateChampion(playerObj, "Ashe", "the Frost Archer", "Marksman", "Bronze", 700, 200, 300, "With each arrow she fires from her ancient ice-enchanted bow, Ashe proves she is a master archer. She chooses each target carefully, waits for the right moment, and then strikes with power and precision. It is with this same vision and focus that she ...", "Ashe.png", deck))
    .then(res => this.generateChampion(playerObj, "Ashe", "the Frost Archer", "Marksman", "Bronze", 700, 200, 300, "With each arrow she fires from her ancient ice-enchanted bow, Ashe proves she is a master archer. She chooses each target carefully, waits for the right moment, and then strikes with power and precision. It is with this same vision and focus that she ...", "Ashe.png", deck))
    .then(res => this.generateChampion(playerObj, "Varus", "the Arrow of Retribution", "Marksman", "Bronze", 700, 400, 300, "''The life of an arrow is fleeting, built of nothing but direction and intent.''<br><br>For his incomparable skill with the bow and his unquestioned sense of honor, Varus was chosen to be the warden of a sacred Ionian temple. The temple was built to ...", "Varus.png", deck))
    .then(res => this.generateChampion(playerObj, "Varus", "the Arrow of Retribution", "Marksman", "Bronze", 700, 400, 300, "''The life of an arrow is fleeting, built of nothing but direction and intent.''<br><br>For his incomparable skill with the bow and his unquestioned sense of honor, Varus was chosen to be the warden of a sacred Ionian temple. The temple was built to ...", "Varus.png", deck))
    .then(res => this.generateChampion(playerObj, "Varus", "the Arrow of Retribution", "Marksman", "Bronze", 700, 400, 300, "''The life of an arrow is fleeting, built of nothing but direction and intent.''<br><br>For his incomparable skill with the bow and his unquestioned sense of honor, Varus was chosen to be the warden of a sacred Ionian temple. The temple was built to ...", "Varus.png", deck))
    .then(res => this.generateChampion(playerObj, "Soraka", "the Starchild", "Support", "Bronze", 200, 700, 500, "A healer gifted with the magic of the stars, Soraka holds all living creatures close to her heart. She was once a celestial being, but she sacrificed her immortality and entered the world of mortals. So long as evil threatens life in Valoran, Soraka ...", "Soraka.png", deck))
    .then(res => this.generateChampion(playerObj, "Soraka", "the Starchild", "Support", "Bronze", 200, 700, 500, "A healer gifted with the magic of the stars, Soraka holds all living creatures close to her heart. She was once a celestial being, but she sacrificed her immortality and entered the world of mortals. So long as evil threatens life in Valoran, Soraka ...", "Soraka.png", deck))
    .then(res => this.generateChampion(playerObj, "Soraka", "the Starchild", "Support", "Bronze", 200, 700, 500, "A healer gifted with the magic of the stars, Soraka holds all living creatures close to her heart. She was once a celestial being, but she sacrificed her immortality and entered the world of mortals. So long as evil threatens life in Valoran, Soraka ...", "Soraka.png", deck))
    .then(res => this.generateChampion(playerObj, "Ahri", "the Nine-Tailed Fox", "Mage", "Bronze", 300, 800, 400, "Unlike other foxes that roamed the woods of southern Ionia, Ahri had always felt a strange connection to the magical world around her; a connection that was somehow incomplete. Deep inside, she felt the skin she had been born into was an ill fit for ...", "Ahri.png", deck))
    .then(res => this.generateChampion(playerObj, "Ahri", "the Nine-Tailed Fox", "Mage", "Bronze", 300, 800, 400, "Unlike other foxes that roamed the woods of southern Ionia, Ahri had always felt a strange connection to the magical world around her; a connection that was somehow incomplete. Deep inside, she felt the skin she had been born into was an ill fit for ...", "Ahri.png", deck))
    .then(res => this.generateChampion(playerObj, "Ahri", "the Nine-Tailed Fox", "Mage", "Bronze", 300, 800, 400, "Unlike other foxes that roamed the woods of southern Ionia, Ahri had always felt a strange connection to the magical world around her; a connection that was somehow incomplete. Deep inside, she felt the skin she had been born into was an ill fit for ...", "Ahri.png", deck))
    .then(res => this.generateChampion(playerObj, "Master Yi", "the Wuju Bladesman", "Assassin", "Bronze", 1000, 200, 400, "Through the ancient martial art of Wuju, Master Yi has tempered his body and sharpened his mind until thought and action have become one. Though he chooses to enter into violence as a last resort, the grace and speed with which he wields his blade ...", "MasterYi.png", deck))
    .then(res => this.generateChampion(playerObj, "Master Yi", "the Wuju Bladesman", "Assassin", "Bronze", 1000, 200, 400, "Through the ancient martial art of Wuju, Master Yi has tempered his body and sharpened his mind until thought and action have become one. Though he chooses to enter into violence as a last resort, the grace and speed with which he wields his blade ...", "MasterYi.png", deck))
    .then(res => this.generateChampion(playerObj, "Master Yi", "the Wuju Bladesman", "Assassin", "Bronze", 1000, 200, 400, "Through the ancient martial art of Wuju, Master Yi has tempered his body and sharpened his mind until thought and action have become one. Though he chooses to enter into violence as a last resort, the grace and speed with which he wields his blade ...", "MasterYi.png", deck))
    .then(res => this.generateChampion(playerObj, "Annie", "the Dark Child", "Mage", "Bronze", 200, 1000, 300, "There have always been those within Noxus who did not agree with the evils perpetrated by the Noxian High Command. The High Command had just put down a coup attempt from the self-proclaimed Crown Prince Raschallion, and a crackdown on any form of ...", "Annie.png", deck))
    .then(res => this.generateChampion(playerObj, "Annie", "the Dark Child", "Mage", "Bronze", 200, 1000, 300, "There have always been those within Noxus who did not agree with the evils perpetrated by the Noxian High Command. The High Command had just put down a coup attempt from the self-proclaimed Crown Prince Raschallion, and a crackdown on any form of ...", "Annie.png", deck))
    .then(res => this.generateChampion(playerObj, "Annie", "the Dark Child", "Mage", "Bronze", 200, 1000, 300, "There have always been those within Noxus who did not agree with the evils perpetrated by the Noxian High Command. The High Command had just put down a coup attempt from the self-proclaimed Crown Prince Raschallion, and a crackdown on any form of ...", "Annie.png", deck))
    .then(res => this.generateChampion(playerObj, "Kayle", "the Judicator", "Fighter", "Silver", 900, 1050, 900, "In a world far away where an ancient war still rages, Kayle was a great hero - the strongest of an immortal race committed to destroying evil wherever it could be found. For ten thousand years, Kayle fought tirelessly for her people, wielding her ...", "Kayle.png", deck))
    .then(res => this.generateChampion(playerObj, "Kayle", "the Judicator", "Fighter", "Silver", 900, 1050, 900, "In a world far away where an ancient war still rages, Kayle was a great hero - the strongest of an immortal race committed to destroying evil wherever it could be found. For ten thousand years, Kayle fought tirelessly for her people, wielding her ...", "Kayle.png", deck))
    .then(res => this.generateChampion(playerObj, "Kayle", "the Judicator", "Fighter", "Silver", 900, 1050, 900, "In a world far away where an ancient war still rages, Kayle was a great hero - the strongest of an immortal race committed to destroying evil wherever it could be found. For ten thousand years, Kayle fought tirelessly for her people, wielding her ...", "Kayle.png", deck))
    .then(res => this.generateChampion(playerObj, "Sivir", "the Battle Mistress", "Marksman", "Bronze", 900, 100, 300, "''I don't care what face is on your coin, as long as it pays.''<br><br>Sivir is a renowned fortune hunter and mercenary captain who plies her trade in the deserts of Shurima. Armed with her legendary jeweled crossblade, she has fought and won ...", "Sivir.png", deck))
    .then(res => this.generateChampion(playerObj, "Ezreal", "the Prodigal Explorer", "Marksman", "Silver", 1050, 900, 300, "The intrepid young adventurer Ezreal has explored some of the most remote and abandoned locations on Runeterra. During an expedition to the buried ruins of ancient Shurima, he recovered an amulet of incredible mystical power. Likely constructed to be ...", "Ezreal.png", deck))
    .then(res => this.generateChampion(playerObj, "Vladimir", "the Crimson Reaper", "Mage", "Silver", 300, 1200, 900, "There is a temple hidden in the mountains between Noxus and the Tempest Flats, where the secrets of an ancient and terrifying sorcery are kept. The area surrounding the temple is littered with the exsanguinated corpses of those who have mistakenly ...", "Vladimir.png", deck))
    .then(res => this.generateChampion(playerObj, "Udyr", "the Spirit Walker", "Fighter", "Silver", 1200, 600, 1050, "Udyr is more than a man; he is a vessel for the untamed power of four primal animal spirits. When tapping into the spirits' bestial natures, Udyr can harness their unique strengths: the tiger grants him speed and ferocity, the turtle resilience, the ...", "Udyr.png", "Champion", deck))
    .then(res => this.generateNonChampion(playerObj, "Requiem", "Diamond", "Destroy every champion on your opponent's side of the field", "props.requiem(props.selectedCard)", "Requiem.png", "Ability", deck))
    .then(res => this.generateNonChampion(playerObj, "Silver Bolts", "Silver", "Destroy the champion with the highest defense on your opponent's side of the field", "props.silverBolts(props.selectedCard)", "SilverBolts.png", "Ability", deck))
    .then(res => this.generateNonChampion(playerObj, "Long Sword", "Silver", "300 bonus to attack of equipped champion", "props.equip(props.selectedCard)", "LongSword.png", "Item", deck))
    .then(res => this.generateNonChampion(playerObj, "Amplifying Tome", "Silver", "300 bonus to magic of equipped champion", "props.equip(props.selectedCard)", "AmplifyingTome.png", "Item", deck))
    .then(res => this.generateNonChampion(playerObj, "Last Whisper", "Platinum", "500 bonus to all stats to equipped Marksman", "props.equip(props.selectedCard)", "LastWhisper.png", "Item", deck))
    .then(res => this.generateNonChampion(playerObj, "Void Staff", "Platinum", "500 bonus to all stats to equipped Mage", "props.equip(props.selectedCard)", "VoidStaff.png", "Item", deck))
    .then(res => {
      // console.log("WHAT")
      this.setState({
      render: 'home'
    }, () => {deckNumber = 0})})
  }

  getAllComputers = () => {
    let newPlayersArray = []
    fetch("http://localhost:3000/api/v1/players")
    .then(response => response.json())
    .then(json => {
      this.props.changeCharacters(json)
    })
    // .then(json => this.setState({
    //   allPlayers: json.slice(0, 24)
    // }))
  }

  updateDecksList = () => {
    fetch(`http://localhost:3000/api/v1/players/${this.state.currentPlayer.id}/decks`)
    .then(response => response.json())
    .then(json => this.setState({
      currentPlayerCollection: json
    }, () => this.generateNoDupesCurrentPlayerCollection()))
  }

  getPlayer = (event) => {
    let player
    fetch(`http://localhost:3000/api/v1/players`)
    .then(res => res.json())
    .then(json => {
      if (json.find(obj => obj.name === this.state.name && obj.password_digest === this.state.password) === undefined) {
        alert('No account with that name and password combination has been found!')
      } else {
        fetch(`http://localhost:3000/api/v1/players`)
        .then(res => res.json())
        .then(res => {
          // window.localStorage.setItem('jwt', res.jwt)
          // console.log(window.localStorage)
          // console.log(window.localStorage.length)
          // console.log(res)
          player = res.find(obj => obj.name === this.state.name && obj.password_digest === this.state.password)
          this.props.changeAccount(player)
          this.props.changeName(player.name)
          this.props.changeCurrentPlayerCards(player.cards)
          this.props.changeNoDupesCurrentPlayerCards(this.generateNoDupesCurrentPlayerCollection())
          this.props.changeDeck(player.decks[0])
          this.props.changeDecksList(player.decks)
          console.log(this.props)
          // this.props.changeDeckCards(player.deckCards)
          this.props.changeGold(player.gold)
          this.props.changeDefeated(player.defeated)
          this.props.changeDialogue(player.dialogue)
          this.props.changeLocation(player.location)
        })
        .then(res => {
          this.setState({
            currentPlayer: player,
            currentPlayerCollection: player.cards,
            currentDeck: player.decks[0],
            loggedIn: true,
            gold: player.gold,
            defeated: player.defeated_id,
            dialogue: player.dialogue
          }, () => {
            fetch(`http://localhost:3000/api/v1/players/${this.state.currentPlayer.id}/decks/${this.props.deck.id}`)
            .then(res => res.json())
            .then(json => {this.props.changeDeckCards(json.cards)})
          //   .then(res => {
          //     this.setState({
          //     currentDeckCards: res.cards
          //   })
          // )

            this.generateNoDupesCurrentPlayerCollection()
          })
        })
      }})
  }

  generateNoDupesCurrentPlayerCollection = () => {
    let newCollection = this.props.cards.map(card => {
        card.quantity = this.state.currentPlayerCollection.filter(cardObj => cardObj.name === card.name).length;
        return card
      }
    )

    return newCollection

    this.setState({
      noDupesCurrentPlayerCollection: newCollection
    })
  }

  fetchCards = () => {
    fetch("http://localhost:3000/api/v1/allcards")
    .then(response => response.json())
    .then(json => {this.props.changeCards(json)})
    // .then(json => this.setState({
    //   collection: json
    // }))
  }

  printState = (event) => {
    event.preventDefault()
    console.log(this.state)
  }

  renderHome = () => {
    this.setState({
      render: 'home'
    })
  }

  componentDidMount() {
    this.fetchCards()
    this.getAllComputers()
  }

  renderPostDuel = (location) => {
    if (this.state.duelLocation === 'freeDuel') {
      console.log("free")
      this.setState({
        render: 'duelistsList'
      })
    } else if (this.state.duelLocation === 'campaign') {
      let dialogue = this.state.dialogue
      console.log("campaign")

      fetch(`http://localhost:3000/api/v1/players/${this.state.currentPlayer.id}`)
      .then(res => res.json())
      .then(res => this.setState({
        dialogue: res.dialogue
      }, () => {
        fetch(`http://localhost:3000/api/v1/players/${this.state.currentPlayer.id}`, {
          method: 'PATCH',
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
          body: JSON.stringify(
              {
                dialogue: this.state.dialogue + 1
              }
          )
        })
        .then(res => {
          let player = this.state.currentPlayer
          player.dialogue = player.dialogue + 1

          this.setState({
            currentPlayer: player,
          }, () => {
            this.setState({
              render: 'campaign'
            })
          })
        })
      }))

    }
  }

  renderStuff = (event) => {
    console.log(event.target.className)
    var sounds = document.getElementsByTagName('audio')
    console.log(sounds)
    for (let i = 0; i < sounds.length; i++) {sounds[i].pause()}
    if (this.state.render !== event.target.className) {
      if (event.target.className === 'collection') {
        fetch(`http://localhost:3000/api/v1/decks/${this.state.currentDeck.id}`)
        .then(res => res.json())
        .then(json => {this.setState({
            currentDeckCards: json.cards,
          })
        })
        .then(res => {
          fetch(`http://localhost:3000/api/v1/players/${this.state.currentPlayer.id}/cards`)
          .then(response => response.json())
          .then(json => this.setState({
            currentPlayerCollection: json
          }, () => {
            let newCollection = this.state.collection.map(card => {
                card.quantity = this.state.currentPlayerCollection.filter(cardObj => cardObj.name === card.name).length;
                return card
              }
            )

            this.setState({
              noDupesCurrentPlayerCollection: newCollection
            }, () => {
              this.setState({
                render: 'collection'
              })
            })
          }))
        })
      } else if (event.target.className === 'store'){
        fetch(`http://localhost:3000/api/v1/players/${this.props.account.id}`)
        .then(res => res.json())
        .then(json => {this.setState({
            gold: json.gold,
            render: 'store'
          })
        })
      } else if ((event.target.className === 'duelistsList' || event.target.className === 'campaign')
        && this.state.currentDeckCards.length !== 40) {
          alert('Your deck must contain 40 cards!')
      } else {
        this.setState({
          render: event.target.className
        })
      }
    }
  }

  getCardInfo = (card) =>{
    this.setState({
      selectedCard: card
    })
    this.renderCard()
  }

  renderCard = () => {
    this.setState({
      render: 'cardinfo'
    })
  }

  renderDuel = () => {
    this.setState({
      render: 'duel'
    })
  }

  createPlayer = (event) => {
    let player
    let deck
    event.preventDefault()
    fetch(`http://localhost:3000/api/v1/players`)
    .then(res => res.json())
    .then(json => {
      if (json.find(obj => obj.name === this.state.name)) {
        alert('That name is already used!')
      } else {
        fetch(`http://localhost:3000/api/v1/players`, {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
          body: JSON.stringify(
              {
                name: this.state.name,
                password_digest: this.state.password,
                image: 'image/SivirPortrait.png',
                computer: false,
                level: "1-1",
                gold: 100,
                dialogue: 0,
                defeated_id: 0,
                completed: false
              }
        )})
        .then(res => res.json())
        .then(json => {
          player = json
          this.setState({
            currentPlayer: player
          }, () => {
            fetch(`http://localhost:3000/api/v1/decks`, {
              method: 'POST',
              headers: {
                'Content-Type': 'application/json',
                'Accept': 'application/json',
              },
              body: JSON.stringify(
                  {
                    name: "Deck 1",
                    player_id: this.state.currentPlayer.id
                  }
            )})
            .then(res => res.json())
            .then(json => {
              deck = json
              this.generateDeck(this.state.currentPlayer)
            })
            .then(res => {
              console.log(this.state.currentPlayer.decks)
              this.setState({
                currentPlayer: player,
                currentPlayerCollection: player.cards,
                currentDeck: deck,
                loggedIn: true,
                gold: player.gold,
                defeated: player.defeated_id,
                dialogue: player.dialogue
              }, () => {
                fetch(`http://localhost:3000/api/v1/players/${player.id}/decks/${deck.id}`)
                .then(res => res.json())
                .then(res => this.setState({
                  currentDeckCards: res.cards
                }))
                this.generateNoDupesCurrentPlayerCollection()
              })
            })
          })
        })
      }
    })
  }

  updateCurrentPlayerCollection = (array) => {
    let newCollection = this.state.noDupesCurrentPlayerCollection
    console.log(array)

    array.forEach(card => {
      let updateCard = newCollection.find(card2 =>
        card.name == card2.name
      )
      updateCard.quantity ++
    })

    this.setState({
      noDupesCurrentPlayerCollection: newCollection
    })
  }

  reward = (location) => {
    let player = this.state.currentPlayer
    console.log(location)
    if (location === 'campaign') {
      player.defeated_id = this.state.player2.id
      this.setState({
        gold: this.state.gold + 30,
        defeated: this.state.player2.id,
        currentPlayer: player
      })
    }
  }


  resetCampaign = (event) => {
    fetch(`http://localhost:3000/api/v1/players/${this.state.currentPlayer.id}`, {
      method: 'PATCH',
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      body: JSON.stringify(
          {
            defeated_id: 0,
            dialogue: 0,
            completed: true,
          }
      )
    })
    .then(res => {
      let currentPlayer = this.state.currentPlayer
      currentPlayer.dialogue = 0
      currentPlayer.defeated_id = 0
      currentPlayer.completed = true
      this.setState({
      currentPlayer: currentPlayer,
      dialogue: 0,
      defeated: 0
    }, () => this.renderHome())
    })
    .then(console.log(this.state.currentPlayer))
  }

  resetUser = () => {
   // // console.log(localStorage.getItem('jwt'))
   if (localStorage.getItem('jwt')) {
     fetch('http://localhost:3001/', {
       method: 'GET',
       headers: {
         Authorization: `Bearer ${localStorage.getItem('jwt')}`
       }
     })
     .then(resp => resp.json())
     .then(data => {
       if (data.user)
       this.setState({
         currentPlayer: data.user
       })
     })
   }
  }

  log = () => {
    this.setState({
      currentPlayer: '',
      currentDeck: "",
      currentPlayerCollection: [],
      currentDeckCards: [],
      loggedIn: !this.state.loggedIn
    }, () => {
      console.log(localStorage.getItem('jwt'))
      // window.localStorage.removeItem('jwt')
      // console.log(window.localStorage)
    })
  }

  getCardInfo = (card) => {
    // this.setState({
    //   selectedCard: card
    // }, () => {
    //   this.renderCard()
    // })
    this.props.changeCard(card)
    this.renderCard()
  }

  render() {
    if (this.state.render === 'home' || this.state.render === 'create') {
      return(
        <div>
          <HomeScreen
            render={this.state.render}
            name={this.state.name}
            password={this.state.password}
            currentPlayer={this.state.currentPlayer}
            loggedIn={this.state.loggedIn}
            handleName={this.handleName}
            handlePassword={this.handlePassword}
            renderStuff={this.renderStuff}
            createPlayer={this.createPlayer}
            getPlayer={this.getPlayer}
            logOut={this.log}
            printState={this.printState}
            rules={this.renderStuff}
          />
        </div>
      )
    } else if (this.state.render === 'rules') {
      return(
        <div>
          <Header renderStuff={this.renderStuff} />
          <Rules/>
        </div>
      )
    } else if (this.state.render === 'campaign' ){
      return(
        <div>
          <Header renderStuff={this.renderStuff} deck={this.state.currentDeckCards}/>
          <Campaign
            player1={this.state.currentPlayer}
            player1Deck={this.state.currentDeckCards}
            player2={this.state.player2}
            player2Deck={this.state.player2Deck}
            renderHome={this.renderHome}
            allPlayers={this.state.allPlayers}
            updateCurrentPlayerCollection={this.updateCurrentPlayerCollection}
            reward={this.reward}
            gold={this.state.gold}
            getDuelist={this.getDuelist}
            increaseDialogue={this.increaseDialogue}
            resetCampaign={this.resetCampaign}
            />
        </div>
      )
    } else if (this.state.render === 'decksList') {
      return(
        <div>
          <Header renderStuff={this.renderStuff}/>
          <DecksList renderCollection={this.renderCollection} renderHome={this.renderHome} />
        </div>
      )
    } else if (this.state.render === 'store') {
      return(
        <div>
          <Header renderStuff={this.renderStuff} />
          <CardStore renderCollection={this.renderCollection} />
        </div>
      )
    } else if (this.state.render === 'collection') {
      return(
        <div>
          <Header renderStuff={this.renderStuff} />
          <div className="container-with-decklist">
            <Collection renderHome={this.renderHome} getCardInfo={this.getCardInfo}/>
            <SideBar />
          </div>
        </div>

      )
    } else if (this.state.render === 'cardinfo') {
      return(
        <div>
          <Header renderStuff={this.renderStuff} />
            <div className="container-with-decklist">
              <CardInfo selectedCard={this.state.selectedCard}
                addToDeck={this.addToDeck}
                renderCollection={this.renderCollection}
                renderHome={this.renderHome}
              />
              <SideBar currentDeckCards={this.state.currentDeckCards}
              removeFromDeck={this.removeFromDeck}/>
            </div>
        </div>
      )
    } else if (this.state.render === 'duelistsList') {
      return(
        <div>
          <Header renderStuff={this.renderStuff} deck={this.state.currentDeckCards}/>
          <div className="duelist-list-container">
            <DuelistsList renderDuel={this.renderDuel} />
          </div>
        </div>
      )
    } else if (this.state.render === 'duel') {
      return(
        <div>
          <Header renderStuff={this.renderStuff}/>
          <DuelField
            player1={this.state.currentPlayer}
            player1Deck={this.state.currentDeckCards}
            player2={this.state.player2}
            player2Deck={this.state.player2Deck}
            renderHome={this.renderHome}
            renderPostDuel={this.renderPostDuel}
            updateCurrentPlayerCollection={this.updateCurrentPlayerCollection}
            reward={this.reward}
            gold={this.state.gold}
            location={this.state.duelLocation}
            collection={this.state.collection}
            dialogue={this.state.dialogue}
          />
        </div>
      )
    }
  }
}

const mapStateToProps = state => {
  return {
    account: state.accountChanger.account,
    name: state.nameChanger.name,
    cards: state.cardsChanger.cards,
    currentPlayerCards: state.currentPlayerCardsChanger.currentPlayerCards,
    noDupesCurrentPlayerCards: state.noDupesCurrentPlayerCardsChanger.noDupesCurrentPlayerCards,
    deck: state.deckChanger.deck,
    deckCards: state.deckCardsChanger.deckCards,
    characters: state.charactersChanger.characters,
    enemy: state.enemyChanger.enemy,
    card: state.cardChanger.card,
    decksList: state.decksListChanger.decksList,
    gold: state.goldChanger.gold,
    defeated: state.defeatedChanger.defeated,
    dialogue: state.dialogueChanger.dialogue,
    location: state.locationChanger.location,
  }
}

const mapDispatchToProps = dispatch => {
  return {
    changeAccount: (event) => dispatch({type: 'CHANGE_ACCOUNT', newAccount: event}),
    changeName: (event) => dispatch({type: 'CHANGE_NAME', newName: event}),
    changeCards: (event) => dispatch({type: 'CHANGE_CARDS', newCards: event}),
    changeCurrentPlayerCards: (event) => dispatch({type: 'CHANGE_CURRENTPLAYERCARDS', newCurrentPlayerCards: event}),
    changeNoDupesCurrentPlayerCards: (event) => dispatch({type: 'CHANGE_NODUPESCURRENTPLAYERCARDS', newNoDupesCurrentPlayerCards: event}),
    changeDeck: (event) => dispatch({type: 'CHANGE_DECK', newDeck: event}),
    changeDeckCards: (event) => dispatch({type: 'CHANGE_DECKCARDS', newDeckCards: event}),
    changeCharacters: (event) => dispatch({type: 'CHANGE_CHARACTERS', newCharacters: event}),
    changeEnemy: (event) => dispatch({type: 'CHANGE_ENEMY', newEnemy: event}),
    changeCard: (event) => dispatch({type: 'CHANGE_CARD', newCard: event}),
    changeDecksList: (event) => dispatch({type: 'CHANGE_DECKSLIST', newDecksList: event}),
    changeGold: (event) => dispatch({type: 'CHANGE_GOLD', newGold: event}),
    changeDefeated: (event) => dispatch({type: 'CHANGE_DEFEEATED', newDefeated: event}),
    changeDialogue: (event) => dispatch({type: 'CHANGE_DIALOGUE', newDialogue: event}),
    changeLocation: (event) => dispatch({type: 'CHANGE_LOCATION', newLocation: event}),
  }
}

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Home);
