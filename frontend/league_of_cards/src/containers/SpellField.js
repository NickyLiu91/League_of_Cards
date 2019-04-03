import React from "react";
import DuelCard from "../components/DuelCard.js"
let spellKey = 0

export default class SpellField extends React.Component {

  generateSpellCards = () => {
    return this.props.spells.map(
      cardObj => <DuelCard key={spellKey++} duelCard={cardObj} location={"SpellField"}/>
    )
  }

  render() {
    return(
      <div>
      <h1>Spells</h1>
        <div id="spell-list">
        {this.generateSpellCards()}
        </div>
      </div>
    )
  }
}
