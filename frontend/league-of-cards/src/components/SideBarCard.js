import React from "react";

const SideBarCard = (props) => {

  return(
    <li className="side-bar-card" onClick={event => props.removeFromDeck(props.sideBarCard)}>
      <div>Name: {props.sideBarCard.name}</div>
      <div>{props.sideBarCard.info.attack}/{props.sideBarCard.info.magic}/{props.sideBarCard.info.defense}</div>
    </li>
  )

}

export default SideBarCard;
