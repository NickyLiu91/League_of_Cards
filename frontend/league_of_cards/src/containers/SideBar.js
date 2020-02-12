import React from "react";
import {connect} from 'react-redux';
import SideBarCard from "../components/SideBarCard.js"

class SideBar extends React.Component {

  removeFromDeck = (card) => {
    let deckCardToDelete

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

  generateCards = () => {

    let sortedDeck = this.props.currentDeckCards.sort( (a, b) => {
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
      removeFromDeck={this.props.removeFromDeck}/>
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
    account: state.accountChanger.account,
    name: state.nameChanger.name,
    cards: state.cardsChanger.cards,
    currentPlayerCards: state.currentPlayerCardsChanger.currentPlayerCards,
    noDupesCurrentPlayerCards: state.noDupesCurrentPlayerCardsChanger.noDupesCurrentPlayerCards,
    deck: state.deckChanger.deck,
    deckCards: state.deckCardsChanger.deckCards,
    characters: state.charactersChanger.characters,
    enemy: state.enemyChanger.enemy,
    card: state.cardChanger.card,
    decksList: state.decksListChanger.decksList,
    gold: state.goldChanger.gold,
    defeated: state.defeatedChanger.defeated,
    dialogue: state.dialogueChanger.dialogue,
    location: state.locationChanger.location,
  }
}

const mapDispatchToProps = dispatch => {
  return {
    changeAccount: (event) => dispatch({type: 'CHANGE_ACCOUNT', newAccount: event}),
    changeName: (event) => dispatch({type: 'CHANGE_NAME', newName: event}),
    changeCards: (event) => dispatch({type: 'CHANGE_CARDS', newCards: event}),
    changeCurrentPlayerCards: (event) => dispatch({type: 'CHANGE_CURRENTPLAYERCARDS', newCurrentPlayerCards: event}),
    changeNoDupesCurrentPlayerCards: (event) => dispatch({type: 'CHANGE_NODUPESCURRENTPLAYERCARDS', newNoDupesCurrentPlayerCards: event}),
    changeDeck: (event) => dispatch({type: 'CHANGE_DECK', newDeck: event}),
    changeDeckCards: (event) => dispatch({type: 'CHANGE_DECKCARDS', newDeckCards: event}),
    changeCharacters: (event) => dispatch({type: 'CHANGE_CHARACTERS', newCharacters: event}),
    changeEnemy: (event) => dispatch({type: 'CHANGE_ENEMY', newEnemy: event}),
    changeCard: (event) => dispatch({type: 'CHANGE_CARD', newCard: event}),
    changeDecksList: (event) => dispatch({type: 'CHANGE_DECKSLIST', newDecksList: event}),
    changeGold: (event) => dispatch({type: 'CHANGE_GOLD', newGold: event}),
    changeDefeated: (event) => dispatch({type: 'CHANGE_DEFEEATED', newDefeated: event}),
    changeDialogue: (event) => dispatch({type: 'CHANGE_DIALOGUE', newDialogue: event}),
    changeLocation: (event) => dispatch({type: 'CHANGE_LOCATION', newLocation: event}),
  }
}

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(SideBar);
