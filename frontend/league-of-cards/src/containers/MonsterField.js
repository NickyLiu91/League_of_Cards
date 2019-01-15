import React from "react";
import DuelCard from "../components/DuelCard.js"
let monsterKey = 0

export default class MonsterField extends React.Component {

  generateMonsterCards = () => {
    if (this.props.player === 'player2') {
      return this.props.monsters.map(
        cardObj => <DuelCard key={monsterKey++} duelCard={cardObj} clickAction={this.props.selectTarget}
          actionType={this.props.actionType}/>
      )
    } else if (this.props.player === 'player1') {
      if (this.props.actionType === 'selectItemTarget') {
        return this.props.monsters.map(
          cardObj => <DuelCard key={monsterKey++} duelCard={cardObj} clickAction={this.props.selectItemTarget}/>
        )
      } else {
        return this.props.monsters.map(
          cardObj => <DuelCard key={monsterKey++} duelCard={cardObj} clickAction={this.props.clickFieldMonster}/>
        )
      }
    }
  }

  render(){
    return(
      <div>
      <h1>Monsters</h1>
        <div id="monster-list">
        {this.generateMonsterCards()}
        </div>
      </div>
    )
  }
}
