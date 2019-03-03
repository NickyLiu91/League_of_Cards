import React from "react";
import DuelCard from "../components/DuelCard.js"
let handKey = 0

export default class Hand extends React.Component {

  generateHandCards = () => {
    if (this.props.player === "player2") {
      return this.props.hand.map(
        cardObj => <DuelCard key={handKey++} duelCard={cardObj} clickAction={this.props.clickHandCard} location={"computerHand"}/>
      )
    } else if (this.props.actionType === 'item') {
      return this.props.hand.map(
        cardObj => <DuelCard key={handKey++} duelCard={cardObj} clickAction={this.props.selectItemTarget} location={"playerHand"}/>
      )
    } else {
      return this.props.hand.map(
        cardObj => <DuelCard key={handKey++} duelCard={cardObj} clickAction={this.props.clickHandCard} location={"playerHand"}/>
      )
    }

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
