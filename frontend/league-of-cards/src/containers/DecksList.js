import React from "react";
import Deck from "../components/Deck.js"
let deckKey = 0
let deckId = 1

export default class CardStore extends React.Component {
  state = {
    decks: [],
    deckName: ''
  }

  componentDidMount() {
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

      this.setState({
        decks: [...this.state.decks, {id: deckId++, name: this.state.deckName, player_id: this.props.currentPlayer.id, cards: []}]
      })
  }

  deleteDeck = (deck) => {
    const newDecks = this.state.decks
    const removeIndex = this.state.decks.findIndex(
      deckObj => deckObj.name === deck.name
    )
    fetch(`http://localhost:3000/api/v1/decks/${deck.id}`, {
      method: 'DELETE'})

      newDecks.splice(removeIndex, 1)
      this.setState({
        decks: newDecks
      })
  }

  render() {
    return(
      <div>
        <div>
          <form onSubmit={this.createDeck}>
            Deck Name: <input type="text" value={this.state.deckName} onChange={event => this.handleDeckName(event)}/>
          </form>
        </div>
        <div>
          {this.generateDecks()}
        </div>
        <button onClick={this.props.renderCollection}>Card Collection</button>
      </div>
    )
  }

}
