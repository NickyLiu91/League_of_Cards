import React from "react";
import {connect} from 'react-redux';
import SideBarCard from "../components/SideBarCard.js"

class SideBar extends React.Component {

  removeFromDeck = (card) => {
    let deckCardToDelete

    fetch(`http://localhost:3000/api/v1/deckcards`)
    .then(res => res.json())
    .then(json => deckCardToDelete = json.filter(
      obj => obj.card.id === card.id && obj.deck.id === this.props.deck.id
    )[0])
    .then(response => {
      fetch(`http://localhost:3000/api/v1/deckcards/${deckCardToDelete.id}`, {
        method: 'DELETE'
      })
    })
    this.props.changeDeckCards(this.props.deckCards.filter(cardObj => cardObj.id !== card.id))
  }

  generateCards = () => {

    let sortedDeck = this.props.deckCards.sort( (a, b) => {
      if (a.cardtype === 'Champion' && b.cardtype === 'Ability') {
        return -1
      } else if (a.cardtype === 'Champion' && b.cardtype === 'Item') {
        return -1
      } else if (a.cardtype === 'Ability' && b.cardtype === 'Item') {
        return -1
      } else if (a.cardtype === b.cardtype) {
        if (a.name > b.name) {
          return 1
        } else {
          return -1
        }
      } else {
        return 1
      }
      return 0
    })

    return sortedDeck.map(
      cardObj => <SideBarCard key={cardObj.id} card={cardObj}
      removeFromDeck={this.removeFromDeck}/>
    )
  }

  render() {
    return(
      <ul id="sidebar">
      <div id="sidebar-title">Decklist</div>
      {this.generateCards()}
      </ul>
    )
  }

}

const mapStateToProps = state => {
  return {
    currentPlayerCards: state.currentPlayerCardsChanger.currentPlayerCards,
    noDupesCurrentPlayerCards: state.noDupesCurrentPlayerCardsChanger.noDupesCurrentPlayerCards,
    deck: state.deckChanger.deck,
    deckCards: state.deckCardsChanger.deckCards,
    card: state.cardChanger.card
  }
}

const mapDispatchToProps = dispatch => {
  return {
    changeCurrentPlayerCards: (event) => dispatch({type: 'CHANGE_CURRENTPLAYERCARDS', newCurrentPlayerCards: event}),
    changeNoDupesCurrentPlayerCards: (event) => dispatch({type: 'CHANGE_NODUPESCURRENTPLAYERCARDS', newNoDupesCurrentPlayerCards: event}),
    changeDeck: (event) => dispatch({type: 'CHANGE_DECK', newDeck: event}),
    changeDeckCards: (event) => dispatch({type: 'CHANGE_DECKCARDS', newDeckCards: event}),
    changeCard: (event) => dispatch({type: 'CHANGE_CARD', newCard: event})
  }
}

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(SideBar);
