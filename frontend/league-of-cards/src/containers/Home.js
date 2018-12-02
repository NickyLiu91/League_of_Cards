import React from "react";
import Collection from "./Collection.js"
import CardInfo from "../components/CardInfo.js"
import SideBar from "./SideBar.js"
import DuelField from "./DuelField.js"
import CardStore from "./CardStore.js"
import DecksList from "./DecksList.js"
import DuelistsList from "./DuelistsList.js"

export default class Home extends React.Component {
  state = {
    render: 'home',
    loggedIn: false,
    name: '',
    deckCardId: 1,
    database: [],
    collection: [],
    allPlayers: [],
    currentDeck: '',
    currentDeckCards: [],
    currentPlayer: '',
    currentPlayerCollection: [],
    selectedCard: '',
    player2: ''
  }

  log = () => {
    this.setState({
      loggedIn: !this.state.loggedIn
    })
  }

  handleName = (event) => {
    this.setState({
      name: event.target.value
    })
  }

  generateDeckCard = (player, number) => {

    let randomCard = this.state.collection[Math.floor(Math.random() * this.state.collection.length)]

    randomCard.enemydeckCardId = number

    player.decks[0].cards = [...player.decks[0].cards, randomCard]

    fetch(`http://localhost:3000/api/v1/deckcards`, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      body: JSON.stringify(
          {
            deck_id: player.id,
            card_id: randomCard.key
          }
    )})

  }

  generateDeck = (playerObj) => {
    let i = 1
    while (i < 11) {
      this.generateDeckCard(playerObj, i)
      i ++
    }
  }

  getAllPlayers = () => {
    let newPlayersArray = []
    fetch("http://localhost:3000/api/v1/players")
    .then(response => response.json())
    .then(json => this.setState({
      allPlayers: json
    }))
    .then(res => this.state.allPlayers.map(
      playerObj => {
        if (playerObj.computer === true) {
          playerObj.decks[0].cards = []
          this.generateDeck(playerObj)
        }
      }
    ))
  }

  getPlayer = (event) => {
    event.preventDefault()
    this.setState({
      currentPlayer: this.state.allPlayers.find(playerObj => playerObj.name === this.state.name)
    }, () => {
      this.setState({
        currentPlayerCollection: this.state.currentPlayer.cards
      })
    })
    this.log()
  }

  fetchCards = () => {
    fetch("http://ddragon.leagueoflegends.com/cdn/6.24.1/data/en_US/champion.json")
    .then(response => response.json())
    .then(json => this.setState({
      database: Object.values(json.data)
    }, () => console.log(this.state)))
    .then(res => this.generateCards())
  }

  generateCards = () => {
    let collectionId = 1
    let cardCollection = []

    this.state.database.map(
      champion => {
        cardCollection = [...cardCollection, {
          id: collectionId,
          key: champion.key,
          name: champion.name,
          title: champion.title,
          role: champion.tags[0],
          rarity: champion.info.difficulty,
          attack: champion.info.attack,
          magic: champion.info.magic,
          defense: champion.info.defense,
          description: champion.blurb,
          image: champion.image.full,
          quantity: 0
        }]
        collectionId ++
      }
    )

    cardCollection.map(
      cardObj => {fetch(`http://localhost:3000/api/v1/cards`, {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
        body: JSON.stringify(
            {
              key: cardObj.key,
              name: cardObj.name,
              title: cardObj.title,
              role: cardObj.role,
              rarity: cardObj.rarity,
              attack: cardObj.attack,
              magic: cardObj.magic,
              defense: cardObj.defense,
              description: cardObj.description,
              image: cardObj.image,
              quantity: cardObj.quantity,
              players: [this.state.currentPlayer]
            }
          )
        })
      })

      this.setState({
        collection: cardCollection
      }, () => {
        this.getAllPlayers()
      })
  }

  printState = () => {
    console.log(this.state)
  }

  getDeck = (deck) => {
    console.log(deck)
    this.setState({
      currentDeck: deck,
      currentDeckCards: deck.cards
    }, () => this.renderHome())
  }

  addToDeck = (card) => {
    if (this.state.currentDeckCards.filter(
      cardObj => cardObj.name === card.name
    ).length < 3 && this.state.currentDeckCards.length < 40 && card.quantity > 0 ) {
      fetch(`http://localhost:3000/api/v1/deckcards`, {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
        body: JSON.stringify(
            {
              deck_id: this.state.currentDeck.id,
              card_id: card.id
            }
      )})
      card.quantity --
        let newCard = Object.assign({}, card, {deckId: this.state.deckCardId})
        this.setState({
          currentDeckCards: [...this.state.currentDeckCards, newCard],
          deckCardId: this.state.deckCardId + 1
        })
    }
  }

  removeFromDeck = (card) => {
    console.log(card)
    let newDeckCards = this.state.currentDeckCards
    let removeIndex = newDeckCards.findIndex(
      cardObj => cardObj.deckId === card.deckId
    )

    newDeckCards.splice(removeIndex, 1)
    this.setState({
      currentDeckCards: newDeckCards
    })

    fetch(`http://localhost:3000/api/v1/deckcards/${card.deckId}`, {
      method: 'DELETE'}
    )
  }

  componentDidMount() {
    this.fetchCards()
  }

  renderCollection = () => {
    this.setState({
      render: 'collection'
    })
  }

  getCardInfo = (card) => {
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

  renderHome = () => {
    this.setState({
      render: 'home'
    })
  }

  renderCardStore = () => {
    this.setState({
      render: 'store'
    })
  }

  renderDuel = () => {
    this.setState({
      render: 'duel'
    })
  }

  renderLose = () => {
    this.setState({
      render: 'lose'
    })
  }

  renderCreate = () => {
    this.setState({
      render: 'create'
    })
  }

  renderDecks = () => {
    this.setState({
      render: 'decksList'
    })
  }

  renderDuelists = () => {
    this.setState({
      render: 'duelistsList'
    })
  }

  getDuelist = (player) => {
    this.setState({
      player2: player
    })
    this.renderDuel()
  }

  createPlayerCollection = () => {

      this.state.collection.map(
        cardObj => fetch(`http://localhost:3000/api/v1/collections`, {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
          body: JSON.stringify(
              {
                player_id: this.state.allPlayers.find(playerObj => playerObj.name === this.state.name).id,
                card_id: cardObj.id
              }
          )})
      )
      let createdPlayer = this.state.allPlayers.find(
        playerObj => playerObj.name === this.state.name
      )

      createdPlayer.cards = this.state.collection
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
            image: 'image/TwistedFatePortrait.png',
            computer: false
          }
    )}).then(res => this.setState({
        allPlayers: [...this.state.allPlayers, {id: this.state.allPlayers.length + 1, name: this.state.name, decks: [], cards: [], collection: [], image: 'image/TwistedFatePortrait.png', computer: false}],
        render: 'home'
    }, () => {
        this.createPlayerCollection()
    }
  ))
  }

  render() {
    if (this.state.render === 'home' && this.state.loggedIn === false) {
      return(
        <div>
        <h1>FORBIDDEN MEMORIES</h1>
        <button onClick={this.printState}>STATE</button>
          <form onSubmit={this.getPlayer}>
            Log-In: <input type="text" value={this.state.name} onChange={event => this.handleName(event)}/>
          </form>
          <br/>
          <button onClick={this.renderCreate}>Create Account</button>
        </div>
      )
    } else if (this.state.render === 'home' && this.state.loggedIn === true){
      return(
        <div>
        <h1>FORBIDDEN MEMORIES</h1>
        <button onClick={this.printState}>STAT E</button>
          <h1>Welcome, {this.state.currentPlayer.name}!</h1>
          <br/>
          <button onClick={this.renderCollection}>Collection</button>
          <br/>
          <button onClick={this.renderCardStore}>Card Store</button>
          <br/>
          <button onClick={this.renderDecks}>Decks</button>
          <br/>
          <button onClick={this.renderDuelists}>DUEL!!!</button>
          <br/>
          <button onClick={this.log}>Log-Out</button>

        </div>
      )
    } else if (this.state.render === 'create' ){
      return(
        <div>
        <h1>FORBIDDEN MEMORIES</h1>
          <form onSubmit={this.createPlayer}>
            Account Name: <input type="text" value={this.state.name} onChange={event => this.handleName(event)}/>
          </form>
        </div>
      )
    } else if (this.state.render === 'decksList') {
      return(
        <div>
          <DecksList
            currentPlayer={this.state.currentPlayer}
            renderCollection={this.renderCollection}
            renderHome={this.renderHome}
            getDeck={this.getDeck}
          />
        </div>
      )
    } else if (this.state.render === 'store') {
      return(
        <div>
          <CardStore
            currentPlayerCollection={this.state.currentPlayerCollection}
            addCardToCollection={this.addCardToCollection}
            currentPlayer={this.state.currentPlayer}
            renderCollection={this.renderCollection}
            packCard={this.state.packCard}
          />
        </div>
      )
    } else if (this.state.render === 'lose') {
      return(
        <div>
          <h1>YOU HAVE RUN OUT OF STAMINA</h1>
          <h1>YOU ARE NO LONGER ABLE TO FIGHT</h1>
          <h1>YOU CAN ONLY WATCH ON AS YOUR ENEMY COMES TO DELIVER THE FINISHING BLOW</h1>
        </div>
      )
    } else if (this.state.render === 'collection') {
      return(
        <div className="big-container">
          <div className="container-with-decklist">
            <Collection
              currentPlayerCollection={this.state.currentPlayerCollection}
              getCardInfo={this.getCardInfo}
              renderHome={this.renderHome}
            />
            <SideBar
            currentDeckCards={this.state.currentDeckCards}
            removeFromDeck={this.removeFromDeck}
            />
          </div>
          <button onClick={this.renderHome}>Home</button>
        </div>
      )
    } else if (this.state.render === 'cardinfo') {
      return(
        <div className="big-container">
          <div className="container-with-decklist">
            <CardInfo selectedCard={this.state.selectedCard}
              addToDeck={this.addToDeck}
              renderCollection={this.renderCollection}
              renderHome={this.renderHome}
            />
            <SideBar currentDeckCards={this.state.currentDeckCards}
            removeFromDeck={this.removeFromDeck}/>
          </div>
          <button onClick={this.renderCollection}>Collection</button>
          <button onClick={this.renderHome}>Home</button>
        </div>
      )
    } else if (this.state.render === 'duelistsList') {
      return(
        <div className="duelist-list-container">
          <DuelistsList
            allPlayers={this.state.allPlayers}
            getDuelist={this.getDuelist}
            renderDuel={this.renderDuel}
          />
        </div>
      )
    } else if (this.state.render === 'duel') {
      return(
        <div>
          <DuelField
            player1={this.state.currentPlayer}
            player2={this.state.player2}
            renderLose={this.renderLose}
            renderHome={this.renderHome}
          />
        </div>
      )
    }
  }
}
