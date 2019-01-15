import React from "react";

import GraveyardCard from "./GraveyardCard.js"
let cardKey = 1

const ActionBox = (props) => {
  if (props.actionType === '') {
    return(
      <div className="action-box-text" >
      This space will be used to decide and confirm actions
      </div>
    )
  } else if (props.actionType === 'summon-position') {
    return(
      <div className="action-box-text" >
        What position do you want to summon {props.selectedCard.name} in?
        <br/>
        <button onClick={event => {props.playMonsterAttack(props.selectedCard)}}>Attack Position</button>
        <br/>
        <button onClick={event => {props.playMonsterDefense(props.selectedCard)}}>Defense Position</button>
        <br/>
        <button onClick={props.cancel}>Cancel</button>
      </div>
    )
  } else if (props.actionType === 'fieldMonster' && props.turn === 1) {
    return(
      <div className="action-box-text" >
        You cannot declare an attack on the first turn!
        <br/>
        <button onClick={event => {props.changePosition(props.selectedCard)}}>Change Position</button>
        <br/>
        <button onClick={props.cancel}>Cancel</button>
      </div>
    )
  } else if (props.actionType === 'fieldMonster' && props.selectedCard.attacked === false) {
    return(
      <div className="action-box-text" >
        <button onClick={event => {props.changePosition(props.selectedCard)}}>Change Position</button>
        <br/>
        <button onClick={props.getEnemyTargetMode}>Attack</button>
        <br/>
        <button onClick={props.cancel}>Cancel</button>
      </div>
    )
  } else if (props.actionType === 'fieldMonster' && props.selectedCard.attacked === true) {
    return(
      <div className="action-box-text" >
        {props.selectedCard.name} has already attack this turn!
      </div>
    )
  } else if (props.actionType === 'selectAttackTarget') {
    return(
      <div className="action-box-text" >
        Select a monster to Attack!
        <br/>
        {props.selectedCard.name} will attack {props.selectedTarget.name}!
        <br/>
        <button onClick={event => {props.fight(props.selectedCard, props.selectedTarget, props.player1Monsters)}}>OBLITERATE</button>
        <br/>
        <button onClick={props.cancel}>Cancel</button>
      </div>
    )
  } else if (props.actionType === 'non-target ability') {
    return(
      <div className="action-box-text" >
        {props.selectedCard.description}?
        <br/>
        <br/>
        <button onClick={event => {eval(props.selectedCard.effect)}}>YES</button>
        <br/>
        <button onClick={props.cancel}>Cancel</button>
      </div>
    )
  } else if (props.actionType === 'item') {
    return(
      <div className="action-box-text" >
        {props.selectedCard.description}
        <br/>
        Equip a target with {props.selectedCard.name}?
        <br/>
        <br/>
        <button onClick={props.getItemTargetMode}>YES</button>
        <br/>
        <button onClick={props.cancel}>Cancel</button>
      </div>
    )
  } else if (props.actionType === 'selectItemTarget') {
    return(
      <div className="action-box-text" >
      {console.log(props)}
        Select a monster to equip with {props.selectedCard.name}!
        <br/>
        Give {props.selectedCard.name} to {props.selectedItemTarget.name}?
        <br/>
        <button onClick={event => {eval(props.selectedCard.effect)}}>Yes</button>
        <br/>
        <button onClick={props.cancel}>Cancel</button>
      </div>
    )
  } else if (props.actionType === 'displayPlayer1Graveyard') {
    return(
      <ul id="graveyard-bar">
      <div id="graveyard-bar-title">Graveyard</div>
        {props.player1Graveyard.map(
          graveyardCardObj => <GraveyardCard key={cardKey++} card={graveyardCardObj}/>
        )}
      </ul>
    )
  } else if (props.actionType === 'displayPlayer2Graveyard') {
    return(
      <ul id="graveyard-bar">
      <div id="graveyard-bar-title">Graveyard</div>
        {props.player2Graveyard.map(
          graveyardCardObj => <GraveyardCard key={cardKey++} card={graveyardCardObj}/>
        )}
      </ul>
    )
  }

}

export default ActionBox;
