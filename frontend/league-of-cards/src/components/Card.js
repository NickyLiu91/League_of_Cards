import React from "react";

const Card = (props) => {
  if (props.location === "collection") {
    if (props.card.quantity === 0) {
      if (props.card.cardtype === "Champion") {
        return(
          <div className="greyed-card" onClick={event => props.getCardInfo(props.card)}>
            <div>Name: {props.card.name}, {props.card.title}</div>
            <br/>

            <img className="greyed-img" src={'image/' + props.card.image}/>
            <br/>

            <div>Type: {props.card.cardtype}</div>

            <div>Role: {props.card.role}</div>

            <div>Attack: {props.card.attack}</div>

            <div>Magic: {props.card.magic}</div>

            <div>Defense: {props.card.defense}</div>

            <div id='copies'>Copies: {props.card.quantity - props.currentDeckCards.filter(cardObj => cardObj.name === props.card.name).length}</div>
          </div>
        )
      } else {
        return(
          <div className="greyed-card" onClick={event => props.getCardInfo(props.card)}>
            <div>Name: {props.card.name}, {props.card.title}</div>
            <br/>

            <img className="greyed-img" src={'image/' + props.card.image}/>
            <br/>

            <div>Type: {props.card.cardtype}</div>

            <div>Effect: {props.card.description}</div>

            <div id='copies'>Copies: {props.card.quantity - props.currentDeckCards.filter(cardObj => cardObj.name === props.card.name).length}</div>
          </div>
        )
      }
    } else {
      if (props.card.cardtype === "Champion") {
        return(
          <div className={`card ` + props.card.rarity} onClick={event => props.getCardInfo(props.card)}>
            <div>Name: {props.card.name}, {props.card.title}</div>
            <br/>

            <img src={'image/' + props.card.image}/>
            <br/>

            <div>Type: {props.card.cardtype}</div>

            <div>Role: {props.card.role}</div>

            <div>Attack: {props.card.attack}</div>

            <div>Magic: {props.card.magic}</div>

            <div>Defense: {props.card.defense}</div>

            <div id='copies'>Copies: {props.card.quantity - props.currentDeckCards.filter(cardObj => cardObj.name === props.card.name).length}</div>
          </div>
        )
      } else {
        return(
          <div className={`card ` + props.card.rarity} onClick={event => props.getCardInfo(props.card)}>
            <div>Name: {props.card.name}, {props.card.title}</div>
            <br/>

            <img src={'image/' + props.card.image}/>
            <br/>

            <div>Type: {props.card.cardtype}</div>

            <div>Effect: {props.card.description}</div>

            <div id='copies'>Copies: {props.card.quantity - props.currentDeckCards.filter(cardObj => cardObj.name === props.card.name).length}</div>
          </div>
        )
      }
    }
  } else {
    if (props.card.cardtype === "Champion") {
      return(
        <div className={`card ` + props.card.rarity} >
          <div>Name: {props.card.name}, {props.card.title}</div>
          <br/>

          <img src={'image/' + props.card.image}/>
          <br/>

          <div>Type: {props.card.cardtype}</div>

          <div>Role: {props.card.role}</div>

          <div>Attack: {props.card.attack}</div>

          <div>Magic: {props.card.magic}</div>

          <div>Defense: {props.card.defense}</div>

          <div id='copies'>Copies: {props.card.quantity - props.currentDeckCards.filter(cardObj => cardObj.name === props.card.name).length}</div>
        </div>
      )
    } else {
      return(
        <div className={`card ` + props.card.rarity} >
          <div>Name: {props.card.name}, {props.card.title}</div>
          <br/>

          <img src={'image/' + props.card.image}/>
          <br/>

          <div>Type: {props.card.cardtype}</div>

          <div>Effect: {props.card.description}</div>

          <div id='copies'>Copies: {props.card.quantity - props.currentDeckCards.filter(cardObj => cardObj.name === props.card.name).length}</div>
        </div>
      )
    }
  }
}

export default Card;
