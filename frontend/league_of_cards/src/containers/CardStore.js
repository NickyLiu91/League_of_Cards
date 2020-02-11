import React from "react";
import Card from "../components/Card.js"
import {connect} from 'react-redux';
let packKey = 0
let cardResults = []

class CardStore extends React.Component {
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
    // if (this.props.gold >= 100) {
      this.clearResults()
      for (var i = 0; i < 9; i++) {
        this.addCardToCollection()
      }
      this.setState({
        results: cardResults
      }, () => {this.buyPack(cardResults)})
    // } else {
    //   alert("You do not have enough gold!")
    // }
  }

  addCardToCollection = () => {
    let number = Math.floor(Math.random() * 100) + 1
    let newCard

    const diamonds = this.props.cards.filter(obj => obj.rarity === "Diamond")
    const platinums = this.props.cards.filter(obj => obj.rarity === "Platinum")
    const golds = this.props.cards.filter(obj => obj.rarity === "Gold")
    const silvers = this.props.cards.filter(obj => obj.rarity === "Silver")
    const bronzes = this.props.cards.filter(obj => obj.rarity === "Bronze")

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

    console.log(newCard)

    cardResults = [...cardResults, newCard]

    fetch("http://localhost:3000/api/v1/cards", {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json'
      },
      body: JSON.stringify(
          {
            player_id: this.props.account.id,
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
      // .then(res => {this.props.changeCurrentPlayerCards(res)})
      // .then((json) => {
      //   console.log(json)
      // })
  }

  generateCards = () => {
    return this.state.results.map(
      cardObj => <Card key={packKey++} location={"store"} card={cardObj} copies={this.props.noDupesCurrentPlayerCards}/>
    )
  }

  updateCurrentPlayerCollection = (array) => {

    let oldCards = this.props.currentPlayerCards
    array.forEach(card => oldCards.push(card))
    this.props.changeCurrentPlayerCards(oldCards)

    let oldNonDupeCards = this.props.noDupesCurrentPlayerCards
    console.log(oldNonDupeCards)

    oldNonDupeCards.forEach(card => {
      if (array.find(card2 => card.name == card2.name)) {
        console.log(card.quantity)
        console.log(card.name)
        card.quantity ++
        console.log(card.quantity)
      }
    })

    // this.props.changeNoDupesCurrentPlayerCards(updatedCards)
    console.log(oldNonDupeCards)
    // console.log(this.props.noDupesCurrentPlayerCards)

  }

  buyPack = (array) => {
    fetch(`http://localhost:3000/api/v1/players/${this.props.account.id}`, {
      method: 'PATCH',
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      body: JSON.stringify(
          {
            gold: this.props.gold - 100
          }
    )})
    .then(res => {
      this.props.changeGold(this.props.gold - 100)
      this.updateCurrentPlayerCollection(array)
    })
  }

  render() {
    console.log(this.props)
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


const mapStateToProps = state => {
  return {
    account: state.accountChanger.account,
    cards: state.cardsChanger.cards,
    currentPlayerCards: state.currentPlayerCardsChanger.currentPlayerCards,
    noDupesCurrentPlayerCards: state.noDupesCurrentPlayerCardsChanger.noDupesCurrentPlayerCards,
    gold: state.goldChanger.gold
  }
}

const mapDispatchToProps = dispatch => {
  return {
    changeAccount: (event) => dispatch({type: 'CHANGE_ACCOUNT', newAccount: event}),
    changeCards: (event) => dispatch({type: 'CHANGE_CARDS', newCards: event}),
    changeCurrentPlayerCards: (event) => dispatch({type: 'CHANGE_CURRENTPLAYERCARDS', newCurrentPlayerCards: event}),
    changeNoDupesCurrentPlayerCards: (event) => dispatch({type: 'CHANGE_NODUPESCURRENTPLAYERCARDS', newNoDupesCurrentPlayerCards: event}),
    changeGold: (event) => dispatch({type: 'CHANGE_GOLD', newGold: event})
  }
}

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(CardStore);
