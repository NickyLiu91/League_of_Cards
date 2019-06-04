import React from "react";
import Card from "../components/Card.js"
let packKey = 0
let cardResults = []

export default class CardStore extends React.Component {
  state = {
    results: []
  }

  clearResults = () => {
    cardResults = []
    this.setState({
      results: cardResults
    })
  }

  getFullPack = () => {
    if (this.props.gold ) {
      this.clearResults()
      for (var i = 0; i < 9; i++) {
        this.addCardToCollection()
      }
      this.setState({
        results: cardResults
      }, () => {this.props.buyPack()})
    } else {
      alert("You do not have enough gold!")
    }
  }

  addCardToCollection = () => {
    let number = Math.floor(Math.random() * 100) + 1
    let newCard

    const diamonds = this.props.collection.filter(obj => obj.rarity === "Diamond")
    const platinums = this.props.collection.filter(obj => obj.rarity === "Platinum")
    const golds = this.props.collection.filter(obj => obj.rarity === "Gold")
    const silvers = this.props.collection.filter(obj => obj.rarity === "Silver")
    const bronzes = this.props.collection.filter(obj => obj.rarity === "Bronze")

    if (number > 98) {
      newCard = diamonds[Math.floor(Math.random() * diamonds.length)]
    } else if ( number > 93) {
      newCard = platinums[Math.floor(Math.random() * platinums.length)]
    } else if ( number > 85) {
      newCard = golds[Math.floor(Math.random() * golds.length)]
    } else if ( number > 50) {
      newCard = silvers[Math.floor(Math.random() * silvers.length)]
    } else {
      newCard = bronzes[Math.floor(Math.random() * bronzes.length)]
    }

    // console.log(newCard)

    cardResults = [...cardResults, newCard]

    fetch("http://localhost:3000/api/v1/cards", {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json'
      },
      body: JSON.stringify(
          {
            player_id: this.props.currentPlayer.id,
            // key: newCard.key,
            name: newCard.name,
            title: newCard.title,
            role: newCard.role,
            rarity: newCard.rarity,
            attack: newCard.attack,
            magic: newCard.magic,
            defense: newCard.defense,
            description: newCard.description,
            image: newCard.image,
            cardtype: newCard.cardtype,
            effect: newCard.effect,
            target: newCard.target
          }
      )})
      // .then(response => this.props.updateCurrentPlayerCollection())
      .then(response => {return response.json()})
      .then(jsonResponse => {console.log(jsonResponse)})
      // .then((json) => {
      //   console.log(json)
      // })
  }

  generateCards = () => {
    return this.state.results.map(
      cardObj => <Card key={packKey++} location={"store"} card={cardObj} currentDeckCards={this.props.currentDeckCards}/>
    )
  }

  render() {
    return(
      <div>
        <img id="noxus-shurima" src="image/noxus-shurima.jpeg"/>
        <div id="store-container">
          <div id="pack-results">
            {this.generateCards()}
          </div>
          <div id="store">
            <div id="pack">
              <div id="gold-box">
                <h1>{this.props.gold}</h1>
              </div>
              <img id="pack-image" onClick={this.getFullPack} src="image/LeaguePack.jpg"/>
            </div>
          </div>
        </div>
      </div>
    )
  }

}
