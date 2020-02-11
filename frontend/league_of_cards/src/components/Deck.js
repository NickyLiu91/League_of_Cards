import React from "react";

const Deck = (props) => {
  console.log(props.deck.name)
    return(
      <div className="card deck">
        <div>Name: {props.deck.name}</div>
				<div className="circle"></div>
        <div className="deck-button-div">
          <button id="select-button" onClick={event => props.getDeck(props.deck)}>Select</button>
          <button id="delete-button" onClick={event => props.deleteDeck(props.deck)}>Delete</button>
        </div>
      </div>
    )
}

export default Deck;
