import React from "react";
import SideBarCard from "../components/SideBarCard.js"

export default class SideBar extends React.Component {

  generateCards = () => {
    return this.props.currentDeckCards.map(
      cardObj => <SideBarCard key={cardObj.key} sideBarCard={cardObj}
      removeFromDeck={this.props.removeFromDeck}/>
    )
  }

  render() {
    return(
      <ul id="sidebar">
      <div id="sidebar-title">Decklist</div>
      {this.generateCards()}
      </ul>

    )
  }

}
