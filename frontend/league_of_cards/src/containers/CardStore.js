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
      }, () => {this.props.buyPack(cardResults)})
    // } else {
    //   alert("You do not have enough gold!")
    // }
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
      // .then(response => this.props.updateCurrentPlayerCollection())
      // .then((json) => {
      //   console.log(json)
      // })
  }

  generateCards = () => {
    return this.state.results.map(
      cardObj => <Card key={packKey++} location={"store"} card={cardObj} copies={this.props.noDupesCurrentPlayerCollection}/>
    )
  }

  updateCurrentPlayerCollection = (array) => {
    let newCollection = this.props.noDupesCurrentPlayerCollection
    console.log(array)

    array.forEach(card => {
      let updateCard = newCollection.find(card2 =>
        card.name == card2.name
      )
      updateCard.quantity ++
    })

    this.setState({
      noDupesCurrentPlayerCollection: newCollection
    })
  }

  generateNoDupesCurrentPlayerCollection = () => {
    let newCollection = this.state.collection.map(card => {
        card.quantity = this.props.accountCollection.filter(cardObj => cardObj.name === card.name).length;
        return card
      }
    )

    this.setState({
      noDupesCurrentPlayerCollection: newCollection
    })
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
      this.setState({
        gold: this.props.gold - 100
      }, () => {
        this.updateCurrentPlayerCollection(array)
      })
    })
  }

  render() {
    console.log(this.props.account)
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
    name: state.nameChanger.name,
    cards: state.cardsChanger.cards,
    currentPlayerCards: state.currentPlayerCardsChanger.currentPlayerCards,
    noDupesCurrentPlayerCards: state.noDupesCurrentPlayerCardsChanger.noDupesCurrentPlayerCards,
    deck: state.deckChanger.deck,
    deckCards: state.deckCardsChanger.deckCards,
    characters: state.charactersChanger.characters,
    enemy: state.enemyChanger.enemy,
    card: state.cardChanger.card,
    decksList: state.decksListChanger.decksList,
    gold: state.goldChanger.gold,
    defeated: state.defeatedChanger.defeated,
    dialogue: state.dialogueChanger.dialogue,
    location: state.locationChanger.location,
  }
}

const mapDispatchToProps = dispatch => {
  return {
    changeAccount: (event) => dispatch({type: 'CHANGE_ACCOUNT', newAccount: event}),
    changeName: (event) => dispatch({type: 'CHANGE_NAME', newName: event}),
    changeCards: (event) => dispatch({type: 'CHANGE_CARDS', newCards: event}),
    changeCurrentPlayerCards: (event) => dispatch({type: 'CHANGE_CURRENTPLAYERCARDS', newCurrentPlayerCards: event}),
    changeNoDupesCurrentPlayerCards: (event) => dispatch({type: 'CHANGE_NODUPESCURRENTPLAYERCARDS', newNoDupesCurrentPlayerCards: event}),
    changeDeck: (event) => dispatch({type: 'CHANGE_DECK', newDeck: event}),
    changeDeckCards: (event) => dispatch({type: 'CHANGE_DECKCARDS', newDeckCards: event}),
    changeCharacters: (event) => dispatch({type: 'CHANGE_CHARACTERS', newCharacters: event}),
    changeEnemy: (event) => dispatch({type: 'CHANGE_ENEMY', newEnemy: event}),
    changeCard: (event) => dispatch({type: 'CHANGE_CARD', newCard: event}),
    changeDecksList: (event) => dispatch({type: 'CHANGE_DECKSLIST', newDecksList: event}),
    changeGold: (event) => dispatch({type: 'CHANGE_GOLD', newGold: event}),
    changeDefeated: (event) => dispatch({type: 'CHANGE_DEFEEATED', newDefeated: event}),
    changeDialogue: (event) => dispatch({type: 'CHANGE_DIALOGUE', newDialogue: event}),
    changeLocation: (event) => dispatch({type: 'CHANGE_LOCATION', newLocation: event}),
  }
}

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(CardStore);
