import React from "react";

const GraveyardCard = (props) => {
  // if (props.card.cardtype === 'Champion') {
    return(
      <li className="graveyard-card">
        <div>{props.card.name}</div>
      </li>
    )
  // }
  //   else {
  //   return(
  //     <li className="graveyard-card">
  //       <div>{props.card.name}</div>
  //     </li>
  //   )
  // }

}

export default GraveyardCard;
