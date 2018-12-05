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
  } else if (props.actionType === 'fieldMonster') {
    return(
      <div className="action-box-text" >
        <button onClick={event => {props.changePosition(props.selectedCard)}}>Change Position</button>
        <br/>
        <button onClick={props.getEnemyTargetMode}>Attack</button>
        <br/>
        <button onClick={props.cancel}>Cancel</button>
      </div>
    )
  } else if (props.actionType === 'selectTarget') {
    return(
      <div className="action-box-text" >
        Select a monster to Attack!
        <br/>
        {(props.selectedCard.name)} will attack {props.selectedTarget.name}!
        <br/>
        <button onClick={event => {props.fight(props.selectedCard, props.selectedTarget)}}>OBLITERATE</button>
        <br/>
        <button onClick={props.cancel}>Cancel</button>
      </div>
    )
  } else if (props.actionType === 'displayPlayer1Graveyard') {
    return(
      <ul id="graveyardbar">
      <div id="graveyardbar-title">Graveyard</div>
        {props.player1Graveyard.map(
          graveyardCardObj => <GraveyardCard key={cardKey++} graveyardCard={graveyardCardObj}/>
        )}
      </ul>
    )
  } else if (props.actionType === 'displayPlayer2Graveyard') {
    return(
      <ul id="graveyardbar">
      <div id="graveyardbar-title">Graveyard</div>
        {props.player2Graveyard.map(
          graveyardCardObj => <GraveyardCard key={cardKey++} graveyardCard={graveyardCardObj}/>
        )}
      </ul>
    )
  }

}

export default ActionBox;
