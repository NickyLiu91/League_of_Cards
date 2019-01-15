import React from "react";

const GraveyardCard = (props) => {
  if (props.card.cardtype === 'Champion') {
    return(
      <li className="graveyard-card">
        <div>Name: {props.card.name}</div>
        <div>{props.card.attack}/{props.card.magic}/{props.card.defense}</div>
      </li>
    )
  } else {
    return(
      <li className="graveyard-card">
        <div>Name: {props.card.name}</div>
        <div>{props.card.cardtype}</div>
      </li>
    )
  }

}

export default GraveyardCard;
