import React from "react";

const Card = (props) => {
  return(
    <div className="card" onClick={event => props.getCardInfo(props.card)}>
      <div>Name: {props.card.name}, {props.card.title}</div>
      <br/>

      <img src={'image/' + props.card.image.full}/>
      <br/>

      <div>Difficulty: {props.card.info.difficulty}</div>

      <div>Type: {props.card.tags[0]}</div>

      <div>Attack: {props.card.info.attack}</div>

      <div>Magic: {props.card.info.magic}</div>

      <div>Defense: {props.card.info.defense}</div>
    </div>
  )

}

export default Card;
