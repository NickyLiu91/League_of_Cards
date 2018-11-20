import React from "react";

const CardInfo = (props) => {
  return(
    <div className="card-info">
      <div>Name: {props.selectedCard.name}, {props.selectedCard.title}</div>
      <br/>
      <img src={'image/' + props.selectedCard.image.full} />
      <br/>
      <div>Attack: {props.selectedCard.info.attack}</div>
      <br/>
      <div>Magic: {props.selectedCard.info.magic}</div>
      <br/>
      <div>Defense: {props.selectedCard.info.defense}</div>
      <br/>
      <div>Description: {props.selectedCard.blurb}</div>
      <br/>
      <button onClick={event => props.addToDeck(props.selectedCard)}>Add To Deck</button>
      <button onClick={props.renderCardList}>Back to Card List</button>
    </div>
  )

}

export default CardInfo;
