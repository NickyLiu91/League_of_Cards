import React from "react";
import Card from "../components/Card.js"
let packKey = 0
let collectionId = 1
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
    this.clearResults()
    for (var i = 0; i < 9; i++) {
      this.addCardToCollection()
    }
    this.setState({
      results: cardResults
    }, () => {
      this.props.updateCurrentPlayerCollection()
    })
  }

  addCardToCollection = () => {
    let number = Math.floor(Math.random() * 100) + 1
    let newCard

    console.log(this.props.collection)

    const ultraRare = this.props.collection.filter(obj => obj.rarity === 10)
    console.log(ultraRare)
    const superRare = this.props.collection.filter(obj => obj.rarity === 9)
    console.log(superRare)
    const rare = this.props.collection.filter(obj => obj.rarity === 8)
    console.log(rare)
    const uncommon = this.props.collection.filter(obj => obj.rarity === 7)
    console.log(uncommon)
    const common = this.props.collection.filter(obj => obj.rarity > 0 && obj.rarity < 7)
    console.log(common)

    if (number > 98) {
      newCard = ultraRare[Math.floor(Math.random() * ultraRare.length)]
    } else if ( number > 93) {
      newCard = superRare[Math.floor(Math.random() * superRare.length)]
    } else if ( number > 85) {
      newCard = rare[Math.floor(Math.random() * rare.length)]
    } else if ( number > 50) {
      newCard = uncommon[Math.floor(Math.random() * uncommon.length)]
    } else {
      newCard = common[Math.floor(Math.random() * common.length)]
    }

    cardResults = [...cardResults, newCard]

    fetch("http://localhost:3000/api/v1/cards", {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      body: JSON.stringify(
          {
            player_id: this.props.currentPlayer.id,
            key: newCard.key,
            name: newCard.name,
            title: newCard.title,
            role: newCard.role,
            rarity: newCard.rarity,
            attack: newCard.attack,
            magic: newCard.magic,
            defense: newCard.defense,
            description: newCard.description,
            image: newCard.image
          }
      )})

      this.props.updateNoDupesCurrentPlayCollection(newCard)

      // newCard.quantity = newCard.quantity + 1
  }

  generateCards = () => {
    return this.state.results.map(
      cardObj => <Card key={packKey++} location={"store"} card={cardObj}/>
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
              <img id="pack-image" onClick={this.getFullPack} src="image/LeaguePack.jpg"/>
            </div>
          </div>
        </div>
      </div>
    )
  }

}
