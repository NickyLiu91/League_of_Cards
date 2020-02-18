import React from "react";
import {connect} from 'react-redux';
import {compose} from 'redux';
import {Route, Link, withRouter} from 'react-router-dom';
import Deck from "../components/Deck.js"
let deckKey = 0

class DecksList extends React.Component {
  state = {
    deckName: ''
  }

  handleDeckName = (event) => {
    this.setState({
      deckName: event.target.value
    })
  }

  generateDecks = () => {
    return this.props.decksList.map(
      deckObj => <Deck key={deckKey++} deck={deckObj} getDeck={this.getDeck} deleteDeck={this.deleteDeck}/>
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
            player_id: this.props.account.id,
            name: this.state.deckName
          }
      )})
      .then(res => res.json())
      .then(response => {
        console.log(response)
        this.props.changeDecksList([...this.props.decksList, response])
        // this.getAllDecks()
      })
  }

  deleteDeck = (deck) => {
    if (this.props.deck.id !== deck.id) {
      fetch(`http://localhost:3000/api/v1/decks/${deck.id}`, {
        method: 'DELETE'}
      ).then(res => {
        let newArray = this.props.decksList.filter(obj => obj.id != deck.id)
        this.props.changeDecksList(newArray)
      })
    }
  }

  getDeck = (deck) => {
    let desiredDeck
    console.log(deck)
    fetch(`http://localhost:3000/api/v1/decks/${deck.id}`)
    .then(res => res.json())
    .then(res => desiredDeck = res)
    .then(res => {
      this.props.changeDeck(desiredDeck)
      this.props.changeDeckCards(desiredDeck.cards)
      this.props.history.push('/')
    })
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
    deckCards: state.deckCardsChanger.deckCards,
    decksList: state.decksListChanger.decksList
  }
}

const mapDispatchToProps = dispatch => {
  return {
    changeAccount: (event) => dispatch({type: 'CHANGE_ACCOUNT', newAccount: event}),
    changeDeck: (event) => dispatch({type: 'CHANGE_DECK', newDeck: event}),
    changeDeckCards: (event) => dispatch({type: 'CHANGE_DECKCARDS', newDeckCards: event}),
    changeDecksList: (event) => dispatch({type: 'CHANGE_DECKSLIST', newDecksList: event})
  }
}

export default compose(
  withRouter,
  connect(mapStateToProps,
  mapDispatchToProps)
)(DecksList);
