import React from "react";
import Collection from "./Collection.js"
import CardInfo from "../components/CardInfo.js"
import SideBar from "./SideBar.js"
import DuelField from "./DuelField.js"
import CardStore from "./CardStore.js"
import DecksList from "./DecksList.js"
import DuelistsList from "./DuelistsList.js"
import Header from "../components/Header.js"
import Campaign from "./Campaign.js"

let deckNumber = 0

export default class Home extends React.Component {
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

  // generateDeckCard = (player, number) => {
  //
  //   let randomCard = this.state.collection[Math.floor(Math.random() * this.state.collection.length)]
  //
  //   randomCard.enemydeckCardId = number
  //
  //   if (this.state.currentDeckCards.filter(
  //     cardObj => cardObj.name === randomCard.name
  //   ).length < 1) {
  //     // player.decks[0].cards = [...player.decks[0].cards, randomCard]
  //
  //     fetch(`http://localhost:3000/api/v1/deckcards`, {
  //       method: 'POST',
  //       headers: {
  //         'Content-Type': 'application/json',
  //         'Accept': 'application/json',
  //       },
  //       body: JSON.stringify(
  //           {
  //             deck_id: player.id,
  //             card_id: randomCard.key
  //           }
  //     )})
  //   }
  // }

  findNewElement = (array1, array2) => {
    return array1.filter()
  }

  generateDeck = (playerObj) => {
    // let allCards =
    let object = {}
    let deck
    let card
    let allCards
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
    .then(res => {
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
    .then(res => {
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
    .then(res => {
      fetch("http://localhost:3000/api/v1/cards", {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
        body: JSON.stringify(
          {
            player_id: playerObj.id,
            name: "Blitzcrank",
            title: "the Great Steam Golem",
            role: "Tank",
            rarity: "Bronze",
            attack: 400,
            magic: 500,
            defense: 800,
            description: "Zaun is a place where both magic and science have gone awry, and the unchecked nature of experimentation has taken its toll. However, Zaun's lenient restrictions allow their researchers and inventors the leeway to push the bounds of science at an ...",
            image: "Blitzcrank.png",
            cardtype: "Champion"
          }
        )
      })
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
    .then(res => {
      fetch("http://localhost:3000/api/v1/cards", {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
        body: JSON.stringify(
          {
            player_id: playerObj.id,
            name: "Blitzcrank",
            title: "the Great Steam Golem",
            role: "Tank",
            rarity: "Bronze",
            attack: 400,
            magic: 500,
            defense: 800,
            description: "Zaun is a place where both magic and science have gone awry, and the unchecked nature of experimentation has taken its toll. However, Zaun's lenient restrictions allow their researchers and inventors the leeway to push the bounds of science at an ...",
            image: "Blitzcrank.png",
            cardtype: "Champion"
          }
        )
      })
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
    .then(res => {
      fetch("http://localhost:3000/api/v1/cards", {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
        body: JSON.stringify(
          {
            player_id: playerObj.id,
            name: "Blitzcrank",
            title: "the Great Steam Golem",
            role: "Tank",
            rarity: "Bronze",
            attack: 400,
            magic: 500,
            defense: 800,
            description: "Zaun is a place where both magic and science have gone awry, and the unchecked nature of experimentation has taken its toll. However, Zaun's lenient restrictions allow their researchers and inventors the leeway to push the bounds of science at an ...",
            image: "Blitzcrank.png",
            cardtype: "Champion"
          }
        )
      })
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
    .then(res => {
      fetch("http://localhost:3000/api/v1/cards", {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
        body: JSON.stringify(
          {
            player_id: playerObj.id,
            name: "Nautilus",
            title: "the Titan of the Depths",
            role: "Tank",
            rarity: "Bronze",
            attack: 400,
            magic: 600,
            defense: 600,
            description: "Once, Nautilus was a sailor commissioned by the Institute of War to explore the uncharted reaches of the Guardian's Sea. This expedition took him deep into unknown waters where he and his crew found a vast section of black oozing liquid that none of ...",
            image: "Nautilus.png",
            cardtype: "Champion"
          }
        )
      })
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
    .then(res => {
      fetch("http://localhost:3000/api/v1/cards", {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
        body: JSON.stringify(
          {
            player_id: playerObj.id,
            name: "Nautilus",
            title: "the Titan of the Depths",
            role: "Tank",
            rarity: "Bronze",
            attack: 400,
            magic: 600,
            defense: 600,
            description: "Once, Nautilus was a sailor commissioned by the Institute of War to explore the uncharted reaches of the Guardian's Sea. This expedition took him deep into unknown waters where he and his crew found a vast section of black oozing liquid that none of ...",
            image: "Nautilus.png",
            cardtype: "Champion"
          }
        )
      })
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
    .then(res => {
      fetch("http://localhost:3000/api/v1/cards", {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
        body: JSON.stringify(
          {
            player_id: playerObj.id,
            name: "Nautilus",
            title: "the Titan of the Depths",
            role: "Tank",
            rarity: "Bronze",
            attack: 400,
            magic: 600,
            defense: 600,
            description: "Once, Nautilus was a sailor commissioned by the Institute of War to explore the uncharted reaches of the Guardian's Sea. This expedition took him deep into unknown waters where he and his crew found a vast section of black oozing liquid that none of ...",
            image: "Nautilus.png",
            cardtype: "Champion"
          }
        )
      })
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
    .then(res => {
      fetch("http://localhost:3000/api/v1/cards", {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
        body: JSON.stringify(
          {
            player_id: playerObj.id,
            name: "Ashe",
            title: "the Frost Archer",
            role: "Marksman",
            rarity: "Bronze",
            attack: 700,
            magic: 200,
            defense: 300,
            description: "With each arrow she fires from her ancient ice-enchanted bow, Ashe proves she is a master archer. She chooses each target carefully, waits for the right moment, and then strikes with power and precision. It is with this same vision and focus that she ...",
            image: "Ashe.png",
            cardtype: "Champion"
          }
        )
      })
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
    .then(res => {
      fetch("http://localhost:3000/api/v1/cards", {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
        body: JSON.stringify(
          {
            player_id: playerObj.id,
            name: "Ashe",
            title: "the Frost Archer",
            role: "Marksman",
            rarity: "Bronze",
            attack: 700,
            magic: 200,
            defense: 300,
            description: "With each arrow she fires from her ancient ice-enchanted bow, Ashe proves she is a master archer. She chooses each target carefully, waits for the right moment, and then strikes with power and precision. It is with this same vision and focus that she ...",
            image: "Ashe.png",
            cardtype: "Champion"
          }
        )
      })
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
    .then(res => {
      fetch("http://localhost:3000/api/v1/cards", {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
        body: JSON.stringify(
          {
            player_id: playerObj.id,
            name: "Ashe",
            title: "the Frost Archer",
            role: "Marksman",
            rarity: "Bronze",
            attack: 700,
            magic: 200,
            defense: 300,
            description: "With each arrow she fires from her ancient ice-enchanted bow, Ashe proves she is a master archer. She chooses each target carefully, waits for the right moment, and then strikes with power and precision. It is with this same vision and focus that she ...",
            image: "Ashe.png",
            cardtype: "Champion"
          }
        )
      })
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
    .then(res => {
      fetch("http://localhost:3000/api/v1/cards", {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
        body: JSON.stringify(
          {
            player_id: playerObj.id,
            name: "Varus",
            title: "the Arrow of Retribution",
            role: "Marksman",
            rarity: "Bronze",
            attack: 700,
            magic: 400,
            defense: 300,
            description: "''The life of an arrow is fleeting, built of nothing but direction and intent.''<br><br>For his incomparable skill with the bow and his unquestioned sense of honor, Varus was chosen to be the warden of a sacred Ionian temple. The temple was built to ...",
            image: "Varus.png",
            cardtype: "Champion"
          }
        )
      })
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
    .then(res => {
      fetch("http://localhost:3000/api/v1/cards", {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
        body: JSON.stringify(
          {
            player_id: playerObj.id,
            name: "Varus",
            title: "the Arrow of Retribution",
            role: "Marksman",
            rarity: "Bronze",
            attack: 700,
            magic: 400,
            defense: 300,
            description: "''The life of an arrow is fleeting, built of nothing but direction and intent.''<br><br>For his incomparable skill with the bow and his unquestioned sense of honor, Varus was chosen to be the warden of a sacred Ionian temple. The temple was built to ...",
            image: "Varus.png",
            cardtype: "Champion"
          }
        )
      })
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
    .then(res => {
      fetch("http://localhost:3000/api/v1/cards", {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
        body: JSON.stringify(
          {
            player_id: playerObj.id,
            name: "Varus",
            title: "the Arrow of Retribution",
            role: "Marksman",
            rarity: "Bronze",
            attack: 700,
            magic: 400,
            defense: 300,
            description: "''The life of an arrow is fleeting, built of nothing but direction and intent.''<br><br>For his incomparable skill with the bow and his unquestioned sense of honor, Varus was chosen to be the warden of a sacred Ionian temple. The temple was built to ...",
            image: "Varus.png",
            cardtype: "Champion"
          }
        )
      })
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
    .then(res => {
      fetch("http://localhost:3000/api/v1/cards", {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
        body: JSON.stringify(
          {
            player_id: playerObj.id,
            name: "Soraka",
            title: "the Starchild",
            role: "Support",
            rarity: "Bronze",
            attack: 200,
            magic: 700,
            defense: 500,
            description: "A healer gifted with the magic of the stars, Soraka holds all living creatures close to her heart. She was once a celestial being, but she sacrificed her immortality and entered the world of mortals. So long as evil threatens life in Valoran, Soraka ...",
            image: "Soraka.png",
            cardtype: "Champion"
          }
        )
      })
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
    .then(res => {
      fetch("http://localhost:3000/api/v1/cards", {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
        body: JSON.stringify(
          {
            player_id: playerObj.id,
            name: "Soraka",
            title: "the Starchild",
            role: "Support",
            rarity: "Bronze",
            attack: 200,
            magic: 700,
            defense: 500,
            description: "A healer gifted with the magic of the stars, Soraka holds all living creatures close to her heart. She was once a celestial being, but she sacrificed her immortality and entered the world of mortals. So long as evil threatens life in Valoran, Soraka ...",
            image: "Soraka.png",
            cardtype: "Champion"
          }
        )
      })
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
    .then(res => {
      fetch("http://localhost:3000/api/v1/cards", {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
        body: JSON.stringify(
          {
            player_id: playerObj.id,
            name: "Soraka",
            title: "the Starchild",
            role: "Support",
            rarity: "Bronze",
            attack: 200,
            magic: 700,
            defense: 500,
            description: "A healer gifted with the magic of the stars, Soraka holds all living creatures close to her heart. She was once a celestial being, but she sacrificed her immortality and entered the world of mortals. So long as evil threatens life in Valoran, Soraka ...",
            image: "Soraka.png",
            cardtype: "Champion"
          }
        )
      })
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
    .then(res => {
      fetch("http://localhost:3000/api/v1/cards", {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
        body: JSON.stringify(
          {
            player_id: playerObj.id,
            name: "Ahri",
            title: "the Nine-Tailed Fox",
            role: "Mage",
            rarity: "Bronze",
            attack: 300,
            magic: 800,
            defense: 400,
            description: "Unlike other foxes that roamed the woods of southern Ionia, Ahri had always felt a strange connection to the magical world around her; a connection that was somehow incomplete. Deep inside, she felt the skin she had been born into was an ill fit for ...",
            image: "Ahri.png",
            cardtype: "Champion"
          }
        )
      })
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
    .then(res => {
      fetch("http://localhost:3000/api/v1/cards", {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
        body: JSON.stringify(
          {
            player_id: playerObj.id,
            name: "Ahri",
            title: "the Nine-Tailed Fox",
            role: "Mage",
            rarity: "Bronze",
            attack: 300,
            magic: 800,
            defense: 400,
            description: "Unlike other foxes that roamed the woods of southern Ionia, Ahri had always felt a strange connection to the magical world around her; a connection that was somehow incomplete. Deep inside, she felt the skin she had been born into was an ill fit for ...",
            image: "Ahri.png",
            cardtype: "Champion"
          }
        )
      })
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
    .then(res => {
      fetch("http://localhost:3000/api/v1/cards", {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
        body: JSON.stringify(
          {
            player_id: playerObj.id,
            name: "Ahri",
            title: "the Nine-Tailed Fox",
            role: "Mage",
            rarity: "Bronze",
            attack: 300,
            magic: 800,
            defense: 400,
            description: "Unlike other foxes that roamed the woods of southern Ionia, Ahri had always felt a strange connection to the magical world around her; a connection that was somehow incomplete. Deep inside, she felt the skin she had been born into was an ill fit for ...",
            image: "Ahri.png",
            cardtype: "Champion"
          }
        )
      })
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
    .then(res => {
      fetch("http://localhost:3000/api/v1/cards", {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
        body: JSON.stringify(
          {
            player_id: playerObj.id,
            name: "Master Yi",
            title: "the Wuju Bladesman",
            role: "Assassin",
            rarity: "Bronze",
            attack: 1000,
            magic: 200,
            defense: 400,
            description: "Through the ancient martial art of Wuju, Master Yi has tempered his body and sharpened his mind until thought and action have become one. Though he chooses to enter into violence as a last resort, the grace and speed with which he wields his blade ...",
            image: "MasterYi.png",
            cardtype: "Champion"
          }
        )
      })
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
    .then(res => {
      fetch("http://localhost:3000/api/v1/cards", {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
        body: JSON.stringify(
          {
            player_id: playerObj.id,
            name: "Master Yi",
            title: "the Wuju Bladesman",
            role: "Assassin",
            rarity: "Bronze",
            attack: 1000,
            magic: 200,
            defense: 400,
            description: "Through the ancient martial art of Wuju, Master Yi has tempered his body and sharpened his mind until thought and action have become one. Though he chooses to enter into violence as a last resort, the grace and speed with which he wields his blade ...",
            image: "MasterYi.png",
            cardtype: "Champion"
          }
        )
      })
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
    .then(res => {
      fetch("http://localhost:3000/api/v1/cards", {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
        body: JSON.stringify(
          {
            player_id: playerObj.id,
            name: "Master Yi",
            title: "the Wuju Bladesman",
            role: "Assassin",
            rarity: "Bronze",
            attack: 1000,
            magic: 200,
            defense: 400,
            description: "Through the ancient martial art of Wuju, Master Yi has tempered his body and sharpened his mind until thought and action have become one. Though he chooses to enter into violence as a last resort, the grace and speed with which he wields his blade ...",
            image: "MasterYi.png",
            cardtype: "Champion"
          }
        )
      })
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
    .then(res => {
      fetch("http://localhost:3000/api/v1/cards", {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
        body: JSON.stringify(
          {
            player_id: playerObj.id,
            name: "Annie",
            title: "the Dark Child",
            role: "Mage",
            rarity: "Bronze",
            attack: 200,
            magic: 1000,
            defense: 300,
            description: "There have always been those within Noxus who did not agree with the evils perpetrated by the Noxian High Command. The High Command had just put down a coup attempt from the self-proclaimed Crown Prince Raschallion, and a crackdown on any form of ...",
            image: "Annie.png",
            cardtype: "Champion"
          }
        )
      })
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
    .then(res => {
      fetch("http://localhost:3000/api/v1/cards", {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
        body: JSON.stringify(
          {
            player_id: playerObj.id,
            name: "Annie",
            title: "the Dark Child",
            role: "Mage",
            rarity: "Bronze",
            attack: 200,
            magic: 1000,
            defense: 300,
            description: "There have always been those within Noxus who did not agree with the evils perpetrated by the Noxian High Command. The High Command had just put down a coup attempt from the self-proclaimed Crown Prince Raschallion, and a crackdown on any form of ...",
            image: "Annie.png",
            cardtype: "Champion"
          }
        )
      })
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
    .then(res => {
      fetch("http://localhost:3000/api/v1/cards", {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
        body: JSON.stringify(
          {
            player_id: playerObj.id,
            name: "Annie",
            title: "the Dark Child",
            role: "Mage",
            rarity: "Bronze",
            attack: 200,
            magic: 1000,
            defense: 300,
            description: "There have always been those within Noxus who did not agree with the evils perpetrated by the Noxian High Command. The High Command had just put down a coup attempt from the self-proclaimed Crown Prince Raschallion, and a crackdown on any form of ...",
            image: "Annie.png",
            cardtype: "Champion"
          }
        )
      })
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
    .then(res => {
      fetch("http://localhost:3000/api/v1/cards", {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
        body: JSON.stringify(
          {
            player_id: playerObj.id,
            name: "Kayle",
            title: "the Judicator",
            role: "Fighter",
            rarity: "Silver",
            attack: 900,
            magic: 1050,
            defense: 900,
            description: "In a world far away where an ancient war still rages, Kayle was a great hero - the strongest of an immortal race committed to destroying evil wherever it could be found. For ten thousand years, Kayle fought tirelessly for her people, wielding her ...",
            image: "Kayle.png",
            cardtype: "Champion"
          }
        )
      })
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
    .then(res => {
      fetch("http://localhost:3000/api/v1/cards", {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
        body: JSON.stringify(
          {
            player_id: playerObj.id,
            name: "Kayle",
            title: "the Judicator",
            role: "Fighter",
            rarity: "Silver",
            attack: 900,
            magic: 1050,
            defense: 900,
            description: "In a world far away where an ancient war still rages, Kayle was a great hero - the strongest of an immortal race committed to destroying evil wherever it could be found. For ten thousand years, Kayle fought tirelessly for her people, wielding her ...",
            image: "Kayle.png",
            cardtype: "Champion"
          }
        )
      })
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
    .then(res => {
      fetch("http://localhost:3000/api/v1/cards", {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
        body: JSON.stringify(
          {
            player_id: playerObj.id,
            name: "Kayle",
            title: "the Judicator",
            role: "Fighter",
            rarity: "Silver",
            attack: 900,
            magic: 1050,
            defense: 900,
            description: "In a world far away where an ancient war still rages, Kayle was a great hero - the strongest of an immortal race committed to destroying evil wherever it could be found. For ten thousand years, Kayle fought tirelessly for her people, wielding her ...",
            image: "Kayle.png",
            cardtype: "Champion"
          }
        )
      })
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
    .then(res => {
      fetch("http://localhost:3000/api/v1/cards", {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
        body: JSON.stringify(
          {
            player_id: playerObj.id,
            name: "Sivir",
            title: "the Battle Mistress",
            role: "Marksman",
            rarity: "Bronze",
            attack: 900,
            magic: 100,
            defense: 300,
            description: "''I don't care what face is on your coin, as long as it pays.''<br><br>Sivir is a renowned fortune hunter and mercenary captain who plies her trade in the deserts of Shurima. Armed with her legendary jeweled crossblade, she has fought and won ...",
            image: "Sivir.png",
            cardtype: "Champion"
          }
        )
      })
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
    .then(res => {
      fetch("http://localhost:3000/api/v1/cards", {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
        body: JSON.stringify(
          {
            player_id: playerObj.id,
            name: "Ezreal",
            title: "the Prodigal Explorer",
            role: "Marksman",
            rarity: "Silver",
            attack: 1050,
            magic: 900,
            defense: 300,
            description: "The intrepid young adventurer Ezreal has explored some of the most remote and abandoned locations on Runeterra. During an expedition to the buried ruins of ancient Shurima, he recovered an amulet of incredible mystical power. Likely constructed to be ...",
            image: "Ezreal.png",
            cardtype: "Champion"
          }
        )
      })
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
    .then(res => {
      fetch("http://localhost:3000/api/v1/cards", {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
        body: JSON.stringify(
          {
            player_id: playerObj.id,
            name: "Vladimir",
            title: "the Crimson Reaper",
            role: "Mage",
            rarity: "Silver",
            attack: 300,
            magic: 1200,
            defense: 900,
            description: "There is a temple hidden in the mountains between Noxus and the Tempest Flats, where the secrets of an ancient and terrifying sorcery are kept. The area surrounding the temple is littered with the exsanguinated corpses of those who have mistakenly ...",
            image: "Vladimir.png",
            cardtype: "Champion"
          }
        )
      })
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
    .then(res => {
      fetch("http://localhost:3000/api/v1/cards", {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
        body: JSON.stringify(
          {
            player_id: playerObj.id,
            name: "Udyr",
            title: "the Spirit Walker",
            role: "Fighter",
            rarity: "Silver",
            attack: 1200,
            magic: 600,
            defense: 1050,
            description: "Udyr is more than a man; he is a vessel for the untamed power of four primal animal spirits. When tapping into the spirits' bestial natures, Udyr can harness their unique strengths: the tiger grants him speed and ferocity, the turtle resilience, the ...",
            image: "Udyr.png",
            cardtype: "Champion"
          }
        )
      })
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
    .then(res => {
      fetch("http://localhost:3000/api/v1/cards", {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
        body: JSON.stringify(
          {
            player_id: playerObj.id,
            name: "Requiem",
            cardtype: "Ability",
            rarity: "Diamond",
            description: "Destroy every champion on your opponent's side of the field",
            effect: "props.requiem(props.selectedCard)",
            image: "Requiem.png"
          }
        )
      })
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
    .then(res => {
      fetch("http://localhost:3000/api/v1/cards", {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
        body: JSON.stringify(
          {
            player_id: playerObj.id,
            name: "Silver Bolts",
            cardtype: "Ability",
            rarity: "Silver",
            description: "Destroy the champion with the highest defense on your opponent's side of the field",
            effect: "props.silverBolts(props.selectedCard)",
            image: "SilverBolts.png"
          }
        )
      })
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
    .then(res => {
      fetch("http://localhost:3000/api/v1/cards", {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
        body: JSON.stringify(
          {
            player_id: playerObj.id,
            name: "Long Sword",
            cardtype: "Item",
            rarity: "Silver",
            description: "300 bonus to attack of equipped champion.",
            effect: "props.equip(props.selectedCard)",
            image: "LongSword.png"
          }
        )
      })
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
    .then(res => {
      fetch("http://localhost:3000/api/v1/cards", {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
        body: JSON.stringify(
          {
            player_id: playerObj.id,
            name: "Amplifying Tome",
            cardtype: "Item",
            rarity: "Silver",
            description: "300 bonus to magic of equipped champion.",
            effect: "props.equip(props.selectedCard)",
            image: "AmplifyingTome.png"
          }
        )
      })
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
    .then(res => {
      fetch("http://localhost:3000/api/v1/cards", {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
        body: JSON.stringify(
          {
            player_id: playerObj.id,
            name: "Last Whisper",
            cardtype: "Item",
            rarity: "Platinum",
            description: "500 bonus to all stats to equipped Marksman.",
            effect: "props.equip(props.selectedCard)",
            image: "LastWhisper.png"
          }
        )
      })
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
    .then(res => {
      fetch("http://localhost:3000/api/v1/cards", {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
        body: JSON.stringify(
          {
            player_id: playerObj.id,
            name: "Void Staff",
            cardtype: "Item",
            rarity: "Platinum",
            description: "500 bonus to all stats to equipped Mage.",
            effect: "props.equip(props.selectedCard)",
            image: "VoidStaff.png"
          }
        )
      })
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
    .then(res => this.setState({
      render: 'home'
    }, () => {deckNumber = 0}))
  }

  getAllPlayers = () => {
    let newPlayersArray = []
    fetch("http://localhost:3000/api/v1/players")
    .then(response => response.json())
    .then(json => this.setState({
      allPlayers: json
    }))
    // .then(json => {
    //   json.map(playerObj => {
    //     let newPlayerObj = playerObj
    //     newPlayerObj.decks[0].cards = []
    //       newPlayersArray = [...newPlayersArray, newPlayerObj]
    //     }
    //   )
    // })
    // .then(res => this.setState({
    //   allPlayers: newPlayersArray
    // }, () => newPlayersArray.map(
    //   playerObj => {
    //     if (playerObj.computer === true) {
    //       playerObj.decks[0].cards = []
    //       this.generateDeck(playerObj)
    //     }
    //   }
    // )))
    // .then(res => {
    //   fetch("http://localhost:3000/api/v1/decks")
    //   .then(res => res.json())
    //   .then(json => this.setState({
    //     decksList: json
    //   }))
    // })
  }

  updateDecksList = () => {
    fetch(`http://localhost:3000/api/v1/players/${this.state.currentPlayer.id}/decks`)
    .then(response => response.json())
    .then(json => this.setState({
      currentPlayerCollection: json
    }, () => this.generateNoDupesCurrentPlayerCollection()))
  }

  getPlayer = (event) => {
    event.preventDefault()
    this.setState({
      currentPlayer: this.state.allPlayers.find(playerObj => playerObj.name === this.state.name
        && playerObj.password_digest === this.state.password
      )
    }, () => {
      fetch(`http://localhost:3000/api/v1/players/${this.state.currentPlayer.id}`)
      .then(res => res.json())
      .then(res => {
        window.localStorage.setItem('jwt', res.jwt)
        console.log(window.localStorage)
        console.log(window.localStorage.length)
        this.setState({
          currentPlayer: res,
          currentPlayerCollection: res.cards,
          currentDeck: res.decks[0],
          loggedIn: true,
          gold: res.gold,
          defeated: res.defeated_id,
          dialogue: res.dialogue
        }, () => {
          fetch(`http://localhost:3000/api/v1/players/${this.state.currentPlayer.id}/decks/${this.state.currentDeck.id}`)
          .then(res => res.json())
          .then(res => this.setState({
            currentDeckCards: res.cards
          }))
          this.generateNoDupesCurrentPlayerCollection()
        }
      )})
    })
  }

  generateNoDupesCurrentPlayerCollection = () => {
    // let newCollection = this.state.collection
    // this.state.currentPlayerCollection.forEach((card) => {
    //     newCollection.filter(collectionCard => collectionCard.name === card.name)[0].quantity ++
    // })

    let newCollection = this.state.collection.map(card => {
        card.quantity = this.state.currentPlayerCollection.filter(cardObj => cardObj.name === card.name).length;
        return card
      }
    )

    this.setState({
      noDupesCurrentPlayerCollection: newCollection
    })
  }

  fetchCards = () => {
    fetch("http://localhost:3000/api/v1/allcards")
    .then(response => response.json())
    .then(json => this.setState({
      collection: json
    }))
  }

  printState = (event) => {
    event.preventDefault()
    console.log(this.state)
  }

  getDeck = (deck) => {
    let desiredDeck
    console.log(deck)
    fetch("http://localhost:3000/api/v1/decks")
    .then(res => res.json())
    .then(res => desiredDeck = res.find(
      deckObj => deck.name === deckObj.name
    ))
    .then(res => this.setState(
      {
        currentDeck: desiredDeck,
        currentDeckCards: deck.cards
      }, () => this.renderHome())
    )
  }

  renderHome = () => {
    this.setState({
      render: 'home'
    })
  }

  numberNotInDeck = () => {

  }

  addToDeck = (card) => {

    if (this.state.currentDeckCards.filter(
      cardObj => cardObj.name === card.name
    ).length < 3 &&
    this.state.currentDeckCards.length < 40 &&
    card.quantity - this.state.currentDeckCards.filter(cardObj => cardObj.name === card.name).length > 0) {

      let cardToAdd = this.state.currentPlayerCollection.filter(cardObj =>
        cardObj.name === card.name && this.state.currentDeckCards.filter(cardObj2 => cardObj2.id === cardObj.id ).length === 0
      )[0]
      console.log(cardToAdd)

        fetch(`http://localhost:3000/api/v1/deckcards`, {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
          body: JSON.stringify(
              {
                deck_id: this.state.currentDeck.id,
                card_id: cardToAdd.id
              }
        )})
        .then(response => this.setState({
          currentDeckCards: [...this.state.currentDeckCards, cardToAdd]
        }))
    }
  }

  removeFromDeck = (card) => {
    // let newDeckCards = this.state.currentDeckCards
    let deckCardToDelete
    console.log(this.state.currentDeck.id)
    console.log(card.id)
    console.log(this.state.currentDeckCards)
    console.log(this.state.currentDeckCards.filter(cardObj => cardObj.id !== card.id))
    // let removeIndex = newDeckCards.findIndex(
    //   cardObj => cardObj === card.name
    // )
    //
    // newDeckCards.splice(removeIndex, 1)

    fetch(`http://localhost:3000/api/v1/deckcards`)
    .then(res => res.json())
    .then(json => deckCardToDelete = json.filter(
      obj => obj.card.id === card.id && obj.deck.id === this.state.currentDeck.id
    )[0])
    .then(response => {
      this.setState({
        currentDeckCards: this.state.currentDeckCards.filter(cardObj => cardObj.id !== card.id)
      }, () => {fetch(`http://localhost:3000/api/v1/deckcards/${deckCardToDelete.id}`, {
        method: 'DELETE'
      })})
    })
  }

  componentDidMount() {
    this.fetchCards()
    this.getAllPlayers()
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
            dialogue: this.state.dialogue + 1
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
      fetch(`http://localhost:3000/api/v1/players/${this.state.currentPlayer.id}`)
      .then(res => res.json())
      .then(json => {this.setState({
          gold: json.gold,
          render: 'store'
        })
      })
    } else if ((event.target.className === 'duelistsList' || event.target.className === 'campaign')
      && this.state.currentDeckCards.length !== 40) {
      console.log(this.state.currentDeckCards.length)
      console.log(this.state.currentDeckCards.length === 40)
        alert('Your deck must contain 40 cards!')
      } else {
        this.setState({
          render: event.target.className
        })
      }
    // }
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

  getDuelist = (player, location) => {
    let desiredDeck
    fetch(`http://localhost:3000/api/v1/decks/${this.state.currentDeck.id}`)
    .then(res => res.json())
    .then(res => this.setState(
      {
        currentDeckCards: res.cards
      }, () => {
        fetch(`http://localhost:3000/api/v1/players/${player.id}/decks/1`)
        .then(response => response.json())
        .then(json => {
          this.setState({
            player2: player,
            player2Deck: json.cards,
            duelLocation: location
          }, () => { this.renderDuel()}
        )
        })
      }
    ))

  }

  renderDuel = () => {
    this.setState({
      render: 'duel'
    })
  }

  createPlayer = (event) => {
    event.preventDefault()
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
            defeated_id: 0
          }
    )}).then(res => this.setState({
        allPlayers: [...this.state.allPlayers, {id: this.state.allPlayers.length + 1, name: this.state.name, decks: [], cards: [], collection: [], image: 'image/TwistedFatePortrait.png', computer: false, password_digest: this.state.password, defeated: 0}]
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
              player_id: this.state.allPlayers[this.state.allPlayers.length - 1].id
            }
      )})
      .then(res => {this.generateDeck(this.state.allPlayers[this.state.allPlayers.length - 1])})
    }
  ))
  }

  updateCurrentPlayerCollection = () => {
    fetch(`http://localhost:3000/api/v1/players/${this.state.currentPlayer.id}/cards`)
    .then(response => response.json())
    .then(json => this.setState({
      currentPlayerCollection: json
    }, () => this.generateNoDupesCurrentPlayerCollection()))
  }

  buyPack = () => {
    fetch(`http://localhost:3000/api/v1/players/${this.state.currentPlayer.id}`, {
      method: 'PATCH',
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      body: JSON.stringify(
          {
            gold: this.state.gold - 100
          }
    )})
    .then(res => {
      this.setState({
        gold: this.state.gold - 100
      })
    })
  }

  reward = () => {
    let player = this.state.currentPlayer
    player.defeated_id = this.state.player2.id
    this.setState({
      gold: this.state.gold + 30,
      defeated: this.state.player2.id,
      currentPlayer: player
    })
  }

  // campaignReward = () => {
  //   let player = this.state.currentPlayer
  //   player.defeated_id = this.state.player2.id
  //   player.dialogue = player.dialogue + 1
  //   this.setState({
  //     gold: this.state.gold + 30,
  //     defeated: this.state.player2.id,
  //     currentPlayer: player
  //   })
  // }

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
      window.localStorage.removeItem('jwt')
      console.log(window.localStorage)
    })
  }

  render() {
    if (this.state.render === 'home' && this.state.loggedIn === false) {
      return(
        <div>
        <img id="shurima" src="image/shurima_sun_01.jpg" />
          <div id="home">
          <h1>FORBIDDEN MEMORIES</h1>
            <form>
              <button onClick={event => this.printState(event)}>State</button>
              <h1>Log-In</h1>
                Account: <input type="text" value={this.state.name} onChange={event => this.handleName(event)}/>
                <br/>
                <br/>
                Password: <input type="password" value={this.state.password} onChange={event => this.handlePassword(event)}/>
                <br/>
                <br/>
                <button type="button" onClick={this.getPlayer}>Submit</button>
            </form>
              <br/>
            <button className="create" onClick={event => {this.renderStuff(event)}}>Create Account</button>
          </div>
        </div>
      )
    } else if (this.state.render === 'home' && this.state.loggedIn === true){
      return(
        <div>
          <img id="demacia" src="image/demacia.jpeg" />
          <div id="logged-in">
            <h1>FORBIDDEN MEMORIES</h1>
              <button onClick={event => this.printState(event)}>State</button>
              <h1>Welcome, {this.state.currentPlayer.name}!</h1>
              <br/>
              <button className="campaign" onClick={event => {this.renderStuff(event)}}>Campaign</button>
              <br/>
              <br/>
              <button className="duelistsList" onClick={event => {this.renderStuff(event)}}>DUEL!!!</button>
              <br/>
              <br/>
              <button className="collection" onClick={event => {this.renderStuff(event)}}>Collection</button>
              <br/>
              <br/>
              <button className="store" onClick={event => {this.renderStuff(event)}}>Card Store</button>
              <br/>
              <br/>
              <button className="decksList" onClick={event => {this.renderStuff(event)}}>Decks</button>
              <br/>
              <br/>
              <button onClick={this.log}>Log-Out</button>
          </div>
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
          />
        </div>
      )
    } else if (this.state.render === 'create' ){
      return(
        <div>
        <img id="shurima" src="image/shurima_sun_01.jpg" />
          <div id="home">
            <h1>FORBIDDEN MEMORIES</h1>
              <form>
                Account Name: <input type="text" value={this.state.name} onChange={event => this.handleName(event)}/>
                <br/>
                <br/>
                Password: <input type="password" value={this.state.password} onChange={event => this.handlePassword(event)}/>
                <br/>
                <br/>
                <button type="button" onClick={this.createPlayer}>Submit</button>
              </form>
          </div>
        </div>
      )
    } else if (this.state.render === 'decksList') {
      return(
        <div>
          <Header renderStuff={this.renderStuff}/>
          <DecksList
            currentPlayer={this.state.currentPlayer}
            renderCollection={this.renderCollection}
            renderHome={this.renderHome}
            getDeck={this.getDeck}
            currentDeck={this.state.currentDeck}
          />
        </div>
      )
    } else if (this.state.render === 'store') {
      return(
        <div>
          <Header renderStuff={this.renderStuff} />
          <CardStore
            collection={this.state.collection}
            currentPlayer={this.state.currentPlayer}
            renderCollection={this.renderCollection}
            packCard={this.state.packCard}
            updateCurrentPlayerCollection={this.updateCurrentPlayerCollection}
            currentDeckCards={this.state.currentDeckCards}
            gold={this.state.gold}
            buyPack={this.buyPack}
          />
        </div>
      )
    } else if (this.state.render === 'collection') {
      return(
        <div>
          <Header renderStuff={this.renderStuff} />
          <div className="container-with-decklist">
            <Collection
              noDupesCurrentPlayerCollection={this.state.noDupesCurrentPlayerCollection}
              getCardInfo={this.getCardInfo}
              renderHome={this.renderHome}
              currentDeckCards={this.state.currentDeckCards}
              addToDeck={this.addToDeck}
            />
            <SideBar
            currentDeckCards={this.state.currentDeckCards}
            removeFromDeck={this.removeFromDeck}
            />
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
            <DuelistsList
              currentPlayer={this.state.currentPlayer}
              allPlayers={this.state.allPlayers}
              getDuelist={this.getDuelist}
              renderDuel={this.renderDuel}
            />
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
            duelLocation={this.state.duelLocation}
          />
        </div>
      )
    }
  }
}
