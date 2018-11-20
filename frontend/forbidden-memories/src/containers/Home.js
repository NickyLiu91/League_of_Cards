import React from "react";
import CardList from "./CardList.js"
import CardInfo from "../components/CardInfo.js"
import SideBar from "./SideBar.js"
import Duel from "./Duel.js"

export default class Home extends React.Component {
  state = {
    render: 'home',
    cardlist: [],
    deck: [],
    selectedCard: '',
    player1Monsters: [],
    player1Spells: [],
    player1Hand: [],
    player2Monsters: [],
    player2Spells: [],
    player2Hand: [],
    player2Deck: [],
    player: 'player1'
  }

  fetchCards = () => {
    fetch("http://ddragon.leagueoflegends.com/cdn/6.24.1/data/en_US/champion.json")
    .then(response => response.json())
    .then(json => this.setState({
      cardlist: Object.values(json.data)
    }))
  }

  addToDeck = (card) => {
    if (this.state.deck.filter(
      cardObj => cardObj.name === card.name
    ).length < 1 && this.state.deck.length < 40) {
      this.setState({
        deck: [...this.state.deck, card]
      })
      console.log(this.state.deck)
    }
  }

  removeFromDeck = (card) => {
    const newDeck = this.state.deck
    const removeIndex = this.state.deck.findIndex(
      cardObj => cardObj.name === card.name
    )
    newDeck.splice(removeIndex, 1)
    this.setState({
      deck: newDeck
    })
    console.log(this.state.deck)
  }

  componentDidMount() {
    this.fetchCards()
  }

  renderCardList = () => {
    this.setState({
      render: 'cardlist'
    })
    console.log(this.state.deck)
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

  renderHome = () => {
    this.setState({
      render: 'home'
    })
  }

  renderDuel = () => {
    this.setState({
      render: 'duel'
    })
  }

  drawCard = () => {
    const newDeck = this.state.deck
    const newCard = newDeck.pop()
    if (this.state.deck.length > 0) {
      this.setState({
        deck: newDeck,
        player1Hand: [...this.state.player1Hand, newCard]
      })
    } else {
      this.renderLose()
    }

  }

  renderLose = () => {
    this.setState({
      render: 'lose'
    })
  }

  render() {
    if (this.state.render === 'home') {
      return(
        <div>
        <h1>FORBIDDEN MEMORIES</h1>
          <button onClick={this.renderCardList}>CardList</button>
          <br/>
          <button onClick={this.renderDuel}>DUEL!!!</button>
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
    } else if (this.state.render === 'cardlist') {
      return(
        <div className="card-list-container">
          <CardList
            cardlist={this.state.cardlist}
            getCardInfo={this.getCardInfo}
            renderHome={this.renderHome}
          />
          <SideBar
          deck={this.state.deck}
          removeFromDeck={this.removeFromDeck}
          />
        </div>
      )
    } else if (this.state.render === 'cardinfo') {
      return(
        <div className="card-list-container">
          <CardInfo selectedCard={this.state.selectedCard}
            addToDeck={this.addToDeck}
            renderCardList={this.renderCardList}
          />
          <SideBar deck={this.state.deck}
          removeFromDeck={this.removeFromDeck}/>
        </div>
      )
    } else if (this.state.render === 'duel') {
      return(
        <div>
          <Duel
            deck={this.state.deck}
            player1Hand={this.state.player1Hand}
            player1Monsters={this.state.player1Monsters}
            player1Spells={this.state.player1Spells}
            player2Hand={this.state.player2Hand}
            player2Monsters={this.state.player2Monsters}
            player2Spells={this.state.player2Spells}
            player2Deck={this.state.player2Deck}
            drawCard={this.drawCard}
          />
        </div>
      )
    }
  }
}
