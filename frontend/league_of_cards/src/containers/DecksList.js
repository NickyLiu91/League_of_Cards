import React from "react";
import Deck from "../components/Deck.js"
import {connect} from 'react-redux';
let deckKey = 0

class DecksList extends React.Component {
  state = {
    // decks: this.props.decksList,
    deckName: ''
  }

  // componentDidMount() {
  //   this.getAllDecks()
  // }

  // getAllDecks = () => {
  //   fetch(`http://localhost:3000/api/v1/players/${this.props.currentPlayer.id}/decks`)
  //   .then(response => response.json())
  //   .then(json => this.props.changeDecks(json))
  // }

  handleDeckName = (event) => {
    this.setState({
      deckName: event.target.value
    })
  }

  generateDecks = () => {
    return this.props.decksList.map(
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
      .then(response => {
        this.props.changeDecksList([...this.props.decksList, response])
        // this.getAllDecks()
      })
  }

  deleteDeck = (deck) => {
    if (this.props.currentDeck.id !== deck.id) {
      fetch(`http://localhost:3000/api/v1/decks/${deck.id}`, {
        method: 'DELETE'}
      ).then(res => {
        let newArray = this.props.decksList.filter(obj => obj.id != deck.id)
        this.props.changeDecksList(newArray)
      })
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

const mapStateToProps = state => {
  return {
    account: state.accountChanger.account,
    deck: state.deckChanger.deck,
    decksList: state.decksListChanger.decksList
  }
}

const mapDispatchToProps = dispatch => {
  return {
    changeAccount: (event) => dispatch({type: 'CHANGE_ACCOUNT', newAccount: event}),
    changeDeck: (event) => dispatch({type: 'CHANGE_DECK', newDeck: event}),
    changeDecksList: (event) => dispatch({type: 'CHANGE_DECKSLIST', newDecksList: event})
  }
}

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(DecksList);
