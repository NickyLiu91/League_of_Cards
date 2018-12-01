import React from "react";
import StoreCard from "../components/StoreCard.js"
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
      this.setState({
        results: cardResults
      })
    }
  }

  addCardToCollection = () => {
    let number = Math.floor(Math.random() * 100) + 1
    let newCard

    const legendary = this.props.currentPlayerCollection.filter(obj => obj.rarity === 10)
    const ultraRare = this.props.currentPlayerCollection.filter(obj => obj.rarity === 9)
    const superRare = this.props.currentPlayerCollection.filter(obj => obj.rarity === 8)
    const rare = this.props.currentPlayerCollection.filter(obj => obj.rarity === 7)
    const common = this.props.currentPlayerCollection.filter(obj => obj.rarity > 0 && obj.rarity < 7)


    if (number > 98) {
      newCard = legendary[Math.floor(Math.random() * legendary.length)]
    } else if ( number > 93) {
      newCard = ultraRare[Math.floor(Math.random() * ultraRare.length)]
    } else if ( number > 85) {
      newCard = superRare[Math.floor(Math.random() * superRare.length)]
    } else if ( number > 50) {
      newCard = rare[Math.floor(Math.random() * rare.length)]
    } else {
      newCard = common[Math.floor(Math.random() * common.length)]
    }
    // this.setState({
    //   results: [...this.state.results, newCard]
    // })

    newCard.id = collectionId++

    cardResults = [...cardResults, newCard]

    fetch(`http://localhost:3000/api/v1/players/${this.props.currentPlayer.id}/cards/${newCard.id}`, {
      method: 'PATCH',
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      body: JSON.stringify(
          {
            quantity: newCard.quantity + 1
          }
      )})

      newCard.quantity = newCard.quantity + 1
  }

  generateCards = () => {
    return this.state.results.map(
      cardObj => <StoreCard key={packKey++} card={cardObj}/>
    )
  }

  render() {
    return(
      <div>
      <div id="store">
        <div id="pack">
          <img id="pack-image" onClick={this.getFullPack} src="image/LeaguePack.jpg"/>
        </div>
      </div>
      <br/>
      <br/>
      <br/>
      <br/>
      <br/>
      <div id="pack-results">
        {this.generateCards()}
      </div>
      <button onClick={this.props.renderCollection}>Card Collection</button>
      <button onClick={this.clearResults}>Clear</button>
      </div>
    )
  }

}
