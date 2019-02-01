import React from "react";
import Card from "../components/Card.js"

export default class Collection extends React.Component {

  state = {
    list: this.props.noDupesCurrentPlayerCollection,
    sortNumber: 0,
    sortTypes: ['none', 'attack', 'magic', 'defense', 'power', 'quantity', "rarity"]
  }

  generateCards = () => {
    return this.state.list.map(
      cardObj => <Card key={cardObj.id} location={"collection"} card={cardObj}
      getCardInfo={this.props.getCardInfo} currentDeckCards={this.props.currentDeckCards} addToDeck={this.props.addToDeck}/>
    )
  }

  highestAttack = (monster) => {
    if (monster.attack > monster.magic) {
      return monster.attack
    } else {
      return monster.magic
    }
  }

  sort = () => {
    let newNumber = this.state.sortNumber + 1
    let newSortType = this.state.sortTypes[newNumber]
    let newList = this.state.list

    if (newNumber === this.state.sortTypes.length) {
      newList = this.props.noDupesCurrentPlayerCollection
      newNumber = 0
    } else {
      if (newSortType === 'power') {
        newList.sort( (a, b) => {
          if(this.highestAttack(a) > this.highestAttack(b)) {
            return -1
          } else {
            return 1
          }
          return 0
        })
      } else if (newSortType === 'rarity'){
        newList.sort( (a, b) => {
          if (a[newSortType] === 'Diamond' && b[newSortType] === 'Platinum') {
            return -1
          } else if (a[newSortType] === 'Diamond' && b[newSortType] === 'Gold') {
            return -1
          } else if (a[newSortType] === 'Diamond' && b[newSortType] === 'Silver') {
            return -1
          } else if (a[newSortType] === 'Diamond' && b[newSortType] === 'Bronze') {
            return -1
          } else if (a[newSortType] === 'Platinum' && b[newSortType] === 'Gold') {
            return -1
          } else if (a[newSortType] === 'Platinum' && b[newSortType] === 'Silver') {
            return -1
          } else if (a[newSortType] === 'Platinum' && b[newSortType] === 'Bronze') {
            return -1
          } else if (a[newSortType] === 'Gold' && b[newSortType] === 'Silver') {
            return -1
          } else if (a[newSortType] === 'Gold' && b[newSortType] === 'Bronze') {
            return -1
          } else if (a[newSortType] === 'Silver' && b[newSortType] === 'Bronze') {
            return -1
          } else {
            return 1
          }
          return 0
        })
      } else {
        newList.sort( (a, b) => {
          if(a[newSortType] > b[newSortType]) {
            return -1
          } else {
            return 1
          }
          return 0
        })
      }
    }
    this.setState({
      sortNumber: newNumber,
      list: newList
    })
  }

  render() {
    return(
      <div>
        <img id="bilgewater" src="image/bilgewater.jpeg"/>
        <div>
        <h1>Card List</h1>
        <button onClick={this.sort}>{this.state.sortTypes[this.state.sortNumber]}</button>
          <div id="card-list">
            {this.generateCards()}
          </div>
        </div>
      </div>
    )
  }

}
