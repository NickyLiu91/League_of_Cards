import React from "react";

const SideBarCard = (props) => {
  if (props.card.cardtype === "Champion") {
    return(
      <li className="sidebar-card" onClick={event => props.removeFromDeck(props.card)}>
        <div>Name: {props.card.name}</div>
        <div>{props.card.cardtype}/{props.card.attack}/{props.card.magic}/{props.card.defense}</div>
      </li>
    )
  } else {
    return(
      <li className="sidebar-card" onClick={event => props.removeFromDeck(props.card)}>
        <div>Name: {props.card.name}</div>
        <div>{props.card.cardtype}</div>
      </li>
    )
  }
}

export default SideBarCard;
