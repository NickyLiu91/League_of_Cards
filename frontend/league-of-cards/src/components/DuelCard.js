import React from "react";

const DuelCard = (props) => {
  if (Object.keys(props.duelCard).length === 0) {
    return(
      <div className="duel-card" >
      </div>
    )
  } else if(props.duelCard.position != undefined){
    return(
      <div className={`duel-card ${props.duelCard.position}`} onClick={event => props.clickAction(props.duelCard)}>
        <div>Name: {props.duelCard.name}, {props.duelCard.title}</div>
        <img className="duel-card-image" src={'image/' + props.duelCard.image}/>
        <br/>
        <div>Role: {props.duelCard.role}</div>
        <div>Attack: {props.duelCard.attack}</div>
        <div>Magic: {props.duelCard.magic}</div>
        <div>Defense: {props.duelCard.defense}</div>
      </div>
    )
  } else {
    return(
      <div className="duel-card" onClick={event => props.clickAction(props.duelCard)}>
        <div>Name: {props.duelCard.name}, {props.duelCard.title}</div>
        <img className="duel-card-image" src={'image/' + props.duelCard.image}/>
        <br/>
        <div>Role: {props.duelCard.role}</div>
        <div>Attack: {props.duelCard.attack}</div>
        <div>Magic: {props.duelCard.magic}</div>
        <div>Defense: {props.duelCard.defense}</div>
      </div>
    )
  }

}

export default DuelCard;
