import React from "react";
import Deck from "../components/Deck.js"
let deckKey = 0

export default class CardStore extends React.Component {
  state = {
    decks: [],
    deckName: ''
  }

  componentDidMount() {
    this.getAllDecks()
  }

  getAllDecks = () => {
    fetch(`http://localhost:3000/api/v1/players/${this.props.currentPlayer.id}/decks`)
    .then(response => response.json())
    .then(json => this.setState({
      decks: json
    }))
  }

  handleDeckName = (event) => {
    this.setState({
      deckName: event.target.value
    })
  }

  generateDecks = () => {
    return this.state.decks.map(
      deckObj => <Deck key={deckKey++} deck={deckObj} getDeck={this.props.getDeck} deleteDeck={this.deleteDeck}/>
    )
  }

  createDeck = (event) => {
    event.preventDefault()
    fetch(`http://localhost:3000/api/v1/decks`, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      body: JSON.stringify(
          {
            player_id: this.props.currentPlayer.id,
            name: this.state.deckName
          }
      )})
      .then(response => this.getAllDecks())
  }

  deleteDeck = (deck) => {
    if (this.props.currentDeck.id !== deck.id) {
      fetch(`http://localhost:3000/api/v1/decks/${deck.id}`, {
        method: 'DELETE'}
      ).then(response => this.getAllDecks())
    }
  }

  render() {
    return(
      <div>
        <img id="ionia" src="image/ionia.jpeg"/>
        <div id='decks-container'>
          <div id="create-deck">
            <form onSubmit={this.createDeck}>
              Deck Name: <input type="text" value={this.state.deckName} onChange={event => this.handleDeckName(event)}/>
            </form>
          </div>
          <div id="decks-list">
            {this.generateDecks()}
          </div>
        </div>
      </div>
    )
  }

}
