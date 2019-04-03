import React from "react";
import GraveyardCard from "../components/GraveyardCard.js"
let cardKey = 1

export default class Graveyard extends React.Component {

  generateCards1 = () => {
    return this.props.player1Graveyard.map(
      cardObj => <GraveyardCard key={cardKey++} card={cardObj}
      removeFromDeck={this.props.removeFromDeck}/>
    )
  }

  generateCards2 = () => {
    return this.props.player2Graveyard.map(
      cardObj => <GraveyardCard key={cardKey++} card={cardObj}
      removeFromDeck={this.props.removeFromDeck}/>
    )
  }

  render() {
    if (this.props.displayGraveyard === "player1") {
      return(
        <ul id="graveyardbar">
        <div id="graveyardbar-title">Graveyard</div>
          {this.generateCards1()}
        </ul>
      )
    } else if (this.props.displayGraveyard === "player2") {
      return(
        <ul id="graveyardbar">
        <div id="graveyardbar-title">Graveyard</div>
          {this.generateCards2()}
        </ul>
      )
    }
  }

}
