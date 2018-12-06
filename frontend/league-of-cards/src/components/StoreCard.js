import React from "react";

const StoreCard = (props) => {
  if (props.card.rarity < 7) {
    return(
      <div className="card common store-card" onClick={event => props.getCardInfo(props.card)}>
        <div>Name: {props.card.name}, {props.card.title}</div>
        <br/>

        <img src={'image/' + props.card.image}/>
        <br/>

        <div>Rarity: Common</div>

        <div>Type: {props.card.role}</div>

        <div>Attack: {props.card.attack}</div>

        <div>Magic: {props.card.magic}</div>

        <div>Defense: {props.card.defense}</div>

        <div id='copies'>Copies: {props.card.quantity}</div>
      </div>
    )
  } else if (props.card.rarity === 7) {
    return(
      <div className="card uncommon store-card" onClick={event => props.getCardInfo(props.card)}>
        <div>Name: {props.card.name}, {props.card.title}</div>
        <br/>

        <img src={'image/' + props.card.image}/>
        <br/>

        <div>Rarity: Uncommon</div>

        <div>Type: {props.card.role}</div>

        <div>Attack: {props.card.attack}</div>

        <div>Magic: {props.card.magic}</div>

        <div>Defense: {props.card.defense}</div>

        <div id='copies'>Copies: {props.card.quantity}</div>
      </div>
    )
  } else if (props.card.rarity === 8) {
    return(
      <div className="card rare store-card" onClick={event => props.getCardInfo(props.card)}>
        <div>Name: {props.card.name}, {props.card.title}</div>
        <br/>

        <img src={'image/' + props.card.image}/>
        <br/>

        <div>Rarity: Rare</div>

        <div>Type: {props.card.role}</div>

        <div>Attack: {props.card.attack}</div>

        <div>Magic: {props.card.magic}</div>

        <div>Defense: {props.card.defense}</div>

        <div id='copies'>Copies: {props.card.quantity}</div>
      </div>
    )
  } else if (props.card.rarity === 9) {
    return(
      <div className="card super-rare store-card" onClick={event => props.getCardInfo(props.card)}>
        <div>Name: {props.card.name}, {props.card.title}</div>
        <br/>

        <img src={'image/' + props.card.image}/>
        <br/>

        <div>Rarity: Super Rare</div>

        <div>Type: {props.card.role}</div>

        <div>Attack: {props.card.attack}</div>

        <div>Magic: {props.card.magic}</div>

        <div>Defense: {props.card.defense}</div>

        <div id='copies'>Copies: {props.card.quantity}</div>
      </div>
    )
  } else if (props.card.rarity === 10) {
    return(
      <div className="card ultra-rare store-card" onClick={event => props.getCardInfo(props.card)}>
        <div>Name: {props.card.name}, {props.card.title}</div>
        <br/>

        <img src={'image/' + props.card.image}/>
        <br/>

        <div>Rarity: Ultra Rare</div>

        <div>Type: {props.card.role}</div>

        <div>Attack: {props.card.attack}</div>

        <div>Magic: {props.card.magic}</div>

        <div>Defense: {props.card.defense}</div>

        <div id='copies'>Copies: {props.card.quantity}</div>
      </div>
    )
  }
}

export default StoreCard;
