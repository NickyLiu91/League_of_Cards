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
import {compose} from 'redux';
import {Route, Link, withRouter} from 'react-router-dom';

let deckNumber = 0

class Home extends React.Component {
  state = {
    render: 'home',
    loggedIn: false,
    name: '',
    // collection: [],
    // allPlayers: [],
    // currentDeck: '',
    // currentDeckCards: [],
    // currentPlayer: '',
    // currentPlayerCollection: [],
    // noDupesCurrentPlayerCollection: [],
    // selectedCard: '',
    // player2: '',
    // player2Deck: [],
    password: '',
    // decksList: [],
    // gold: '',
    // defeated: 0,
    // duelLocation: '',
    // dialogue: ''
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

  generateChampion = (playerObj, nameVar, titleVar, roleVar, rarityVar, attackVar, magicVar, defenseVar, descriptionVar, imageVar) => {
    let object
    let deckNumber

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
    .then(res => res.json())
    .then(json => {object = json})
    .then(response => {
      fetch(`http://localhost:3000/api/v1/players/${playerObj.id}`)
      .then(res => res.json())
      .then(json => {deckNumber = json.decks[0].id})
      .then(res => {
        fetch(`http://localhost:3000/api/v1/deckcards`, {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
          body: JSON.stringify(
              {
                deck_id: deckNumber,
                card_id: object.id
              }
        )})
      })
      .then(res => {
        this.props.changeCurrentPlayerCards([...this.props.currentPlayerCards, object])
        this.props.changeDeckCards([...this.props.deckCards, object])
        // this.generateNoDupesCurrentPlayerCollection()
      })
    })
  }

  generateNonChampion = (playerObj, nameVar, rarityVar, descriptionVar, effectVar, imageVar, typeVar, deck) => {
    let object
    let deckNumber

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
    .then(res => res.json())
    .then(json => {object = json})
    .then(response => {
      fetch(`http://localhost:3000/api/v1/players/${playerObj.id}`)
      .then(res => res.json())
      .then(json => {deckNumber = json.decks[0].id})
      // .then(res => {console.log(object); console.log(deckNumber)})
      .then(res => {
        fetch(`http://localhost:3000/api/v1/deckcards`, {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
          body: JSON.stringify(
              {
                deck_id: deckNumber,
                card_id: object.id
              }
        )})
      })
      .then(res => {
        this.props.changeCurrentPlayerCards([...this.props.currentPlayerCards, object])
        this.props.changeDeckCards([...this.props.deckCards, object])
        if (nameVar == "Void Staff") {
          this.generateNoDupesCurrentPlayerCollection()
        }
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
    .then(res => res.json())
    .then(json => {object = json})
    .then(response => {
      fetch(`http://localhost:3000/api/v1/players/${playerObj.id}`)
      .then(res => res.json())
      .then(json => {deckNumber = json.decks[0].id})
      .then(res => {
        fetch(`http://localhost:3000/api/v1/deckcards`, {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
          body: JSON.stringify(
              {
                deck_id: deckNumber,
                card_id: object.id
              }
        )})
      })
      .then(res => {
        this.props.changeCurrentPlayerCards([...this.props.currentPlayerCards, object])
        this.props.changeDeckCards([...this.props.deckCards, object])
      })
    })
    .then(res => this.generateChampion(playerObj, "Taric", "the Shield of Valoran", "Support", "Bronze", 400, 500, 800, "''The best weapons are beautiful.''<br><br>Taric is the Aspect of the Protector, wielding incredible power as Runeterra's guardian of life, love, and beauty. Shamed by a dereliction of duty and exiled from his homeland Demacia, Taric ascended Mount ...", "Taric.png"))
    .then(res => this.generateChampion(playerObj, "Taric", "the Shield of Valoran", "Support", "Bronze", 400, 500, 800, "''The best weapons are beautiful.''<br><br>Taric is the Aspect of the Protector, wielding incredible power as Runeterra's guardian of life, love, and beauty. Shamed by a dereliction of duty and exiled from his homeland Demacia, Taric ascended Mount ...", "Taric.png"))
    .then(res => this.generateChampion(playerObj, "Blitzcrank", "the Great Steam Golem", "Tank", "Bronze", 400, 500, 800, "Zaun is a place where both magic and science have gone awry, and the unchecked nature of experimentation has taken its toll. However, Zaun's lenient restrictions allow their researchers and inventors the leeway to push the bounds of science at an ...", "Blitzcrank.png"))
    .then(res => this.generateChampion(playerObj, "Blitzcrank", "the Great Steam Golem", "Tank", "Bronze", 400, 500, 800, "Zaun is a place where both magic and science have gone awry, and the unchecked nature of experimentation has taken its toll. However, Zaun's lenient restrictions allow their researchers and inventors the leeway to push the bounds of science at an ...", "Blitzcrank.png"))
    .then(res => this.generateChampion(playerObj, "Blitzcrank", "the Great Steam Golem", "Tank", "Bronze", 400, 500, 800, "Zaun is a place where both magic and science have gone awry, and the unchecked nature of experimentation has taken its toll. However, Zaun's lenient restrictions allow their researchers and inventors the leeway to push the bounds of science at an ...", "Blitzcrank.png"))
    .then(res => this.generateChampion(playerObj, "Nautilus", "the Titan of the depths", "Tank", "Bronze", 400, 600, 600, "Once, Nautilus was a sailor commissioned by the Institute of War to explore the uncharted reaches of the Guardian's Sea. This expedition took him deep into unknown waters where he and his crew found a vast section of black oozing liquid that none of ...", "Nautilus.png"))
    .then(res => this.generateChampion(playerObj, "Nautilus", "the Titan of the depths", "Tank", "Bronze", 400, 600, 600, "Once, Nautilus was a sailor commissioned by the Institute of War to explore the uncharted reaches of the Guardian's Sea. This expedition took him deep into unknown waters where he and his crew found a vast section of black oozing liquid that none of ...", "Nautilus.png"))
    .then(res => this.generateChampion(playerObj, "Nautilus", "the Titan of the depths", "Tank", "Bronze", 400, 600, 600, "Once, Nautilus was a sailor commissioned by the Institute of War to explore the uncharted reaches of the Guardian's Sea. This expedition took him deep into unknown waters where he and his crew found a vast section of black oozing liquid that none of ...", "Nautilus.png"))
    .then(res => this.generateChampion(playerObj, "Ashe", "the Frost Archer", "Marksman", "Bronze", 700, 200, 300, "With each arrow she fires from her ancient ice-enchanted bow, Ashe proves she is a master archer. She chooses each target carefully, waits for the right moment, and then strikes with power and precision. It is with this same vision and focus that she ...", "Ashe.png"))
    .then(res => this.generateChampion(playerObj, "Ashe", "the Frost Archer", "Marksman", "Bronze", 700, 200, 300, "With each arrow she fires from her ancient ice-enchanted bow, Ashe proves she is a master archer. She chooses each target carefully, waits for the right moment, and then strikes with power and precision. It is with this same vision and focus that she ...", "Ashe.png"))
    .then(res => this.generateChampion(playerObj, "Ashe", "the Frost Archer", "Marksman", "Bronze", 700, 200, 300, "With each arrow she fires from her ancient ice-enchanted bow, Ashe proves she is a master archer. She chooses each target carefully, waits for the right moment, and then strikes with power and precision. It is with this same vision and focus that she ...", "Ashe.png"))
    .then(res => this.generateChampion(playerObj, "Varus", "the Arrow of Retribution", "Marksman", "Bronze", 700, 400, 300, "''The life of an arrow is fleeting, built of nothing but direction and intent.''<br><br>For his incomparable skill with the bow and his unquestioned sense of honor, Varus was chosen to be the warden of a sacred Ionian temple. The temple was built to ...", "Varus.png"))
    .then(res => this.generateChampion(playerObj, "Varus", "the Arrow of Retribution", "Marksman", "Bronze", 700, 400, 300, "''The life of an arrow is fleeting, built of nothing but direction and intent.''<br><br>For his incomparable skill with the bow and his unquestioned sense of honor, Varus was chosen to be the warden of a sacred Ionian temple. The temple was built to ...", "Varus.png"))
    .then(res => this.generateChampion(playerObj, "Varus", "the Arrow of Retribution", "Marksman", "Bronze", 700, 400, 300, "''The life of an arrow is fleeting, built of nothing but direction and intent.''<br><br>For his incomparable skill with the bow and his unquestioned sense of honor, Varus was chosen to be the warden of a sacred Ionian temple. The temple was built to ...", "Varus.png"))
    .then(res => this.generateChampion(playerObj, "Soraka", "the Starchild", "Support", "Bronze", 200, 700, 500, "A healer gifted with the magic of the stars, Soraka holds all living creatures close to her heart. She was once a celestial being, but she sacrificed her immortality and entered the world of mortals. So long as evil threatens life in Valoran, Soraka ...", "Soraka.png"))
    .then(res => this.generateChampion(playerObj, "Soraka", "the Starchild", "Support", "Bronze", 200, 700, 500, "A healer gifted with the magic of the stars, Soraka holds all living creatures close to her heart. She was once a celestial being, but she sacrificed her immortality and entered the world of mortals. So long as evil threatens life in Valoran, Soraka ...", "Soraka.png"))
    .then(res => this.generateChampion(playerObj, "Soraka", "the Starchild", "Support", "Bronze", 200, 700, 500, "A healer gifted with the magic of the stars, Soraka holds all living creatures close to her heart. She was once a celestial being, but she sacrificed her immortality and entered the world of mortals. So long as evil threatens life in Valoran, Soraka ...", "Soraka.png"))
    .then(res => this.generateChampion(playerObj, "Ahri", "the Nine-Tailed Fox", "Mage", "Bronze", 300, 800, 400, "Unlike other foxes that roamed the woods of southern Ionia, Ahri had always felt a strange connection to the magical world around her; a connection that was somehow incomplete. Deep inside, she felt the skin she had been born into was an ill fit for ...", "Ahri.png"))
    .then(res => this.generateChampion(playerObj, "Ahri", "the Nine-Tailed Fox", "Mage", "Bronze", 300, 800, 400, "Unlike other foxes that roamed the woods of southern Ionia, Ahri had always felt a strange connection to the magical world around her; a connection that was somehow incomplete. Deep inside, she felt the skin she had been born into was an ill fit for ...", "Ahri.png"))
    .then(res => this.generateChampion(playerObj, "Ahri", "the Nine-Tailed Fox", "Mage", "Bronze", 300, 800, 400, "Unlike other foxes that roamed the woods of southern Ionia, Ahri had always felt a strange connection to the magical world around her; a connection that was somehow incomplete. Deep inside, she felt the skin she had been born into was an ill fit for ...", "Ahri.png"))
    .then(res => this.generateChampion(playerObj, "Master Yi", "the Wuju Bladesman", "Assassin", "Bronze", 1000, 200, 400, "Through the ancient martial art of Wuju, Master Yi has tempered his body and sharpened his mind until thought and action have become one. Though he chooses to enter into violence as a last resort, the grace and speed with which he wields his blade ...", "MasterYi.png"))
    .then(res => this.generateChampion(playerObj, "Master Yi", "the Wuju Bladesman", "Assassin", "Bronze", 1000, 200, 400, "Through the ancient martial art of Wuju, Master Yi has tempered his body and sharpened his mind until thought and action have become one. Though he chooses to enter into violence as a last resort, the grace and speed with which he wields his blade ...", "MasterYi.png"))
    .then(res => this.generateChampion(playerObj, "Master Yi", "the Wuju Bladesman", "Assassin", "Bronze", 1000, 200, 400, "Through the ancient martial art of Wuju, Master Yi has tempered his body and sharpened his mind until thought and action have become one. Though he chooses to enter into violence as a last resort, the grace and speed with which he wields his blade ...", "MasterYi.png"))
    .then(res => this.generateChampion(playerObj, "Annie", "the Dark Child", "Mage", "Bronze", 200, 1000, 300, "There have always been those within Noxus who did not agree with the evils perpetrated by the Noxian High Command. The High Command had just put down a coup attempt from the self-proclaimed Crown Prince Raschallion, and a crackdown on any form of ...", "Annie.png"))
    .then(res => this.generateChampion(playerObj, "Annie", "the Dark Child", "Mage", "Bronze", 200, 1000, 300, "There have always been those within Noxus who did not agree with the evils perpetrated by the Noxian High Command. The High Command had just put down a coup attempt from the self-proclaimed Crown Prince Raschallion, and a crackdown on any form of ...", "Annie.png"))
    .then(res => this.generateChampion(playerObj, "Annie", "the Dark Child", "Mage", "Bronze", 200, 1000, 300, "There have always been those within Noxus who did not agree with the evils perpetrated by the Noxian High Command. The High Command had just put down a coup attempt from the self-proclaimed Crown Prince Raschallion, and a crackdown on any form of ...", "Annie.png"))
    .then(res => this.generateChampion(playerObj, "Kayle", "the Judicator", "Fighter", "Silver", 900, 1050, 900, "In a world far away where an ancient war still rages, Kayle was a great hero - the strongest of an immortal race committed to destroying evil wherever it could be found. For ten thousand years, Kayle fought tirelessly for her people, wielding her ...", "Kayle.png"))
    .then(res => this.generateChampion(playerObj, "Kayle", "the Judicator", "Fighter", "Silver", 900, 1050, 900, "In a world far away where an ancient war still rages, Kayle was a great hero - the strongest of an immortal race committed to destroying evil wherever it could be found. For ten thousand years, Kayle fought tirelessly for her people, wielding her ...", "Kayle.png"))
    .then(res => this.generateChampion(playerObj, "Kayle", "the Judicator", "Fighter", "Silver", 900, 1050, 900, "In a world far away where an ancient war still rages, Kayle was a great hero - the strongest of an immortal race committed to destroying evil wherever it could be found. For ten thousand years, Kayle fought tirelessly for her people, wielding her ...", "Kayle.png"))
    .then(res => this.generateChampion(playerObj, "Sivir", "the Battle Mistress", "Marksman", "Bronze", 900, 100, 300, "''I don't care what face is on your coin, as long as it pays.''<br><br>Sivir is a renowned fortune hunter and mercenary captain who plies her trade in the deserts of Shurima. Armed with her legendary jeweled crossblade, she has fought and won ...", "Sivir.png"))
    .then(res => this.generateChampion(playerObj, "Ezreal", "the Prodigal Explorer", "Marksman", "Silver", 1050, 900, 300, "The intrepid young adventurer Ezreal has explored some of the most remote and abandoned locations on Runeterra. During an expedition to the buried ruins of ancient Shurima, he recovered an amulet of incredible mystical power. Likely constructed to be ...", "Ezreal.png"))
    .then(res => this.generateChampion(playerObj, "Vladimir", "the Crimson Reaper", "Mage", "Silver", 300, 1200, 900, "There is a temple hidden in the mountains between Noxus and the Tempest Flats, where the secrets of an ancient and terrifying sorcery are kept. The area surrounding the temple is littered with the exsanguinated corpses of those who have mistakenly ...", "Vladimir.png"))
    .then(res => this.generateChampion(playerObj, "Udyr", "the Spirit Walker", "Fighter", "Silver", 1200, 600, 1050, "Udyr is more than a man; he is a vessel for the untamed power of four primal animal spirits. When tapping into the spirits' bestial natures, Udyr can harness their unique strengths: the tiger grants him speed and ferocity, the turtle resilience, the ...", "Udyr.png", "Champion"))
    .then(res => this.generateNonChampion(playerObj, "Requiem", "Diamond", "Destroy every champion on your opponent's side of the field", "props.requiem(props.selectedCard)", "Requiem.png", "Ability"))
    .then(res => this.generateNonChampion(playerObj, "Silver Bolts", "Silver", "Destroy the champion with the highest defense on your opponent's side of the field", "props.silverBolts(props.selectedCard)", "SilverBolts.png", "Ability"))
    .then(res => this.generateNonChampion(playerObj, "Long Sword", "Silver", "300 bonus to attack of equipped champion", "props.equip(props.selectedCard)", "LongSword.png", "Item"))
    .then(res => this.generateNonChampion(playerObj, "Amplifying Tome", "Silver", "300 bonus to magic of equipped champion", "props.equip(props.selectedCard)", "AmplifyingTome.png", "Item"))
    .then(res => this.generateNonChampion(playerObj, "Last Whisper", "Platinum", "500 bonus to all stats to equipped Marksman", "props.equip(props.selectedCard)", "LastWhisper.png", "Item"))
    .then(res => this.generateNonChampion(playerObj, "Void Staff", "Platinum", "500 bonus to all stats to equipped Mage", "props.equip(props.selectedCard)", "VoidStaff.png", "Item"))
    .then(res => {
      this.setState({
      render: 'home'
    }, () => {deckNumber = 0})})
  }

  getAllComputers = () => {
    let newPlayersArray = []
    fetch("http://localhost:3000/api/v1/players")
    .then(response => response.json())
    .then(json => {
      this.props.changeCharacters(json.slice(0, 24))
    })

  }

  setPlayerStates = (player, deck) => {

      this.props.changeAccount(player)
      this.props.changeCurrentPlayerCards(player.cards)
      this.props.changeDeck(deck)
      this.props.changeDeckCards(deck.cards)
      this.props.changeDecksList(player.decks)
      this.props.changeGold(player.gold)
      this.props.changeDefeated(player.defeated_id)
      this.props.changeDialogue(player.dialogue)
      this.props.changeCompleted(player.dialogue.completed)
      this.generateNoDupesCurrentPlayerCollection(player)

      this.setState({
        loggedIn: true,
        render: 'home'
      })
  }

  logOut = () => {
    this.setState({
      loggedIn: false
    }, () => {
      this.props.changeAccount({})
      this.props.changeCurrentPlayerCards([])
      this.props.changeNoDupesCurrentPlayerCards([])
      this.props.changeDeck({})
      this.props.changeDeckCards([])
      this.props.changeDecksList([])
      this.props.changeGold(0)
      this.props.changeDefeated(0)
      this.props.changeDialogue(0)
      this.props.changeCompleted(false)
    })
  }

  getPlayer = (event) => {
    let player
    let deckId
    let deck
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
          deckId = player.decks[0].id
          fetch(`http://localhost:3000/api/v1/players/${player.id}/decks/${deckId}`)
          .then(res => res.json())
          .then(res => {
            deck = res
            this.setPlayerStates(player, deck)
            this.props.history.push('/')
          })
        })
      }})
  }

  generateNoDupesCurrentPlayerCollection = (player) => {
    if (player) {
      let newCollection = this.props.cards.map(card => {
          card.quantity = player.cards.filter(cardObj => cardObj.name === card.name).length;
          return card
        }
      )

      this.props.changeNoDupesCurrentPlayerCards(newCollection)
      return newCollection

    } else {
      let newCollection = this.props.cards.map(card => {
          card.quantity = this.props.currentPlayerCards.filter(cardObj => cardObj.name === card.name).length;
          return card
        }
      )

      this.props.changeNoDupesCurrentPlayerCards(newCollection)
      return newCollection
    }
  }

  fetchCards = () => {
    fetch("http://localhost:3000/api/v1/allcards")
    .then(response => response.json())
    .then(json => {this.props.changeCards(json)})
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
          fetch(`http://localhost:3000/api/v1/decks`, {
            method: 'POST',
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
            },
            body: JSON.stringify(
                {
                  name: "Deck 1",
                  player_id: player.id
                }
          )})
          .then(res => res.json())
          .then(json => {
            deck = json
            this.generateDeck(player)
          })
          .then(res => {
            this.setPlayerStates(player, deck)
            this.props.history.push('/')
          })
        })
      }
    })
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

  checkDeckSize = (string) => {
    if (this.props.deckCards.length < 40) {
      alert ('Your deck has less than 40 cards!')
    } else {
      this.props.history.push(string)
    }
  }

  render() {
    if (this.state.render === 'create') {
      return(
        <div>
        <img id="shurima" src="image/shurima_sun_01.jpg" />
          <div id="home">
            <h1>LEAGUE OF CARDS</h1>
              <form>
                Account Name: <input type="text" value={this.state.name} onChange={event => this.handleName(event)}/>
                <br/>
                <br/>
                Password: <input type="password" value={this.state.password} onChange={event => this.handlePassword(event)}/>
                <br/>
                <br/>
                <button type="button" onClick={event => this.createPlayer(event)}>Submit</button>
                <br/>
                <br/>
                <button className="home" onClick={() => {this.props.history.push('/')}}>Home</button>
              </form>
          </div>
        </div>
      )
    }  else if (this.props.account.name) {
      return(
        <div>
          <img id="demacia" src="image/demacia.jpeg" />
          <div id="logged-in">
            <h1>LEAGUE OF CARDS</h1>
              <h1>Welcome, {this.props.account.name}!</h1>
              <br/>
              <button className="rules" onClick={() => {this.props.history.push('/rules')}}>Rules</button>
              <br/>
              <br/>
              <button className="campaign" onClick={() => {this.checkDeckSize('/campaign')}}>Campaign</button>
              <br/>
              <br/>
              <button className="duelistsList" onClick={() => {this.checkDeckSize('/duelistsList')}}>Free Duel</button>
              <br/>
              <br/>
              <button className="collection" onClick={() => {this.props.history.push('/collection')}}>Collection</button>
              <br/>
              <br/>
              <button className="store" onClick={() => {this.props.history.push('/cardStore')}}>Card Store</button>
              <br/>
              <br/>
              <button className="decksList" onClick={() => {this.props.history.push('/decksList')}}>Decks</button>
              <br/>
              <br/>
              <button onClick={this.logOut}>Log-Out</button>
          </div>
        </div>
      )
    } else {
      return(
          <div>
          <img id="shurima" src="image/shurima_sun_01.jpg" />
            <div id="home">
            <h1>LEAGUE OF CARDS</h1>
              <form>
                <h1>Log-In</h1>
                  Account: <input type="text" value={this.name} onChange={event => this.handleName(event)}/>
                  <br/>
                  <br/>
                  Password: <input type="password" value={this.password} onChange={event => this.handlePassword(event)}/>
                  <br/>
                  <br/>
                  <button type="button" onClick={event => this.getPlayer(event)}>Submit</button>
              </form>
                <br/>
              <button className="create" onClick={event => {this.setState({render: 'create'})}}>Create Account</button>
            </div>
          </div>
        )
    }
  }
}

const mapStateToProps = state => {
  return {
    account: state.accountChanger.account,
    cards: state.cardsChanger.cards,
    currentPlayerCards: state.currentPlayerCardsChanger.currentPlayerCards,
    noDupesCurrentPlayerCards: state.noDupesCurrentPlayerCardsChanger.noDupesCurrentPlayerCards,
    deck: state.deckChanger.deck,
    deckCards: state.deckCardsChanger.deckCards,
    characters: state.charactersChanger.characters,
    enemy: state.enemyChanger.enemy,
    enemyDeck: state.enemyDeckChanger.enemyDeck,
    card: state.cardChanger.card,
    decksList: state.decksListChanger.decksList,
    gold: state.goldChanger.gold,
    defeated: state.defeatedChanger.defeated,
    dialogue: state.dialogueChanger.dialogue,
    location: state.locationChanger.location,
    completed: state.completedChanger.completed
  }
}

const mapDispatchToProps = dispatch => {
  return {
    changeAccount: (event) => dispatch({type: 'CHANGE_ACCOUNT', newAccount: event}),
    changeCards: (event) => dispatch({type: 'CHANGE_CARDS', newCards: event}),
    changeCurrentPlayerCards: (event) => dispatch({type: 'CHANGE_CURRENTPLAYERCARDS', newCurrentPlayerCards: event}),
    changeNoDupesCurrentPlayerCards: (event) => dispatch({type: 'CHANGE_NODUPESCURRENTPLAYERCARDS', newNoDupesCurrentPlayerCards: event}),
    changeDeck: (event) => dispatch({type: 'CHANGE_DECK', newDeck: event}),
    changeDeckCards: (event) => dispatch({type: 'CHANGE_DECKCARDS', newDeckCards: event}),
    changeCharacters: (event) => dispatch({type: 'CHANGE_CHARACTERS', newCharacters: event}),
    changeEnemy: (event) => dispatch({type: 'CHANGE_ENEMY', newEnemy: event}),
    changeEnemyDeck: (event) => dispatch({type: 'CHANGE_ENEMYDECK', newEnemyDeck: event}),
    changeCard: (event) => dispatch({type: 'CHANGE_CARD', newCard: event}),
    changeDecksList: (event) => dispatch({type: 'CHANGE_DECKSLIST', newDecksList: event}),
    changeGold: (event) => dispatch({type: 'CHANGE_GOLD', newGold: event}),
    changeDefeated: (event) => dispatch({type: 'CHANGE_DEFEATED', newDefeated: event}),
    changeDialogue: (event) => dispatch({type: 'CHANGE_DIALOGUE', newDialogue: event}),
    changeLocation: (event) => dispatch({type: 'CHANGE_LOCATION', newLocation: event}),
    changeCompleted: (event) => dispatch({type: 'CHANGE_COMPLETED', newCompleted: event})
  }
}

export default compose(
  withRouter,
  connect(mapStateToProps,
  mapDispatchToProps)
)(Home);
