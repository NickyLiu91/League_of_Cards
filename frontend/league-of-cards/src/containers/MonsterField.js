import React from "react";
import DuelCard from "../components/DuelCard.js"
let monsterKey = 0

export default class MonsterField extends React.Component {

  generateMonsterCards = () => {
    return this.props.monsters.map(
      cardObj => <DuelCard key={monsterKey++} duelCard={cardObj} />
    )
  }

  render() {
    return(
      <div>
      <h1>Monster List</h1>
        <div id="monster-list">
        {this.generateMonsterCards()}
        </div>
      </div>
    )
  }
}
