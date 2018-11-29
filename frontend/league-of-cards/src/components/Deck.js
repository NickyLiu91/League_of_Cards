import React from "react";

const Deck = (props) => {
    return(
      <div className="deck">
        <div>Name: {props.deck.name}
        <button onClick={event => props.getDeck(props.deck)}>Select</button>
        <button onClick={event => props.deleteDeck(props.deck)}>Delete</button>
        </div>

      </div>
    )
}

export default Deck;
