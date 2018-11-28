import React from "react";

const CardInfo = (props) => {
  return(
    <div className="card-info">
      <div>Name: {props.selectedCard.name}, {props.selectedCard.title}</div>
      <br/>
      <img src={'image/' + props.selectedCard.image} />
      <br/>
      <div>Attack: {props.selectedCard.attack}</div>
      <br/>
      <div>Magic: {props.selectedCard.magic}</div>
      <br/>
      <div>Defense: {props.selectedCard.defense}</div>
      <br/>
      <div>Description: {props.selectedCard.blurb}</div>
      <br/>
      <button onClick={event => props.addToDeck(props.selectedCard)}>Add To Deck</button>
      <button onClick={props.renderCollection}>Collection</button>
    </div>
  )

}

export default CardInfo;
