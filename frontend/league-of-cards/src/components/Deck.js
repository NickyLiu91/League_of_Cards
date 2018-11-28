import React from "react";

const Deck = (props) => {
    return(
      <div className="deck" onClick={event => props.getDeck(props.deck)}>
        <div>Name: {props.deck.name}</div>
      </div>
    )
}

export default Deck;
