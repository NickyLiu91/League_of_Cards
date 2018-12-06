import React from "react";
import Card from "../components/Card.js"

export default class Collection extends React.Component {

  generateCards = () => {
    return this.props.currentPlayerCollection.map(
      cardObj => <Card key={cardObj.id} card={cardObj}
      getCardInfo={this.props.getCardInfo}/>
    )
  }

  render() {
    return(
      <div>
        <img id="bilgewater" src="image/bilgewater.jpeg"/>
        <div>
        <h1>Card List</h1>
          <div id="card-list">
            {this.generateCards()}
          </div>
        </div>
      </div>
    )
  }

}
