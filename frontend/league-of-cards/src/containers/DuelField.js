import React from "react";

import Hand from "./Hand.js"
import SpellField from "./SpellField.js"
import MonsterField from "./MonsterField.js"
import ActionBox from "../components/ActionBox.js"

export default class DuelField extends React.Component {

  state = {
    turn: 1,
    currentPlayer: this.props.player1,
    summon: 1,
    player1: this.props.player1,
    player1Life: 8000,
    player1Monsters: [{}, {}, {}, {}, {}],
    player1Spells: [{}, {}, {}, {}, {}],
    player1Hand: [],
    player1Deck: this.props.player1Deck,
    player2: this.props.player2,
    player2Life: 8000,
    player2Monsters: [{}, {}, {}, {}, {}],
    player2Spells: [{}, {}, {}, {}, {}],
    player2Hand: [],
    player2Deck: this.props.player2Deck,
    actionType: '',
    selectedCard: '',
    selectedTarget: ''
  }

  start5CardsPlayer = () => {
    let newDeck = this.state.player1Deck
    let newHand = []
    let newCard
    let i = 0
    for(i = 0; i < 5; i ++) {
      if (this.state.player1Deck.length > 0) {
        newCard = newDeck.pop()
        newHand = [...newHand, newCard]
      } else {
        this.props.renderLose()
      }
    }
    this.setState({
      player1Deck: newDeck,
      player1Hand: newHand
    })
  }

  start5CardsComputer = () => {
    let newDeck = this.state.player2Deck
    let newHand = []
    let newCard
    let i = 0
    for(i = 0; i < 5; i ++) {
      if (this.state.player2Deck.length > 0) {
        newCard = newDeck.pop()
        console.log(newCard)
        newHand = [...newHand, newCard]
      } else {
        this.props.renderLose()
      }
    }
    this.setState({
      player2Deck: newDeck,
      player2Hand: newHand
    })
  }

  setUpDecks = () => {
    let player1Deck = []
    let player2Deck = []

    this.props.player1Deck.map(
      cardObj => {
        let newCardObj = cardObj
        newCardObj.position = ''
        newCardObj.attacked = false
        player1Deck = [...player1Deck, newCardObj]
      }
    )

    this.props.player2Deck.map(
      cardObj => {
        let newCardObj = cardObj
        newCardObj.position = ''
        newCardObj.attacked = false
        player2Deck = [...player2Deck, newCardObj]
      }
    )

    this.setState({
      player1Deck: player1Deck,
      player2Deck: player2Deck
    })
  }

  componentDidMount() {
    this.setUpDecks()
    this.start5CardsPlayer()
    this.start5CardsComputer()
  }

  cancel = () => {
    this.setState({
      actionType: ''
    })
  }

  clickHandMonster = (monster) => {
    console.log(monster)
    if (this.state.player1.id === this.state.currentPlayer.id && this.state.summon === 1) {
      this.setState({
        selectedCard: monster,
        actionType: "summon-position"
      })
    }
  }

  playMonsterAttack = () => {
    let newMonsterField = this.state.player1Monsters
    let newHand = this.state.player1Hand.filter(
      cardObj => cardObj.id !== this.state.selectedCard.id
    )

    let emptySlot = this.state.player1Monsters.findIndex(
      obj => Object.keys(obj).length === 0
    )

    let newMonster = this.state.selectedCard
    newMonster.position = "attack"

    newMonsterField.splice(emptySlot, 1, this.state.selectedCard)

    this.setState({
      player1Monsters: newMonsterField,
      player1Hand: newHand,
      actionType: ''
    })
  }

  playMonsterDefense = () => {
    let newMonsterField = this.state.player1Monsters
    let newHand = this.state.player1Hand.filter(
      cardObj => cardObj.id !== this.state.selectedCard.id
    )

    let emptySlot = this.state.player1Monsters.findIndex(
      obj => Object.keys(obj).length === 0
    )

    let newMonster = this.state.selectedCard
    newMonster.position = "defense"

    newMonsterField.splice(emptySlot, 1, this.state.selectedCard)

    this.setState({
      player1Monsters: newMonsterField,
      player1Hand: newHand,
      actionType: ''
    })
  }

  clickFieldMonster = (monster) => {
    console.log(monster)
    console.log(this.state.currentPlayer.id === this.state.player1.id)
    if (this.state.currentPlayer === this.state.player1) {
      this.setState({
        selectedCard: monster,
        actionType: 'fieldMonster'
      })
    }
  }

  changePosition = (monster) => {
    let newMonsterField = this.state.player1Monsters
    let monsterIndex = newMonsterField.findIndex(
      obj => obj.name === monster.name
    )

    if (monster.position === 'attack') {
      let newMonster = monster
      newMonster.position = 'defense'

      newMonsterField.splice(monsterIndex, 1, newMonster)
    } else {
      let newMonster = monster
      newMonster.position = 'attack'

      newMonsterField.splice(monsterIndex, 1, newMonster)
    }

    this.setState({
      player1Monsters: newMonsterField
    })
  }

  monsterAttack = () => {
    this.setState({
      actionType: 'getAttackTarget'
    })
  }

  getAttackTarget = (monster) => {

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
    let newCard
    if (this.state.player2Deck.length > 0) {
      newCard = newDeck.pop()
      this.setState({
        player2Deck: newDeck,
        player2Hand: [...this.state.player2Hand, newCard]
      })
    } else {
      this.props.renderLose()
    }
  }

  drawCard = () => {
    const newDeck = this.state.player1Deck
    let newCard
    if (this.state.player1Deck.length > 0) {
      newCard = newDeck.pop()
      this.setState({
        player1Deck: newDeck,
        player1Hand: [...this.state.player1Hand, newCard]
      })
    }
  }

  showState = () => {
    console.log("hi")
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
      this.props.renderLose()
    }
      // this.computerPlayMonster(strongestHandMonster)


  }

  render() {
    return(
      <div id="duel-field-container">
        <div id="duel-field">
          <button onClick={event => console.log(this.state)}>STATE</button>
          <div>{this.props.player2.name}</div>
          <img src={this.props.player2.image}/>
          <div id="player2-hand">
          <Hand hand={this.state.player2Hand} playMonster={this.computerPlayMonster}/>
          </div>
          <br/>
          <div className="extra-field">
          <div id="player2-deck" className="duel-card" onClick={this.drawCard}>
          p2 Deck
          </div>
          <div id="player2-graveyard" className="duel-card" onClick={this.showGraveyardList}>
          Graveyard
          </div>
          </div>
          <br/>
          <div id="player2-spells">
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
          <MonsterField monsters={this.state.player1Monsters} clickFieldMonster={this.clickFieldMonster}/>
          </div>
          <div id="player1-spells">
          <SpellField spells={this.state.player1Spells} playMonster={this.playMonster}/>
          </div>
          <br/>
          <div className="extra-field">
          <div id="player1-deck" className="duel-card" onClick={this.drawCard}>
          p1 Deck
          </div>
          <div id="player1-graveyard" className="duel-card" onClick={this.showGraveyardList}>
          Graveyard
          </div>
          </div>
          <div id="player1-hand">
            <Hand
              hand={this.state.player1Hand}
              clickHandMonster={this.clickHandMonster}
            />
          </div>
          <img src={this.props.player1.image}/>
          <div>{this.props.player1.name}</div>
        </div>
        <div id="action-box">
          <ActionBox
            actionType={this.state.actionType}
            selectedCard={this.state.selectedCard}
            selectMonsterPosition={this.selectMonsterPosition}
            playMonsterAttack={this.playMonsterAttack}
            playMonsterDefense={this.playMonsterDefense}
            cancel={this.cancel}
            changePosition={this.changePosition}
          />
        </div>
      </div>
    )
  }

}
