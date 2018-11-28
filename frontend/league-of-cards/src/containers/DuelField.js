import React from "react";

import Hand from "./Hand.js"
import SpellField from "./SpellField.js"
import MonsterField from "./MonsterField.js"

export default class DuelField extends React.Component {

  state = {
    player1Life: 8000,
    player1Monsters: [{}, {}, {}, {}, {}],
    player1Spells: [{}, {}, {}, {}, {}],
    player1Hand: [],
    player1Deck: this.props.player1.cards,
    player2Life: 8000,
    player2Monsters: [{}, {}, {}, {}, {}],
    player2Spells: [{}, {}, {}, {}, {}],
    player2Hand: [],
    player2Deck: this.props.player2.cards
  }

  playMonster = (monster) => {
    let newMonsterField = this.state.player1Monsters
    let newHand = this.state.player1Hand.filter(
      cardObj => cardObj.name !== monster.name
    )

    let emptySlot = this.state.player1Monsters.findIndex(
      obj => Object.keys(obj).length === 0
    )

    newMonsterField.splice(emptySlot, 1, monster)

    this.setState({
      player1Monsters: newMonsterField,
      player1Hand: newHand
    })
  }

  computerPlayMonster = (monster) => {
    let newMonsterField = this.state.player2Monsters
    let newHand = this.state.player2Hand.filter(
      cardObj => cardObj.name !== monster.name
    )

    let emptySlot = this.state.player2Monsters.findIndex(
      obj => Object.keys(obj).length === 0
    )

    newMonsterField.splice(emptySlot, 1, monster)

    this.setState({
      player2Monsters: newMonsterField,
      player2Hand: newHand
    })
  }

  computerDrawCard = () => {
    const newDeck = this.state.player2Deck
    const newCard = newDeck.pop()
    if (this.state.player2Deck.length > 0) {
      this.setState({
        player2Deck: newDeck,
        player2Hand: [...this.state.player2Hand, newCard]
      })
    } else {
      this.renderLose()
    }
  }

  drawCard = () => {
    const newDeck = this.state.player1Deck
    const newCard = newDeck.pop()
    if (this.state.player1Deck.length > 0) {
      this.setState({
        player1Deck: newDeck,
        player1Hand: [...this.state.player1Hand, newCard]
      })
    } else {
      this.renderLose()
    }
  }

  showState = () => {
    console.log(this.state)
  }

  getStrongestMonsterInOwnHand = () => {
    return this.state.player2Hand.sort( function(a, b) {
    	if(a.attack > b.attack) {
    		return -1
      } else {
      	return 1
      }
    })[0]
  }

  getWeakestMonsterInOwnHand = () => {
    return this.state.player2Hand.sort( function(a, b) {
    	if(a.attack > b.attack) {
    		return 1
      } else {
      	return -1
      }
    })[0]
  }

  playAppropriateMonster = () => {
    let strongestHandMonster = this.getStrongestMonsterInOwnHand()
    console.log(strongestHandMonster)
    let weakestHandMonster = this.getWeakestMonsterInOwnHand()
    console.log(weakestHandMonster)

    // this.computerPlayMonster(strongestHandMonster)

    let killableEnemyMonster = this.state.player1Monsters.some(
      monster => Object.keys(monster).length !== 0 && monster.attack < strongestHandMonster.attack
    )

    if (killableEnemyMonster === false) {
      this.computerPlayMonster(weakestHandMonster)
    } else if (killableEnemyMonster === true ) {
      this.computerPlayMonster(strongestHandMonster)
    }
  }

  // getStrongestMonsterInEnemyField = () => {
  //   return this.state.player1Monsters.sort( function(a, b) {
  //   	if(a.attack > b.attack) {
  //   		return -1
  //     } else {
  //     	return 1
  //     }
  //   })[0]
  // }

  computerTurn = () => {
    const newDeck = this.state.player2Deck
    const newCard = newDeck.pop()
    if (this.state.player2Deck.length > 0) {
      this.setState({
        player2Deck: newDeck,
        player2Hand: [...this.state.player2Hand, newCard]
      }, () => this.playAppropriateMonster()
    )
    } else {
      this.renderLose()
    }
      // this.computerPlayMonster(strongestHandMonster)


  }

  render() {
    return(
      <div id="duel-field">
      <button onClick={this.showState}>STATE</button>
        <div id="player2-hand">
          <Hand hand={this.state.player2Hand} playMonster={this.computerPlayMonster}/>
        </div>
        <br/>
        <div id="player2-spells">
          <div id="player2-deck" className="duel-card player2-deck" onClick={this.computerDrawCard}>
            p2 Deck
          </div>
          <SpellField spells={this.state.player2Spells} />
        </div>
        <div id="player2-monsters">
          <MonsterField monsters={this.state.player2Monsters}/>
        </div>
        <br/>
        <br/>
        <button onClick={this.computerTurn}>End Turn</button>
        <br/>
        <br/>
        <div id="player1-monsters">
          <MonsterField monsters={this.state.player1Monsters} />
        </div>
        <div id="player1-spells">
          <div id="player1-deck" className="duel-card player1-deck" onClick={this.drawCard}>
            p1 Deck
          </div>
          <SpellField spells={this.state.player1Spells} playMonster={this.playMonster}/>
        </div>
        <div id="player1-hand">
          <Hand hand={this.state.player1Hand} playMonster={this.playMonster}/>
        </div>
        <button onClick={this.props.renderHome}>Home</button>
      </div>
    )
  }

}
