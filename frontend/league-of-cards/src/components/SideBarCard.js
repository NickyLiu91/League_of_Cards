import React from "react";

const SideBarCard = (props) => {

  return(
    <li className="sidebar-card" onClick={event => props.removeFromDeck(props.sideBarCard)}>
      <div>Name: {props.sideBarCard.name}</div>
      <div>{props.sideBarCard.attack}/{props.sideBarCard.magic}/{props.sideBarCard.defense}</div>
    </li>
  )

}

export default SideBarCard;
