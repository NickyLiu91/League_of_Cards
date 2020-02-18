import React from "react";
import {connect} from 'react-redux';

class CardInfo extends React.Component {

  addToDeck = (card) => {
    if (this.props.deckCards.filter(
      cardObj => cardObj.name === card.name
    ).length < 3 &&
    this.props.deckCards.length < 40 &&
    card.quantity - this.props.deckCards.filter(cardObj => cardObj.name === card.name).length > 0) {

      let cardToAdd = this.props.currentPlayerCards.filter(cardObj =>
        cardObj.name === card.name && this.props.deckCards.filter(cardObj2 => cardObj2.id === cardObj.id ).length === 0
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
                deck_id: this.props.deck.id,
                card_id: cardToAdd.id
              }
        )})
        .then(res => {
          this.props.changeDeckCards([...this.props.deckCards, cardToAdd])
        })
    }
  }

  render () {
    if (this.props.card.cardtype === "Champion") {
      return(
        <div className={'card-info' + ' ' + 'card-info' + '-' + this.props.card.rarity} >
          <div>Name: {this.props.card.name}, {this.props.card.title}</div>
          <br/>
          <br/>
          <img src={'image/' + this.props.card.image}/>
          <br/>
          <br/>
          <div>Type: {this.props.card.cardtype}</div>
          <br/>
          <br/>
          <div>Rarity: {this.props.card.rarity}</div>
          <br/>
          <br/>
          <div>Role: {this.props.card.role}</div>
          <br/>
          <br/>
          <div>Attack: {this.props.card.attack}</div>
          <br/>
          <br/>
          <div>Magic: {this.props.card.magic}</div>
          <br/>
          <br/>
          <div>Defense: {this.props.card.defense}</div>
          <br/>
          <br/>
          <div className="description">Description: {this.props.card.description}</div>
          <br/>
          <button className="add-button" onClick={event => this.addToDeck(this.props.card)}>Add To Deck</button>
        </div>
      )
    } else {
      return(
        <div className={'card-info' + ' ' + 'card-info' + '-' + this.props.card.rarity} >
          <div>Name: {this.props.card.name}</div>
          <br/>
          <br/>
          <img src={'image/' + this.props.card.image}/>
          <br/>
          <br/>
          <div>Type: {this.props.card.cardtype}</div>
          <br/>
          <br/>
          <div>Rarity: {this.props.card.rarity}</div>
          <br/>
          <br/>
          <div>Effect: {this.props.card.description}</div>
          <br/>
          <button className="add-button" onClick={event => this.addToDeck(this.props.card)}>Add To Deck</button>
        </div>
      )
    }
  }
}

const mapStateToProps = state => {
  return {
    currentPlayerCards: state.currentPlayerCardsChanger.currentPlayerCards,
    deckCards: state.deckCardsChanger.deckCards,
    card: state.cardChanger.card
  }
}

const mapDispatchToProps = dispatch => {
  return {
    changeCurrentPlayerCards: (event) => dispatch({type: 'CHANGE_CURRENTPLAYERCARDS', newCurrentPlayerCards: event}),
    changeDeckCards: (event) => dispatch({type: 'CHANGE_DECKCARDS', newDeckCards: event}),
  }
}

export default connect(
  mapStateToProps,
  mapDispatchToProps,
)(CardInfo);
