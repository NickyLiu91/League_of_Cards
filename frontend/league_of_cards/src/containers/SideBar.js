import React from "react";
import SideBarCard from "../components/SideBarCard.js"
// let i = 1

export default class SideBar extends React.Component {

  generateCards = () => {

    let sortedDeck = this.props.currentDeckCards.sort( (a, b) => {
      if (a.cardtype === 'Champion' && b.cardtype === 'Ability') {
        return -1
      } else if (a.cardtype === 'Champion' && b.cardtype === 'Item') {
        return -1
      } else if (a.cardtype === 'Ability' && b.cardtype === 'Item') {
        return -1
      } else if (a.cardtype === b.cardtype) {
        if (a.name > b.name) {
          return 1
        } else {
          return -1
        }
      } else {
        return 1
      }
      return 0
    })

    return sortedDeck.map(
      cardObj => <SideBarCard key={cardObj.id} card={cardObj}
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
