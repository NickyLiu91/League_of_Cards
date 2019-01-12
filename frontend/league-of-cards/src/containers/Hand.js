import React from "react";
import DuelCard from "../components/DuelCard.js"
let handKey = 0

export default class Hand extends React.Component {

  generateHandCards = () => {
    return this.props.hand.map(
      cardObj => <DuelCard key={handKey++} duelCard={cardObj} clickAction={this.props.clickHandCard}/>
    )
  }

  render() {
    return(
      <div>
      <h1>Hand</h1>
        <div id="hand-list">
        {this.generateHandCards()}
        </div>
      </div>
    )
  }

}
