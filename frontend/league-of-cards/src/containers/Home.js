import React from "react";
import Collection from "./Collection.js"
import CardInfo from "../components/CardInfo.js"
import SideBar from "./SideBar.js"
import DuelField from "./DuelField.js"
import CardStore from "./CardStore.js"
import DecksList from "./DecksList.js"
import DuelistsList from "./DuelistsList.js"
import Header from "../components/Header.js"

export default class Home extends React.Component {
  state = {
    render: 'home',
    loggedIn: false,
    name: '',
    deckCardId: 1,
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
    decksList: []
  }

  log = () => {
    this.setState({
      currentPlayer: '',
      currentDeck: [],
      currentPlayerCollection: [],
      currentDeckCards: [],
      loggedIn: !this.state.loggedIn
    })
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

  generateDeckCard = (player, number) => {

    let randomCard = this.state.collection[Math.floor(Math.random() * this.state.collection.length)]

    randomCard.enemydeckCardId = number

    if (this.state.currentDeckCards.filter(
      cardObj => cardObj.name === randomCard.name
    ).length < 1) {
      // player.decks[0].cards = [...player.decks[0].cards, randomCard]

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

  }

  generateDeck = (playerObj) => {
    let deck
    fetch(`http://localhost:3000/api/v1/players/${playerObj.id}/decks/${playerObj.id}`)
    .then(res => res.json())
    .then(json => {deck = json})
    .then(res => {
      if (deck.cards.length === 0) {
        let i = 1
        for(i = 0; i < 30; i++) {
          this.generateDeckCard(playerObj, i)
        }
      }
    })
  }

  getAllPlayers = () => {
    let newPlayersArray = []
    fetch("http://localhost:3000/api/v1/players")
    .then(response => response.json())
    .then(json => {
      json.map(playerObj => {
        let newPlayerObj = playerObj
        newPlayerObj.decks[0].cards = []
          newPlayersArray = [...newPlayersArray, newPlayerObj]
        }
      )
    })
    .then(res => this.setState({
      allPlayers: newPlayersArray
    }, () => newPlayersArray.map(
      playerObj => {
        if (playerObj.computer === true) {
          playerObj.decks[0].cards = []
          this.generateDeck(playerObj)
        }
      }
    )))
    .then(res => {
      fetch("http://localhost:3000/api/v1/decks")
      .then(res => res.json())
      .then(json => this.setState({
        decksList: json
      }))
    })
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
      .then(res => this.setState({
        currentPlayer: res,
        currentPlayerCollection: res.cards,
        currentDeck: res.decks[0],
        loggedIn: true
      }, () => {
        this.noDupesCurrentPlayerCollection()
      }))
    })
  }

  noDupesCurrentPlayerCollection = () => {
    let newCollection = this.state.collection
    this.state.currentPlayerCollection.forEach((card) => {
        newCollection.filter(collectionCard => collectionCard.name === card.name)[0].quantity ++
    })
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

  addToDeck = (card) => {
    let cardToAdd

    fetch("http://localhost:3000/api/v1/cards")
    .then(res => res.json())
    .then(res => cardToAdd = res.find(
      cardObj => cardObj.name === card.name
    ))
    .then(res => {
      if (this.state.currentDeckCards.filter(
        cardObj => cardObj.name === card.name
      ).length < 1 && this.state.currentDeckCards.length < 40 && card.quantity > 0 ) {
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
        // card.quantity --
          let newCard = card
          newCard.deckId = this.state.deckCardId
          console.log(newCard)
          this.setState({
            currentDeckCards: [...this.state.currentDeckCards, newCard],
            deckCardId: this.state.deckCardId + 1,
            render: 'collection'
          })
      }
    })

  }

  removeFromDeck = (card) => {
    // card.quantity ++
    let newDeckCards = this.state.currentDeckCards
    let objectToDelete
    let removeIndex = newDeckCards.findIndex(
      cardObj => cardObj === card.name
    )

    newDeckCards.splice(removeIndex, 1)
    this.setState({
      currentDeckCards: newDeckCards
    })

    fetch(`http://localhost:3000/api/v1/deckcards`)
    .then(res => res.json())
    .then(res => objectToDelete = res.find(
      cardObj => cardObj.card.name === card.name && cardObj.deck.id === this.state.currentDeck.id
    ))
    .then(res => {
      fetch(`http://localhost:3000/api/v1/deckcards/${objectToDelete.id}`, {
        method: 'DELETE'
      })
    })
  }

  componentDidMount() {
    this.fetchCards()
    this.getAllPlayers()
  }

  renderStuff = (event) => {
    console.log(event.target.className)
    this.setState({
      render: event.target.className
    })
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

  getDuelist = (player) => {
    this.setState({
      player2Deck: this.state.decksList.find(
        deckObj => deckObj.player.name === player.name
      ).cards
    }, () => {
      this.setState({
        player2: player
      }, () => this.renderDuel())
    })
  }

  renderDuel = () => {
    this.setState({
      render: 'duel'
    })
  }

  // createPlayerCollection = () => {
  //
  //     this.state.collection.map(
  //       cardObj => fetch(`http://localhost:3000/api/v1/collections`, {
  //         method: 'POST',
  //         headers: {
  //           'Content-Type': 'application/json',
  //           'Accept': 'application/json',
  //         },
  //         body: JSON.stringify(
  //             {
  //               player_id: this.state.allPlayers.find(playerObj => playerObj.name === this.state.name).id,
  //               card_id: cardObj.id
  //             }
  //         )})
  //     )
  //     let createdPlayer = this.state.allPlayers.find(
  //       playerObj => playerObj.name === this.state.name
  //     )
  //
  //     createdPlayer.cards = this.state.collection
  // }

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
            image: 'image/TwistedFatePortrait.png',
            computer: false,
          }
    )}).then(res => this.setState({
        allPlayers: [...this.state.allPlayers, {id: this.state.allPlayers.length + 1, name: this.state.name, decks: [], cards: [], collection: [], image: 'image/TwistedFatePortrait.png', computer: false, password_digest: this.state.password}],
        render: 'home'
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
    }
  ))
  }

  updateCurrentPlayerCollection = () => {
    fetch(`http://localhost:3000/api/v1/players/${this.state.currentPlayer.id}/cards`)
    .then(response => response.json())
    .then(json => this.setState({
      currentPlayerCollection: json
    }))
    console.log(this.state.currentPlayerCollection)
  }

  updateNoDupesCurrentPlayerCollection = (card) => {
    this.state.noDupesCurrentPlayerCollection.filter(collectionCard => collectionCard.name === card.name)[0].quantity ++
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
              <button className="duelistsList" onClick={event => {this.renderStuff(event)}}>DUEL!!!</button>
              <br/>
              <br/>
              <button onClick={this.log}>Log-Out</button>
          </div>
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
            updateNoDupesCurrentPlayerCollection={this.updateNoDupesCurrentPlayerCollection}
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
          <Header renderStuff={this.renderStuff} />
          <div className="duelist-list-container">
            <DuelistsList
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
            renderWin={this.renderWin}
          />
        </div>
      )
    }
  }
}
