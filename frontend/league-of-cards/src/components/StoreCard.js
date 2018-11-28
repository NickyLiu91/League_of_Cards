import React from "react";

const StoreCard = (props) => {
    return(
      <div className="card" onClick={event => props.getCardInfo(props.card)}>
        <div>Name: {props.card.name}, {props.card.title}</div>
        <br/>

        <img src={'image/' + props.card.image}/>
        <br/>

        <div>Rarity: {props.card.rarity}</div>

        <div>Type: {props.card.role}</div>

        <div>Attack: {props.card.attack}</div>

        <div>Magic: {props.card.magic}</div>

        <div>Defense: {props.card.defense}</div>

        <div id='copies'>Copies: {props.card.quantity}</div>
      </div>
    )
}

export default StoreCard;
