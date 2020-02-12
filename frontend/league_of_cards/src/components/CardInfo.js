import React from "react";
import {connect} from 'react-redux';

const CardInfo = (props) => {
  console.log(props)
  if (props.card.cardtype === "Champion") {
    return(
      <div className={'card-info' + ' ' + 'card-info' + '-' + props.card.rarity} >
        <div>Name: {props.card.name}, {props.card.title}</div>
        <br/>
        <br/>
        <img src={'image/' + props.card.image}/>
        <br/>
        <br/>
        <div>Type: {props.card.cardtype}</div>
        <br/>
        <br/>
        <div>Rarity: {props.card.rarity}</div>
        <br/>
        <br/>
        <div>Role: {props.card.role}</div>
        <br/>
        <br/>
        <div>Attack: {props.card.attack}</div>
        <br/>
        <br/>
        <div>Magic: {props.card.magic}</div>
        <br/>
        <br/>
        <div>Defense: {props.card.defense}</div>
        <br/>
        <br/>
        <div className="description">Description: {props.card.description}</div>
        <br/>
        <button className="add-button" onClick={event => props.addToDeck(props.card)}>Add To Deck</button>
      </div>
    )
  } else {
    return(
      <div className={'card-info' + ' ' + 'card-info' + '-' + props.card.rarity} >
        <div>Name: {props.card.name}</div>
        <br/>
        <br/>
        <img src={'image/' + props.card.image}/>
        <br/>
        <br/>
        <div>Type: {props.card.cardtype}</div>
        <br/>
        <br/>
        <div>Rarity: {props.card.rarity}</div>
        <br/>
        <br/>
        <div>Effect: {props.card.description}</div>
        <br/>
        <button className="add-button" onClick={event => props.addToDeck(props.card)}>Add To Deck</button>
      </div>
    )
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
