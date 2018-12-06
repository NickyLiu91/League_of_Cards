import React from "react";

import Hand from "./Hand.js"
import SpellField from "./SpellField.js"
import MonsterField from "./MonsterField.js"
import ActionBox from "../components/ActionBox.js"
import Graveyard from "./Graveyard.js"

let deckId = 1

export default class DuelField extends React.Component {

  state = {
    turn: 1,
    currentPlayer: this.props.player1,
    summoned: false,
    player1: this.props.player1,
    player1Life: 4000,
    player1Monsters: [{}, {}, {}, {}, {}],
    player1Spells: [{}, {}, {}, {}, {}],
    player1Hand: [],
    player1Deck: this.props.player1Deck,
    player1Graveyard: [],
    player2: this.props.player2,
    player2Life: 4000,
    player2Monsters: [{}, {}, {}, {}, {}],
    player2Spells: [{}, {}, {}, {}, {}],
    player2Hand: [],
    player2Deck: this.props.player2Deck,
    player2Graveyard: [],
    actionType: '',
    selectedCard: '',
    selectedTarget: ''
  }

  emptyField = (field) => {
    return field.every(
      enemyObject => Object.keys(enemyObject).length === 0
    )
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

  displayGraveyard1 = () => {
    this.setState({
      actionType: 'displayPlayer1Graveyard'
    })
  }

  displayGraveyard2 = () => {
    this.setState({
      actionType: 'displayPlayer2Graveyard'
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
        newCardObj.deckId = deckId++
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
    console.log(this.state.player1.id === this.state.currentPlayer.id)
    console.log(this.state.summoned === false)
    if (this.state.summoned === false && this.state.player1.id === this.state.currentPlayer.id) {

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
      actionType: '',
      summoned: true,
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
      actionType: '',
      summoned: true,
    })
  }

  clickFieldMonster = (monster) => {
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

  changeToAttacked = (monster, field) => {
    console.log('atacked')
    let newMonsterField = field
    let monsterIndex = newMonsterField.findIndex(
      obj => obj.name === this.state.selectedCard.name
    )

    let newMonster = monster
    newMonster.attacked = true
    newMonsterField.splice(monsterIndex, 1, newMonster)

    this.setState({
      player1Monsters: newMonsterField
    })
  }


  getEnemyTargetMode = (monster) => {
    this.setState({
      actionType: 'selectTarget'
    })
  }

  highestAttack = (monster) => {
    if (monster.attack > monster.magic) {
      return monster.attack
    } else {
      return monster.magic
    }
  }

  sendSelectedCardFromPlayer1HandToGraveyard = () => {
    let newGraveyard = this.state.player1Graveyard
    let newHand = this.state.player1Hand.filter(
      cardObj => cardObj.id !== this.state.selectedCard.id
    )

    newGraveyard = [...this.state.player1Graveyard, this.state.selectedCard]

    this.setState({
      player1Hand: newHand,
      player1Graveyard: newGraveyard,
      actionType: ''
    })
  }

  sendOwnFromFieldToGraveyard = (monster) => {
    console.log('playergrave')
    let newGraveyard = this.state.player1Graveyard
    let newMonsterField = this.state.player1Monsters

    let emptySlot = this.state.player1Monsters.findIndex(
      obj => obj.name === monster.name
    )

    newGraveyard = [...this.state.player1Graveyard, monster]

    newMonsterField.splice(emptySlot, 1, {})

    this.setState({
      player1Monsters: newMonsterField,
      player1Graveyard: newGraveyard,
      actionType: ''
    })
  }

  sendEnemyFromFieldToGraveyard = (monster) => {
    console.log('cpugrave')
    let newGraveyard = this.state.player2Graveyard
    let newMonsterField = this.state.player2Monsters

    let emptySlot = this.state.player2Monsters.findIndex(
      obj => obj.deckId === monster.deckId
    )

    newGraveyard = [...this.state.player2Graveyard, monster]

    newMonsterField.splice(emptySlot, 1, {})
    console.log(newMonsterField)

    this.setState({
      player2Monsters: newMonsterField,
      player2Graveyard: newGraveyard,
      actionType: ''
    })
  }

  computerSendOwnFromFieldToGraveyard = (monster) => {
    console.log('playergrave')
    let newGraveyard = this.state.player2Graveyard
    let newMonsterField = this.state.player2Monsters

    let emptySlot = this.state.player2Monsters.findIndex(
      obj => obj.deckId === monster.deckId
    )

    newGraveyard = [...this.state.player2Graveyard, monster]

    newMonsterField.splice(emptySlot, 1, {})

    this.setState({
      player2Monsters: newMonsterField,
      player2Graveyard: newGraveyard,
      actionType: ''
    })
  }

  computerSendEnemyFromFieldToGraveyard = (monster) => {
    console.log('cpugrave')
    let newGraveyard = this.state.player1Graveyard
    let newMonsterField = this.state.player1Monsters

    let emptySlot = this.state.player1Monsters.findIndex(
      obj => obj.name === monster.name
    )

    newGraveyard = [...this.state.player1Graveyard, monster]

    newMonsterField.splice(emptySlot, 1, {})

    this.setState({
      player1Monsters: newMonsterField,
      player1Graveyard: newGraveyard,
      actionType: ''
    })
  }

  fight = (monster1, monster2, field) => {
    if (this.emptyField(this.state.player2Monsters)) {
      this.setState({
        player2Life: this.state.player2Life - this.highestAttack(monster1)
      })
    } else if (monster2.position === 'defense') {
      if (this.highestAttack(monster1) > monster2.defense) {

        this.changeToAttacked(monster1, field)

        this.sendEnemyFromFieldToGraveyard(monster2)
      } else if (this.highestAttack(monster1) < monster2.defense) {
        this.changeToAttacked(monster1, field)
        this.setState({
          player1Life: this.state.player1Life - (monster2.defense - this.highestAttack(monster1))
        })
      }
    } else if (monster2.position === 'attack'){
      if (this.highestAttack(monster1) > this.highestAttack(monster2)) {
        this.setState({
          player2Life: this.state.player2Life - (this.highestAttack(monster1) - this.highestAttack(monster2))
        })

        this.changeToAttacked(monster1, field)
        this.sendEnemyFromFieldToGraveyard(monster2)
      } else if (this.highestAttack(monster1) < this.highestAttack(monster2)){
        this.setState({
          player1Life: this.state.player1Life - (this.highestAttack(monster2) - this.highestAttack(monster1))
        })

        this.sendOwnFromFieldToGraveyard(monster1)
      }
    }
    this.setState({
      selectedTarget: '',
      actionType: ''
    })
  }

  computerFight = (monster1, monster2, field) => {
    console.log("computer fighting")
    if (monster2.position === 'defense') {
      if (this.highestAttack(monster1) > monster2.defense) {

        // this.changeToAttacked(monster1, field)

        this.computerSendEnemyFromFieldToGraveyard(monster2)
      } else if (this.highestAttack(monster1) < monster2.defense) {
        // this.changeToAttacked(monster1, field)
        this.setState({
          player2Life: this.state.player1Life - (monster2.defense - this.highestAttack(monster1))
        })
      }
    } else if (monster2.position === 'attack'){
      if (this.highestAttack(monster1) > this.highestAttack(monster2)) {
        this.setState({
          player1Life: this.state.player2Life - (this.highestAttack(monster1) - this.highestAttack(monster2))
        })

        // this.changeToAttacked(monster1, field)
        this.computerSendEnemyFromFieldToGraveyard(monster2)
      } else if (this.highestAttack(monster1) < this.highestAttack(monster2)){
        this.setState({
          player2Life: this.state.player1Life - (this.highestAttack(monster2) - this.highestAttack(monster1))
        })

        this.computerSendOwnFromFieldToGraveyard(monster1)
      }
    }
  }

  selectTarget = (monster) => {
    this.setState({
      selectedTarget: monster
    }, () => {console.log(this.state)})
  }

  computerPlayMonster = (monster) => {
    console.log("cpu play mnstr")
        console.log(this.state.player2Monsters)
    let newMonsterField = this.state.player2Monsters
    console.log(newMonsterField)
    let newHand = this.state.player2Hand.filter(
      cardObj => cardObj.deckId !== monster.deckId
    )

    let emptySlot = this.state.player2Monsters.findIndex(
      obj => Object.keys(obj).length === 0
    )
    console.log(emptySlot)
    console.log(newMonsterField)
    console.log(newMonsterField.splice(emptySlot, 1, monster))


    newMonsterField.splice(emptySlot, 1, monster)
    console.log(newMonsterField)
    console.log(this.state)

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
    console.log(this.state)
  }

  test = (object) => {
    return object.attack
  }

  getStrongestMonsterInOwnHand = () => {

    return this.state.player2Hand.sort( (a, b) => {
    	if(this.highestAttack(a) > this.highestAttack(b)) {
    		return -1
      } else {
      	return 1
      }
      return 0
    })[0]
  }

  getWeakestMonsterInOwnHand = () => {
    return this.state.player2Hand.sort( (a, b) => {
    	if(this.highestAttack(a) > this.highestAttack(b)) {
    		return 1
      } else {
      	return -1
      }
    })[0]
  }

  checkForKillableEnemyMonster = (monster, monster2) => {
    return ( Object.keys(monster).length !== 0 && monster.position === 'attack' && this.highestAttack(monster) <= this.highestAttack(monster2)) ||
    ( Object.keys(monster).length !== 0 && monster.position === 'defense' && monster.defense <= this.highestAttack(monster2))
  }

  playAppropriateMonster = () => {
    let strongestHandMonster = this.getStrongestMonsterInOwnHand()
    let weakestHandMonster = this.getWeakestMonsterInOwnHand()
    let killableEnemyMonster = this.state.player1Monsters.some(
      monster =>
        this.checkForKillableEnemyMonster(monster, strongestHandMonster)
    )

    if (this.state.player1Monsters.every(
      enemyObject => Object.keys(enemyObject).length === 0
    )) {
      strongestHandMonster.position = 'attack'
      this.computerPlayMonster(strongestHandMonster)
    } else if (killableEnemyMonster === false) {
      weakestHandMonster.position = 'defense'

      this.computerPlayMonster(weakestHandMonster)
    } else if (killableEnemyMonster === true ) {
      strongestHandMonster.position = 'attack'

      this.computerPlayMonster(strongestHandMonster)
    }

    this.computerFieldMoves()
  }

  computerFieldMoves = () => {

    let sortedField = this.state.player2Monsters.sort( (a, b) => {
      	if(this.highestAttack(a) > this.highestAttack(b)) {
      		return -1
        } else {
        	return 1
        }
        return 0
      }
    )

    let sortedPlayerField = this.state.player1Monsters.sort( (a, b) => {
      	if(this.highestAttack(a) > this.highestAttack(b)) {
      		return -1
        } else {
        	return 1
        }
        return 0
      }
    )
    //
    // let totalDamage = 0
    //
    sortedField.map(
      monster => {
        // console.log(monster)
        // console.log(Object.keys(monster).length)
        if (Object.keys(monster).length !== 0) {
          if (this.emptyField(sortedPlayerField)) {
            this.setState({
              player1Life: this.state.player1Life - this.highestAttack(monster)
            })
          } else if (monster.position === 'attack' && this.findStrongestKillablePlayerMonster(monster) == undefined) {
            this.changePosition(monster)
          } else if (this.findStrongestKillablePlayerMonster(monster)) {
            let attackTarget = this.findStrongestKillablePlayerMonster(monster)
            this.computerFight(monster, attackTarget, this.state.player2Monsters)
          }
        }
        // else if (this.state.player1Monsters.some(
        //     monster2 =>
        //       ( Object.keys(monster).length !== 0 && monster.position === 'attack' && this.highestAttack(monster2) <= this.highestAttack(monster)) ||
        //       ( Object.keys(monster).length !== 0 && monster.position === 'defense' && monster2.defense <= this.highestAttack(monster))
        //     ) === false)
        //   {
        //     this.changePosition(monster)
        //   } else {
        //     console.log("run multi")
        //     let targetMonster = this.findStrongestKillablePlayerMonster(monster)
        //     if (targetMonster.position === 'defense' && this.highestAttack(monster) > targetMonster.defense) {
        //       this.fight(monster, targetMonster)
        //       this.changeToAttacked(monster)
        //     } else if (targetMonster.position === 'attack' && this.highestAttack(monster) > this.highestAttack(targetMonster)) {
        //       this.fight(monster, targetMonster)
        //       this.changeToAttacked(monster)
        //     }
        //   }
      }
    )

  }

  findStrongestKillablePlayerMonster = (monster) => {
    let sortedPlayerField = this.state.player1Monsters.sort( (a, b) => {
        if(this.highestAttack(a) > this.highestAttack(b)) {
          return -1
        } else {
          return 1
        }
        return 0
      }
    )

    let strongestKillableMonster = sortedPlayerField.find(
      monsterObj =>
        (monsterObj.position === 'attack' && this.highestAttack(monster) > this.highestAttack(monsterObj)) ||
        (monsterObj.position === 'defense' && this.highestAttack > monsterObj.defesse)
    )

    return strongestKillableMonster

    // let strongestKillableMonsterSlot = this.state.player1Monsters.findIndex(
    //   obj => obj.name === strongestKillableMonster.name
    // )

  }

  computerEndTurn = () => {
    this.renewAllFields()
    this.setState({
      summoned: false
    })
    this.drawCard()
  }

  renewAllFields = () => {
    let newMonsterField1 = this.state.player1Monsters
    let newerMonsterField1 = []
    let newMonsterField2 = this.state.player2Monsters
    let newerMonsterField2 = []

    newMonsterField1.map(monster => {
      if (Object.keys(monster).length !== 0){
        let newMonster = monster
        newMonster.attacked = false
        newerMonsterField1 = [...newerMonsterField1, newMonster]
      } else {
        // console.log(monster)
        // console.log(newerMonsterField1)
        // console.log(Object.keys(monster).length)
        newerMonsterField1 = [...newerMonsterField1, {}]
        // console.log(newerMonsterField1)
      }
    })

    newMonsterField2.map(monster => {
      if (Object.keys(monster).length !== 0){
        let newMonster = monster
        newMonster.attacked = false
        newerMonsterField2 = [...newerMonsterField2, newMonster]
      } else {
        newerMonsterField2 = [...newerMonsterField2, {}]
      }
    })

    this.setState({
      player1Monsters: newerMonsterField1,
      player2Monsters: newerMonsterField2,
    })

  }

  sendTargetedCardFromFieldToGraveyard = () => {
    let newGraveyard = this.state.player1Graveyard
    let newMonsterField = this.state.player2Monsters

    let emptySlot = this.state.player2Monsters.findIndex(
      obj => obj.deckId === this.state.selectedTarget.deckId
    )

    newMonsterField.splice(emptySlot, 1, {})

    this.setState({
      player2Monsters: newMonsterField,
      player2Graveyard: newGraveyard,
      actionType: ''
    })
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
    this.setState({
      turn: this.state.turn + 1
    },
     () => {
      const newDeck = this.state.player2Deck
      const newCard = newDeck.pop()
      console.log(this.state.player2Monsters)
      if (this.state.player2Deck.length > 0) {
        this.setState({
          player2Deck: newDeck,
          player2Hand: [...this.state.player2Hand, newCard]
        }, () => this.playAppropriateMonster()
      )
      this.computerEndTurn()
      } else {
        this.props.renderLose()
      }
    })
  }

  render() {
    return(
      <div id="duel-field-container">
        <div id="duel-field">
          <button onClick={event => console.log(this.state)}>STATE</button>
          <div>{this.props.player2.name}</div>
          <img src={this.props.player2.image}/>
          <div id="enemy-field">
            <div id="player2-hand">
            <Hand hand={this.state.player2Hand} playMonster={this.computerPlayMonster}/>
            </div>
            <br/>
            <div className="extra-field">
            <div id="player2-deck" className="duel-card" onClick={this.drawCard}>
            p2 Deck
            </div>
            <div id="player2-graveyard" className="duel-card" onClick={this.displayGraveyard2}>
            Graveyard
            </div>
            </div>
            <br/>
            <div id="player2-spells">
            <SpellField spells={this.state.player2Spells} />
            </div>
            <div id="player2-monsters">
              <MonsterField
              player={"player2"}
                monsters={this.state.player2Monsters}
                selectTarget={this.selectTarget}
              />
            </div>
          </div>
          <br/>
          <br/>
          <div id="middle-bar">
          <div className="life-points">{this.state.player2Life}</div>
          <button onClick={this.computerTurn}>End Turn</button>
          <div className="life-points">{this.state.player1Life}</div>
          </div>
          <br/>
          <br/>
          <div id="player-field">
            <div id="player1-monsters">
              <MonsterField
                monsters={this.state.player1Monsters}
                clickFieldMonster={this.clickFieldMonster}
                selectTarget={this.selectTarget}
                player={"player1"}
              />
            </div>
            <div id="player1-spells">
            <SpellField spells={this.state.player1Spells} playMonster={this.playMonster}/>
            </div>
            <br/>
            <div className="extra-field">
            <div id="player1-deck" className="duel-card" onClick={this.drawCard}>
            p1 Deck
            </div>
            <div id="player1-graveyard" className="duel-card" onClick={this.displayGraveyard1}>
            Graveyard
            </div>
            </div>
            <div id="player1-hand">
              <Hand
                hand={this.state.player1Hand}
                clickHandMonster={this.clickHandMonster}
              />
            </div>
          </div>
          <img src={this.props.player1.image}/>
          <div>{this.props.player1.name}</div>
        </div>
        <div id="action-box">
          <ActionBox
            actionType={this.state.actionType}
            selectedCard={this.state.selectedCard}
            selectedTarget={this.state.selectedTarget}
            playMonsterAttack={this.playMonsterAttack}
            playMonsterDefense={this.playMonsterDefense}
            getEnemyTargetMode={this.getEnemyTargetMode}
            cancel={this.cancel}
            changePosition={this.changePosition}
            selectedTarget={this.state.selectedTarget}
            fight={this.fight}
            player1Graveyard={this.state.player1Graveyard}
            player2Graveyard={this.state.player2Graveyard}
            emptyField={this.emptyField}
            player2Monsters={this.state.player2Monsters}
            player1Monsters={this.state.player1Monsters}
            turn={this.state.turn}
          />
        </div>
      </div>
    )
  }

}
