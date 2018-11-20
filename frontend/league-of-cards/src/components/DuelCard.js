import React from "react";

const DuelCard = (props) => {
  return(
    <div className="duel-card">
      <div>Name: {props.duelCard.name}, {props.duelCard.title}</div>
      <img className="duel-card-image" src={'image/' + props.duelCard.image.full}/>
      <br/>
      <div>Type: {props.duelCard.tags[0]}</div>
      <div>Attack: {props.duelCard.info.attack}</div>
      <div>Magic: {props.duelCard.info.magic}</div>
      <div>Defense: {props.duelCard.info.defense}</div>
    </div>
  )

}

export default DuelCard;
