import React from "react";

const CardInfo = (props) => {
  if (props.selectedCard.cardtype === "Champion") {
    return(
      <div className={'card-info' + ' ' + 'card-info' + '-' + props.selectedCard.rarity} >
        <div>Name: {props.selectedCard.name}, {props.selectedCard.title}</div>
        <br/>
        <br/>
        <img src={'image/' + props.selectedCard.image}/>
        <br/>
        <br/>
        <div>Type: {props.selectedCard.cardtype}</div>
        <br/>
        <br/>
        <div>Rarity: {props.selectedCard.rarity}</div>
        <br/>
        <br/>
        <div>Role: {props.selectedCard.role}</div>
        <br/>
        <br/>
        <div>Attack: {props.selectedCard.attack}</div>
        <br/>
        <br/>
        <div>Magic: {props.selectedCard.magic}</div>
        <br/>
        <br/>
        <div>Defense: {props.selectedCard.defense}</div>
        <br/>
        <br/>
        <div className="description">Description: {props.selectedCard.description}</div>
        <br/>
        <button className="add-button" onClick={event => props.addToDeck(props.selectedCard)}>Add To Deck</button>
      </div>
    )
  } else {
    return(
      <div className={'card-info' + ' ' + 'card-info' + '-' + props.selectedCard.rarity} >
        <div>Name: {props.selectedCard.name}</div>
        <br/>
        <br/>
        <img src={'image/' + props.selectedCard.image}/>
        <br/>
        <br/>
        <div>Type: {props.selectedCard.cardtype}</div>
        <br/>
        <br/>
        <div>Rarity: {props.selectedCard.rarity}</div>
        <br/>
        <br/>
        <div>Effect: {props.selectedCard.description}</div>
        <br/>
        <button className="add-button" onClick={event => props.addToDeck(props.selectedCard)}>Add To Deck</button>
      </div>
    )
  }

}

export default CardInfo;
