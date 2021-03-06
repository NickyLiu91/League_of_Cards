import React from "react";

const DuelCard = (props) => {
  if (props.location === "computerHand" ) {
    return(
      <div className="duel-card" >

      </div>
    )
  } else if (Object.keys(props.duelCard).length === 0) {
    return(
      <div className="duel-card" >
      </div>
    )
  } else if (props.duelCard.position != ''){
    return(
      <div className={`duel-card ${props.duelCard.position} duel-card-${props.duelCard.rarity}`} onClick={event => props.clickAction(props.duelCard)}>
        <div>Name: {props.duelCard.name}, {props.duelCard.title}</div>
        <img className="duel-card-image" src={'image/' + props.duelCard.image}/>
        <br/>
        <div>Role: {props.duelCard.role}</div>
        <div>Attack: {props.duelCard.attack}</div>
        <div>Magic: {props.duelCard.magic}</div>
        <div>Defense: {props.duelCard.defense}</div>
      </div>
    )
  } else if (props.duelCard.cardtype === 'Champion'){
    return(
      <div className={`duel-card duel-card-${props.duelCard.rarity}`} onClick={event => props.clickAction(props.duelCard)}>
        <div>Name: {props.duelCard.name}, {props.duelCard.title}</div>
        <img className="duel-card-image" src={'image/' + props.duelCard.image}/>
        <br/>
        <div>Role: {props.duelCard.role}</div>
        <div>Attack: {props.duelCard.attack}</div>
        <div>Magic: {props.duelCard.magic}</div>
        <div>Defense: {props.duelCard.defense}</div>
      </div>
    )
  } else if (props.location === 'SpellField'){
    return(
      <div className={`duel-card duel-card-${props.duelCard.rarity}`} >
        <div>Name: {props.duelCard.name}</div>
        <img className="duel-card-image" src={'image/' + props.duelCard.image}/>
        <br/>
        <div>Effect: {props.duelCard.description}</div>

      </div>
    )
  } else {
    console.log(props.duelCard.rarity)
    return(
      <div className={`duel-card duel-card-${props.duelCard.rarity}`} onClick={event => props.clickAction(props.duelCard)}>
        <div>Name: {props.duelCard.name}</div>
        <img className="duel-card-image" src={'image/' + props.duelCard.image}/>
        <br/>
        <div>Effect: {props.duelCard.description}</div>
      </div>
    )
  }

}

export default DuelCard;
