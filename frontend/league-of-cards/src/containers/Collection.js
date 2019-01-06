import React from "react";
import Card from "../components/Card.js"

export default class Collection extends React.Component {

  generateCards = () => {
    let newCollection = this.props.noDupesCurrentPlayerCollection
    return newCollection.map(
      cardObj => <Card key={cardObj.id} location={"collection"} card={cardObj}
      getCardInfo={this.props.getCardInfo} currentDeckCards={this.props.currentDeckCards}/>
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
