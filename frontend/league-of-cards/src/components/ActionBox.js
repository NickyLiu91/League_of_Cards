import React from "react";

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
        <button onClick={props.cancel}>Attack</button>
      </div>
    )
  }

}

export default ActionBox;
