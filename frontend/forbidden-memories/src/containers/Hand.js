import React from "react";
import DuelCard from "../components/DuelCard.js"

export default class Hand extends React.Component {

  generateHandCards = () => {
    return this.props.player1Hand.map(
      cardObj => <DuelCard key={cardObj.key} duelCard={cardObj}
      getCardInfo={this.props.getCardInfo}/>
    )
  }

  render() {
    return(
      <div>
      <h1>Card List</h1>
        <div id="hand-list">
        {this.generateHandCards()}
        </div>
        <button>Home</button>
      </div>
    )
  }

}
