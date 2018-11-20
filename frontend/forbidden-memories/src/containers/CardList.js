import React from "react";
import Card from "../components/Card.js"

export default class CardList extends React.Component {

  generateCards = () => {
    return this.props.cardlist.map(
      cardObj => <Card key={cardObj.key} card={cardObj}
      getCardInfo={this.props.getCardInfo}/>
    )
  }

  render() {
    return(
      <div>
      <h1>Card List</h1>
        <div id="card-list">
        {this.generateCards()}
        </div>
        <button onClick={this.props.renderHome}>Home</button>
      </div>
    )
  }

}
