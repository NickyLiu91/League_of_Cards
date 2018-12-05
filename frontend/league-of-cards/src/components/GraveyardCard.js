import React from "react";

const GraveyardCard = (props) => {

  return(
    <li className="graveyard-card">
      <div>Name: {props.graveyardCard.name}</div>
      <div>{props.graveyardCard.attack}/{props.graveyardCard.magic}/{props.graveyardCard.defense}</div>
    </li>
  )

}

export default GraveyardCard;
