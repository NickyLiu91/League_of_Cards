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

  generateCard = (playerObj, nameVar, titleVar, roleVar, rarityVar, attackVar, magicVar, defenseVar, descriptionVar, imageVar, deck) => {
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
    .then(res => this.generateCard(playerObj, "Taric", "the Shield of Valoran", "Support", "Bronze", 400, 500, 800, "''The best weapons are beautiful.''<br><br>Taric is the Aspect of the Protector, wielding incredible power as Runeterra's guardian of life, love, and beauty. Shamed by a dereliction of duty and exiled from his homeland Demacia, Taric ascended Mount ...", "Taric.png", "Champion", deck))
    .then(res => this.generateCard(playerObj, "Taric", "the Shield of Valoran", "Support", "Bronze", 400, 500, 800, "''The best weapons are beautiful.''<br><br>Taric is the Aspect of the Protector, wielding incredible power as Runeterra's guardian of life, love, and beauty. Shamed by a dereliction of duty and exiled from his homeland Demacia, Taric ascended Mount ...", "Taric.png", "Champion", deck))
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
    .then(json => this.setState({
      allPlayers: json.slice(0, 24)
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
    console.log("???")
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
          // console.log(player)
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
            fetch(`http://localhost:3000/api/v1/players/${this.state.currentPlayer.id}/decks/${this.state.currentDeck.id}`)
            .then(res => res.json())
            .then(res => this.setState({
              currentDeckCards: res.cards
            }))
            this.generateNoDupesCurrentPlayerCollection()
          })
        })
      }})


    // if (!this.state.allPlayers.find(playerObj => playerObj.name === this.state.name
    //   && playerObj.password_digest === this.state.password)) {
    //     alert('No account with that name nad password has been found!')
    //   } else {
    //     this.setState({
    //       currentPlayer: this.state.allPlayers.find(playerObj => playerObj.name === this.state.name
    //         && playerObj.password_digest === this.state.password
    //       )
    //     }, () => {
    //       fetch(`http://localhost:3000/api/v1/players/${this.state.currentPlayer.id}`)
    //       .then(res => res.json())
    //       .then(res => {
    //         window.localStorage.setItem('jwt', res.jwt)
    //         console.log(window.localStorage)
    //         console.log(window.localStorage.length)
    //         this.setState({
    //           currentPlayer: res,
    //           currentPlayerCollection: res.cards,
    //           currentDeck: res.decks[0],
    //           loggedIn: true,
    //           gold: res.gold,
    //           defeated: res.defeated_id,
    //           dialogue: res.dialogue
    //         }, () => {
    //           fetch(`http://localhost:3000/api/v1/players/${this.state.currentPlayer.id}/decks/${this.state.currentDeck.id}`)
    //           .then(res => res.json())
    //           .then(res => this.setState({
    //             currentDeckCards: res.cards
    //           }))
    //           this.generateNoDupesCurrentPlayerCollection()
    //         }
    //       )})
    //       // fetch(`http://localhost:3000/api/v1/players/${this.state.currentPlayer.id}`, {
    //       //   method: 'POST',
    //       //   body: JSON.stringify({
    //       //     player: {
    //       //       name: this.state.name,
    //       //       password_digest: this.state.password_digest
    //       //     }
    //       //   }),
    //       //   headers:{
    //       //     'Content-Type': 'application/json'
    //       //   }
    //       // })
    //       // .then(response => {
    //       //   console.log(response)
    //       //   if (response.ok) {
    //       //     return response.json()
    //       //    } else {
    //       //        window.alert('Invalid username or password')
    //       //       // throw response
    //       //    }
    //       //  })
    //     })
      // }
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

  getDuelist = (player, location, dialogue=0) => {
    console.log(player)
    let desiredDeck
    fetch(`http://localhost:3000/api/v1/decks/${this.state.currentDeck.id}`)
    .then(res => res.json())
    .then(res => this.setState(
      {
        currentDeckCards: res.cards
      }, () => {
        fetch(`http://localhost:3000/api/v1/players/${player.id}`)
        .then(response => response.json())
        .then(json => {
          this.setState({
            player2: player,
            player2Deck: json.cards,
            duelLocation: location,
            dialogue: dialogue
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
        )}).then(res => {
            // allPlayers: [...this.state.allPlayers, {id: this.state.allPlayers.length + 1, name: this.state.name, decks: [], cards: [], collection: [], image: 'image/TwistedFatePortrait.png', computer: false, password_digest: this.state.password, defeated: 0}]
            fetch(`http://localhost:3000/api/v1/players`)
            .then(res => res.json())
            .then(json => {
              let player = json.find(obj => obj.name === this.state.name && obj.password_digest === this.state.password)
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
                .then(res => {this.generateDeck(this.state.currentPlayer)})
              })
            })
        })
      }
    })

    // if (this.state.allPlayers.find(playerObj => playerObj.name === this.state.name)) {
    //     alert('That name is already used!')
    //   } else {
    //     event.preventDefault()
    //     fetch(`http://localhost:3000/api/v1/players`, {
    //       method: 'POST',
    //       headers: {
    //         'Content-Type': 'application/json',
    //         'Accept': 'application/json',
    //       },
    //       body: JSON.stringify(
    //           {
    //             name: this.state.name,
    //             password_digest: this.state.password,
    //             image: 'image/SivirPortrait.png',
    //             computer: false,
    //             level: "1-1",
    //             gold: 100,
    //             dialogue: 0,
    //             defeated_id: 0
    //           }
    //     )}).then(res => this.setState({
    //         allPlayers: [...this.state.allPlayers, {id: this.state.allPlayers.length + 1, name: this.state.name, decks: [], cards: [], collection: [], image: 'image/TwistedFatePortrait.png', computer: false, password_digest: this.state.password, defeated: 0}]
    //     }, () => {
    //       fetch(`http://localhost:3000/api/v1/decks`, {
    //         method: 'POST',
    //         headers: {
    //           'Content-Type': 'application/json',
    //           'Accept': 'application/json',
    //         },
    //         body: JSON.stringify(
    //             {
    //               name: "Deck 1",
    //               player_id: this.state.allPlayers[this.state.allPlayers.length - 1].id
    //             }
    //       )})
    //       .then(res => {this.generateDeck(this.state.allPlayers[this.state.allPlayers.length - 1])})
    //     }
    //   ))
    // }
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
