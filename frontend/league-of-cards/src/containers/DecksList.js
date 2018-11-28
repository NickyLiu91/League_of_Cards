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
    fetch('http://localhost:3000/api/v1/decks')
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
      deckObj => <Deck key={deckKey++} deck={deckObj} getDeck={this.props.getDeck}/>
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
        decks: [...this.state.decks, {id: deckId++, name: this.state.deckName, player_id: this.props.currentPlayer.id}]
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
        <button onClick={this.props.renderHome}>Home</button>
      </div>
    )
  }

}
