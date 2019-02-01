import React from "react";

import Hand from "./Hand.js"
import SpellField from "./SpellField.js"
import MonsterField from "./MonsterField.js"
import ActionBox from "../components/ActionBox.js"
import Graveyard from "./Graveyard.js"

let totalDamage = 8000

export default class DuelField extends React.Component {

  state = {
    turn: 1,
    currentPlayer: "player1",
    currentOpponent: "player2",
    summoned: false,
    player1: this.props.player1,
    player1Life: 8000,
    player1Monsters: [{}, {}, {}, {}, {}],
    player1Spells: [{}, {}, {}, {}, {}],
    player1Hand: [],
    player1Deck: this.props.player1Deck,
    player1Graveyard: [],
    player2: this.props.player2,
    player2Life: 8000,
    player2Monsters: [{}, {}, {}, {}, {}],
    player2Spells: [{}, {}, {}, {}, {}],
    player2Hand: [],
    player2Deck: this.props.player2Deck,
    player2Graveyard: [],
    actionType: '',
    selectedCard: '',
    selectedTarget: '',
    selectedItemTarget: ''
  }

  swapCurrentPlayer = () => {
    if (this.state.currentPlayer === "player1") {
      this.setState({
        currentPlayer: "player2",
        currentOpponent: "player1",
        summoned: false
      }, () => {this.drawCard()})
    } else if (this.state.currentPlayer === "player2") {
      this.setState({
        currentPlayer: "player1",
        currentOpponent: "player2",
        summoned: false,
        turn: this.state.turn + 1
      }, () => {this.drawCard()})
    }
  }

  emptyField = (field) => {
    return field.every(
      object => Object.keys(object).length === 0
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
        this.setState({
          player1Life: -9999
        })
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
        this.setState({
          player2Life: -9999
        })
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
        newCardObj.target = ''
        newCardObj.originalAttack = cardObj.attack
        newCardObj.originalMagic = cardObj.magic
        newCardObj.originalDefense = cardObj.defense
        player1Deck = [...player1Deck, newCardObj]
      }
    )

    this.props.player2Deck.map(
      cardObj => {
        let newCardObj = cardObj
        newCardObj.position = ''
        newCardObj.attacked = false
        newCardObj.originalAttack = cardObj.attack
        newCardObj.originalMagic = cardObj.magic
        newCardObj.originalDefense = cardObj.defense
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
      actionType: '',
      selectedTarget: '',
      selectedItemTarget: '',
      selectedCard: ''
    })
  }

  clickHandCard = (card) => {
    console.log(card)
    // console.log(this.state.player1.id === this.state.currentPlayer.id)
    if (this.state.summoned === false && card.cardtype === "Champion") {
      // if (this.state.currentPlayer === "player1") {
        this.setState({
          selectedCard: card,
          actionType: "summon-position"
        })
      // }
    } else if (card.cardtype === "Ability") {
      if (card.name === "Requiem" || card.name === "Death Mark" || card.name === "Primordial Burst" || card.name === "Silver Bolts" ||
    card.name === "Demacian Justice") {
        this.setState({
          selectedCard: card,
          actionType: "non-target ability"
        })
      }
    } else if (card.cardtype === "Item") {
      this.setState({
        selectedCard: card,
        actionType: "item"
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
    // if (this.state.currentPlayer === "player1") {
      this.setState({
        selectedCard: monster,
        actionType: 'fieldMonster'
      })
    // }
  }

  changePosition = (monster) => {
    let newMonsterField = this.state.player1Monsters
    let monsterIndex = newMonsterField.findIndex(
      obj => obj.id === monster.id
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
      obj => obj.id === this.state.selectedCard.id
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
      actionType: 'selectAttackTarget'
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

  sendBothFromFieldToGraveyard = (monster1, monster2) => {
    let newGraveyard = eval(`this.state.${this.state.currentPlayer}Graveyard`)
    let newMonsterField = eval(`this.state.${this.state.currentPlayer}Monsters`)
    let newSpellField = eval(`this.state.${this.state.currentPlayer}Spells`)

    let emptySlot = eval(`this.state.${this.state.currentPlayer}Monsters`).findIndex(
      obj => obj.id === monster1.id
    )

    monster1.attack = monster1.originalAttack
    monster1.magic = monster1.originalMagic
    monster1.defense = monster1.originalDefense

    newGraveyard = [...eval(`this.state.${this.state.currentPlayer}Graveyard`), monster1]

    // newSpellField = newSpellField.filter(obj => Object.keys(obj).length !== 0).filter(card => card.target.id !== monster.id)
    for (let i = 0; i < newSpellField.length; i ++) {
      if (Object.keys(newSpellField[i]).length !== 0 && newSpellField[i].target.id === monster1.id){
        newSpellField.splice(i, 1, {})
        newGraveyard = [...newGraveyard, newSpellField[i]]
      }
    }

    newMonsterField.splice(emptySlot, 1, {})

    let newEnemyGraveyard = eval(`this.state.${this.state.currentOpponent}Graveyard`)
    let newEnemyMonsterField = eval(`this.state.${this.state.currentOpponent}Monsters`)
    let newEnemySpellField = eval(`this.state.${this.state.currentOpponent}Spells`)

    let emptyEnemySlot = eval(`this.state.${this.state.currentOpponent}Monsters`).findIndex(
      obj => obj.id === monster2.id
    )

    monster2.attack = monster2.originalAttack
    monster2.magic = monster2.originalMagic
    monster2.defense = monster2.originalDefense

    newEnemyGraveyard = [...eval(`this.state.${this.state.currentOpponent}Graveyard`), monster2]

    for (let i = 0; i < newSpellField.length; i++) {
      if (Object.keys(newEnemySpellField[i]).length !== 0 && newEnemySpellField[i].target.id === monster2.id){
        newEnemyGraveyard = [...newEnemyGraveyard, newEnemySpellField[i]]
        newEnemySpellField.splice(i, 1, {})
      }
    }

    newEnemyMonsterField.splice(emptyEnemySlot, 1, {})


    this.setState({
      [this.state.currentPlayer + 'Monsters']: newMonsterField,
      [this.state.currentPlayer + 'Graveyard']: newGraveyard,
      [this.state.currentPlayer + 'Spells']: newSpellField,
      [this.state.currentOpponent + 'Monsters']: newEnemyMonsterField,
      [this.state.currentOpponent + 'Graveyard']: newEnemyGraveyard,
      [this.state.currentOpponent + 'Spells']: newEnemySpellField,
      actionType: ''
    })
  }

  sendOwnFromFieldToGraveyard = (monster) => {
      let newGraveyard = eval(`this.state.${this.state.currentPlayer}Graveyard`)
      let newMonsterField = eval(`this.state.${this.state.currentPlayer}Monsters`)
      let newSpellField = eval(`this.state.${this.state.currentPlayer}Spells`)

      let emptySlot = eval(`this.state.${this.state.currentPlayer}Monsters`).findIndex(
        obj => obj.id === monster.id
      )

      monster.attack = monster.originalAttack
      monster.magic = monster.originalMagic
      monster.defense = monster.originalDefense

      newGraveyard = [...eval(`this.state.${this.state.currentPlayer}Graveyard`), monster]

      // newSpellField = newSpellField.filter(obj => Object.keys(obj).length !== 0).filter(card => card.target.id !== monster.id)
      for (let i = 0; i < newSpellField.length; i ++) {
        if (Object.keys(newSpellField[i]).length !== 0 && newSpellField[i].target.id === monster.id){
          newSpellField.splice(i, 1, {})
          newGraveyard = [...newGraveyard, newSpellField[i]]
        }
      }

      newMonsterField.splice(emptySlot, 1, {})

      this.setState({
        [this.state.currentPlayer + 'Monsters']: newMonsterField,
        [this.state.currentPlayer + 'Graveyard']: newGraveyard,
        [this.state.currentPlayer + 'Spells']: newSpellField,
        actionType: ''
      })
  }

  sendEnemyFromFieldToGraveyard = (monster) => {
    console.log("bye")
      let newGraveyard = eval(`this.state.${this.state.currentOpponent}Graveyard`)
      let newMonsterField = eval(`this.state.${this.state.currentOpponent}Monsters`)
      let newSpellField = eval(`this.state.${this.state.currentOpponent}Spells`)

      let emptySlot = eval(`this.state.${this.state.currentOpponent}Monsters`).findIndex(
        obj => obj.id === monster.id
      )

      monster.attack = monster.originalAttack
      monster.magic = monster.originalMagic
      monster.defense = monster.originalDefense

      newGraveyard = [...eval(`this.state.${this.state.currentOpponent}Graveyard`), monster]

      for (let i = 0; i < newSpellField.length; i++) {
        if (Object.keys(newSpellField[i]).length !== 0 && newSpellField[i].target.id === monster.id){
          newGraveyard = [...newGraveyard, newSpellField[i]]
          newSpellField.splice(i, 1, {})
        }
      }

      newMonsterField.splice(emptySlot, 1, {})

      this.setState({
        [this.state.currentOpponent + 'Monsters']: newMonsterField,
        [this.state.currentOpponent + 'Graveyard']: newGraveyard,
        [this.state.currentOpponent + 'Spells']: newSpellField,
        actionType: ''
      })
  }

  fight = (monster1, monster2) => {
    console.log(monster1)
    console.log(monster2)
    console.log(this.state.currentPlayer)
    if (this.state.selectedTarget === '') {
      this.setState({
        actionType: '',
        selectedTarget: '',
        selectedCard: ''
      })
    } else if (this.state.currentPlayer === 'player1') {

      if (monster2.position === 'defense') {
        if (this.highestAttack(monster1) > monster2.defense) {
          monster1.attacked = true
          this.sendEnemyFromFieldToGraveyard(monster2)
        } else if (this.highestAttack(monster1) < monster2.defense) {
          monster1.attacked = true
          this.setState({
            player1Life: this.state.player1Life - (monster2.defense - this.highestAttack(monster1)),
            selectedTarget: '',
            actionType: ''
          })
        }
      } else if (monster2.position === 'attack'){
        if (this.highestAttack(monster1) > this.highestAttack(monster2)) {
          monster1.attacked = true
          this.setState({
            player2Life: this.state.player2Life - (this.highestAttack(monster1) - this.highestAttack(monster2)),
            selectedTarget: '',
            actionType: ''
          }, () => {this.sendEnemyFromFieldToGraveyard(monster2)})
        } else if (this.highestAttack(monster1) < this.highestAttack(monster2)){
          this.setState({
            player1Life: this.state.player1Life - (this.highestAttack(monster2) - this.highestAttack(monster1)),
            selectedTarget: '',
            actionType: ''
          }, () => {this.sendOwnFromFieldToGraveyard(monster1)})
        } else if (this.highestAttack(monster1) === this.highestAttack(monster2)){

          this.sendBothFromFieldToGraveyard(monster1, monster2)
        }
      }

    }
    // else {
    //   console.log("computer fighting")
    //   if (monster2.position === 'defense') {
    //     if (this.highestAttack(monster1) > monster2.defense) {
    //
    //       // this.changeToAttacked(monster1, field)
    //       this.sendEnemyFromFieldToGraveyard(monster2)
    //     } else if (this.highestAttack(monster1) < monster2.defense) {
    //       // this.changeToAttacked(monster1, field)
    //       this.setState({
    //         player2Life: this.state.player2Life - (monster2.defense - this.highestAttack(monster1))
    //       })
    //     }
    //   } else if (monster2.position === 'attack'){
    //     if (this.highestAttack(monster1) > this.highestAttack(monster2)) {
    //
    //         totalDamage = totalDamage - (this.highestAttack(monster1) - this.highestAttack(monster2))
    //
    //
    //       // this.changeToAttacked(monster1, field)
    //       this.sendEnemyFromFieldToGraveyard(monster2)
    //     } else if (this.highestAttack(monster1) < this.highestAttack(monster2)){
    //       this.setState({
    //         player2Life: this.state.player2Life - (this.highestAttack(monster2) - this.highestAttack(monster1))
    //       })
    //
    //       this.sendOwnFromFieldToGraveyard(monster1)
    //     } else if (this.highestAttack(monster1) === this.highestAttack(monster2)){
    //
    //       this.sendEnemyFromFieldToGraveyard(monster2)
    //       this.sendOwnFromFieldToGraveyard(monster1)
    //     }
    //   }
    // }
  }

  selectTarget = (monster) => {
    this.setState({
      selectedTarget: monster
    }, () => {console.log(this.state)})
  }

  // computerPlayMonster = (monster) => {
  //   let newMonsterField = this.state.player2Monsters
  //   let newHand = this.state.player2Hand.filter(
  //     cardObj => cardObj.id !== monster.id
  //   )
  //
  //   let emptySlot = this.state.player2Monsters.findIndex(
  //     obj => Object.keys(obj).length === 0
  //   )
  //
  //   newMonsterField.splice(emptySlot, 1, monster)
  //
  //   this.setState({
  //     player2Monsters: newMonsterField,
  //     player2Hand: newHand
  //   })
  // }

  drawCard = () => {
    if (this.state.currentPlayer === 'player1') {
      const newDeck = this.state.player1Deck
      let newCard
      if (this.state.player1Deck.length > 0) {
        newCard = newDeck.pop()
        this.setState({
          player1Deck: newDeck,
          player1Hand: [...this.state.player1Hand, newCard]
        })
      } else {
        this.setState({
          player1Life: -9999
        })
      }
    } else {
      const newDeck = this.state.player2Deck
      let newCard
      if (this.state.player2Deck.length > 0) {
        newCard = newDeck.pop()
        this.setState({
          player2Deck: newDeck,
          player2Hand: [...this.state.player2Hand, newCard]
        })
      } else {
        this.setState({
          player2Life: -9999
        })
      }
    }
  }

  showState = () => {
    console.log(this.state)
  }

  // getStrongestMonsterInOwnHand = () => {
  //
  //   return this.state.player2Hand.filter(obj => obj.cardtype === 'Champion').sort( (a, b) => {
  //   	if(this.highestAttack(a) > this.highestAttack(b)) {
  //   		return -1
  //     } else {
  //     	return 1
  //     }
  //     return 0
  //   })[0]
  // }
  //
  // getWeakestMonsterInOwnHand = () => {
  //   return this.state.player2Hand.filter(obj => obj.cardtype === 'Champion').sort( (a, b) => {
  //   	if(this.highestAttack(a) > this.highestAttack(b)) {
  //   		return 1
  //     } else {
  //     	return -1
  //     }
  //   })[0]
  // }
  //
  // checkForKillableEnemyMonster = (monster, monster2) => {
  //   return ( Object.keys(monster).length !== 0 && monster.position === 'attack' && this.highestAttack(monster) <= this.highestAttack(monster2)) ||
  //   ( Object.keys(monster).length !== 0 && monster.position === 'defense' && monster.defense <= this.highestAttack(monster2))
  // }

  // playAppropriateMonster = () => {
  //   let strongestHandMonster = this.getStrongestMonsterInOwnHand()
  //   let weakestHandMonster = this.getWeakestMonsterInOwnHand()
  //   let killableEnemyMonster = this.state.player1Monsters.some(
  //     monster =>
  //       this.checkForKillableEnemyMonster(monster, strongestHandMonster)
  //   )
  //
  //   if (this.state.player1Monsters.every(
  //     enemyObject => Object.keys(enemyObject).length === 0
  //   )) {
  //     strongestHandMonster.position = 'attack'
  //     this.computerPlayMonster(strongestHandMonster)
  //   } else if (killableEnemyMonster === false) {
  //     // if (this.state.player2Hand.filter(obj => obj.name === "Requiem").length > 0) {
  //     //   let cardToUse = this.state.player2Hand.find(obj => obj.name === "Requiem")
  //     //   this.requiem(cardToUse)
  //     // }
  //
  //     weakestHandMonster.position = 'defense'
  //     // let cardToUse = this.state.player2Hand.find(obj => obj.name === "Requiem")
  //     // this.setState({
  //     //   player2Hand: this.state.player2Hand.filter(card => card.id !== cardToUse.id)
  //     // }, () => {  this.computerPlayMonster(weakestHandMonster)})
  //     this.computerPlayMonster(weakestHandMonster)
  //
  //   } else if (killableEnemyMonster === true ) {
  //     strongestHandMonster.position = 'attack'
  //
  //     this.computerPlayMonster(strongestHandMonster)
  //   }
  //
  //   this.computerFieldMoves()
  // }

  // computerFieldMoves = () => {
  //
  //   let sortedField = this.state.player2Monsters.sort( (a, b) => {
  //     	if(this.highestAttack(a) > this.highestAttack(b)) {
  //     		return -1
  //       } else {
  //       	return 1
  //       }
  //       return 0
  //     }
  //   )
  //
  //   let sortedPlayerField = this.state.player1Monsters.sort( (a, b) => {
  //     	if(this.highestAttack(a) > this.highestAttack(b)) {
  //     		return -1
  //       } else {
  //       	return 1
  //       }
  //       return 0
  //     }
  //   )
  //
  //   sortedField.map(
  //     monster => {
  //       // console.log(monster)
  //       // console.log(Object.keys(monster).length)
  //       if (Object.keys(monster).length !== 0) {
  //         if (this.emptyField(sortedPlayerField)) {
  //             totalDamage = totalDamage - this.highestAttack(monster)
  //         } else if (monster.position === 'attack' && this.findStrongestKillablePlayerMonster(monster) == undefined) {
  //           console.log(monster)
  //           console.log(this.findStrongestKillablePlayerMonster(monster))
  //           let newMonsterField = this.state.player2Monsters
  //           let monsterIndex = newMonsterField.findIndex(
  //             obj => obj.id === monster.id
  //           )
  //
  //           let newMonster = monster
  //           newMonster.position = 'defense'
  //
  //           newMonsterField.splice(monsterIndex, 1, newMonster)
  //
  //           this.setState({
  //             player2Monsters: newMonsterField
  //           })
  //         } else if (this.findStrongestKillablePlayerMonster(monster)) {
  //           let attackTarget = this.findStrongestKillablePlayerMonster(monster)
  //           monster.position = 'attack'
  //           this.fight(monster, attackTarget, this.state.player2Monsters)
  //         }
  //       }
  //     }
  //   )
  //   this.setState({
  //     player1Life: totalDamage
  //   })
  // }

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
        (monsterObj.position === 'attack' && this.highestAttack(monster) >= this.highestAttack(monsterObj)) ||
        (monsterObj.position === 'defense' && this.highestAttack(monster) >= monsterObj.defense)
    )

    return strongestKillableMonster
  }

  computerEndTurn = () => {
    let newMonsterField1 = this.state.player1Monsters
    let newMonsterField2 = this.state.player2Monsters

    newMonsterField1.forEach(monster => {
      if (Object.keys(monster).length !== 0){
        monster.attacked = false
      }
    })

    newMonsterField2.forEach(monster => {
      if (Object.keys(monster).length !== 0){
        monster.attacked = false
      }
    })

      this.swapCurrentPlayer()

  }

  // renewAllFields = () => {
  //   let newMonsterField1 = this.state.player1Monsters
  //   let newerMonsterField1 = []
  //   let newMonsterField2 = this.state.player2Monsters
  //   let newerMonsterField2 = []
  //
  //   newMonsterField1.map(monster => {
  //     if (Object.keys(monster).length !== 0){
  //       let newMonster = monster
  //       newMonster.attacked = false
  //       newerMonsterField1 = [...newerMonsterField1, newMonster]
  //     } else {
  //       // console.log(monster)
  //       // console.log(newerMonsterField1)
  //       // console.log(Object.keys(monster).length)
  //       newerMonsterField1 = [...newerMonsterField1, {}]
  //       // console.log(newerMonsterField1)
  //     }
  //   })
  //
  //   newMonsterField2.map(monster => {
  //     if (Object.keys(monster).length !== 0){
  //       let newMonster = monster
  //       newMonster.attacked = false
  //       newerMonsterField2 = [...newerMonsterField2, newMonster]
  //     } else {
  //       newerMonsterField2 = [...newerMonsterField2, {}]
  //     }
  //   })
  //
  //   this.setState({
  //     player1Monsters: newerMonsterField1,
  //     player2Monsters: newerMonsterField2,
  //   })
  //
  // }

  // sendTargetedCardFromFieldToGraveyard = () => {
  //   let newGraveyard = this.state.player1Graveyard
  //   let newMonsterField = this.state.player2Monsters
  //
  //   let emptySlot = this.state.player2Monsters.findIndex(
  //     obj => obj.id === this.state.selectedTarget.id
  //   )
  //
  //   newMonsterField.splice(emptySlot, 1, {})
  //
  //   this.setState({
  //     player2Monsters: newMonsterField,
  //     player2Graveyard: newGraveyard,
  //     actionType: ''
  //   })
  // }

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
      turn: this.state.turn + 1,
      currentPlayer: "player2",
      currentOpponent: "player1"
    },
     () => {
      if (this.state.player2Deck.length > 0) {
        const newDeck = this.state.player2Deck
        const newCard = newDeck.pop()
        this.setState({
          player2Deck: newDeck,
          player2Hand: [...this.state.player2Hand, newCard]
        }, () => this.performTurn()
      )} else {
        this.setState({
          player2Life: -9999
        })
      }
    })
  }

  performTurn = () => {
    console.log(emptyMonsterSlot)
    let testVar = "HELLO"
    let computerHand = this.state.player2Hand
    let computerMonsters = this.state.player2Monsters
    let computerSpells = this.state.player2Spells
    let computerGraveyard = this.state.player2Graveyard

    let playerMonsters = this.state.player1Monsters
    let playerSpells = this.state.player1Spells
    let playerGraveyard = this.state.player1Graveyard
    let playerLife = this.state.player1Life

    let items = computerHand.filter(card => card.cardtype === "Item")
    let abilities = computerHand.filter(card => card.cardtype === "Ability")

    let strongestPossibleHandMonster = this.getStrongestMonsterInOwnHand(computerHand, items)
    let weakestPossibleHandMonster = this.getWeakestMonsterInOwnHand(computerHand, items)
    let strongestMonsterOnField = this.getStrongestMonsterOnOwnField(computerMonsters)

    let strongestMonster

    if (Object.keys(strongestMonsterOnField).length === 0 || this.highestAttack(strongestPossibleHandMonster) > this.highestAttack(strongestMonsterOnField) ) {
      strongestMonster = strongestPossibleHandMonster
    } else {
      strongestMonster = strongestMonsterOnField
    }
    // console.log(strongestPossibleHandMonster)
    // console.log(weakestPossibleHandMonster)
    // console.log(strongestMonsterOnField)
    // console.log(strongestMonster)

    let strongerEnemyMonsters = this.getStrongerEnemyMonsters(strongestMonster, this.state.player1Monsters)

    if (strongerEnemyMonsters.length > 0 && computerHand.filter(card => card.name === "Requiem").length > 0) {
      let reqiuemCard = computerHand.find(card => card.name === "Requiem")
      computerHand = computerHand.filter(card => card.id !== reqiuemCard.id)

      computerGraveyard = [...computerGraveyard, reqiuemCard]

      playerMonsters.forEach(monster => {
        if (Object.keys(monster).length > 0) {
          playerGraveyard = [...playerGraveyard, monster]
        }
      })

      playerSpells.forEach(spell => {
        if (playerMonsters.includes(spell.target)) {
          playerGraveyard = [...playerGraveyard, spell]
        }
      })

      playerMonsters = [{}, {}, {}, {}, {}]
      playerSpells = [{}, {}, {}, {}, {}]
    }

    // computerMonsters.forEach(
    //   monster => {
    //     if (Object.keys(monster).length !== 0 && monster.attacked === false) {
    //       if (this.emptyField(playerMonsters)) {
    //         playerLife = playerLife - this.highestAttack(monster)
    //       } else if (this.findStrongestKillablePlayerMonster(monster, playerMonsters)) {
    //         let attackTarget = this.findStrongestKillablePlayerMonster(monster, playerMonsters)
    //         let attackTargetSlot = playerMonsters.findIndex(card => card.id === attackTarget.id)
    //
    //         playerMonsters.splice(attackTargetSlot, 1)
    //         playerGraveyard = [...playerGraveyard, attackTarget]
    //
    //         monster.attacked = true
    //
    //         if (attackTarget.position === "attack" && this.highestAttack(attackTarget) === this.highestAttack(monster)) {
    //           let attackingMonsterSlot = computerMonsters.findIndex(card => card.id === monster.id)
    //
    //           computerMonsters.splice(attackingMonsterSlot, 1)
    //           computerGraveyard = [...computerGraveyard, monster]
    //         } else if (attackTarget.position === "attack" && this.highestAttack(attackTarget) < this.highestAttack(monster)) {
    //           playerLife = playerLife - (this.highestAttack(monster) - this.highestAttack(attackTarget))
    //         }
    //       }
    //     }
    //   }
    // )

    // if (this.emptyField(playerMonsters) || this.findStrongestKillablePlayerMonster(strongestPossibleHandMonster, playerMonsters)) {

    let emptyMonsterSlot = computerMonsters.findIndex(slot => Object.keys(slot).length === 0)
    console.log(emptyMonsterSlot)

      if (emptyMonsterSlot !== undefined ) {
        computerHand = computerHand.splice(card => card.id !== strongestPossibleHandMonster.id)
        computerMonsters.splice(emptyMonsterSlot, 1, strongestPossibleHandMonster)
        strongestPossibleHandMonster.position = "attack"
      }

      items.forEach(item => {
        if (item.description.includes(strongestPossibleHandMonster.role)) {
          computerHand = computerHand.filter(card => card.id !== item.id)

          let emptySpellSlot = computerSpells.findIndex(slot => Object.keys(slot).length === 0)
          computerSpells.splice(emptySpellSlot, 1, item)
          item.target = strongestPossibleHandMonster
        }
      })

      computerMonsters.forEach(
        monster => {
          if (Object.keys(monster).length !== 0 && monster.attacked === false) {
            if (this.emptyField(playerMonsters)) {
              playerLife = playerLife - this.highestAttack(monster)
            } else if (this.findStrongestKillablePlayerMonster(monster, playerMonsters)) {
              monster.position = "attack"

              let attackTarget = this.findStrongestKillablePlayerMonster(monster, playerMonsters)
              let attackTargetSlot = playerMonsters.findIndex(card => card.id === attackTarget.id)

              playerMonsters.splice(attackTargetSlot, 1, {})
              playerGraveyard = [...playerGraveyard, attackTarget]

              monster.attacked = true

              if (attackTarget.position === "attack" && this.highestAttack(attackTarget) === this.highestAttack(monster)) {
                let attackingMonsterSlot = computerMonsters.findIndex(card => card.id === monster.id)

                computerMonsters.splice(attackingMonsterSlot, 1)
                computerGraveyard = [...computerGraveyard, monster]
              } else if (attackTarget.position === "attack" && this.highestAttack(attackTarget) < this.highestAttack(monster)) {
                playerLife = playerLife - (this.highestAttack(monster) - this.highestAttack(attackTarget))
              }
            } else {
              if (monster.defense > this.highestAttack(monster) || monster.attack < 1500) {
                monster.position = "defense"
              }
            }
          }
        }
      )
    // } else {
    //   let summonMonsterHandSlot = computerHand.findIndex(monster => monster.id === weakestPossibleHandMonster.id)
    //   computerHand.splice(summonMonsterHandSlot, 1)
    //
    //   let emptyMonsterSlot = computerMonsters.findIndex(slot => Object.keys(slot).length === 0)
    //   computerMonsters[emptyMonsterSlot] = weakestPossibleHandMonster
    //
    //   computerMonsters.forEach(
    //     monster => {
    //       if (Object.keys(monster).length !== 0 && monster.attacked === false) {
    //         if (this.emptyField(playerMonsters)) {
    //           playerLife = playerLife - this.highestAttack(monster)
    //         } else if (this.findStrongestKillablePlayerMonster(monster, playerMonsters)) {
    //
    //           monster.position = "attack"
    //
    //           let attackTarget = this.findStrongestKillablePlayerMonster(monster, playerMonsters)
    //           let attackTargetSlot = playerMonsters.findIndex(card => card.id === attackTarget.id)
    //
    //           playerMonsters.splice(attackTargetSlot, 1)
    //           playerGraveyard = [...playerGraveyard, attackTarget]
    //
    //           monster.attacked = true
    //
    //           if (attackTarget.position === "attack" && this.highestAttack(attackTarget) === this.highestAttack(monster)) {
    //             let attackingMonsterSlot = computerMonsters.findIndex(card => card.id === monster.id)
    //
    //             computerMonsters.splice(attackingMonsterSlot, 1)
    //             computerGraveyard = [...computerGraveyard, monster]
    //           } else if (attackTarget.position === "attack" && this.highestAttack(attackTarget) < this.highestAttack(monster)) {
    //             playerLife = playerLife - (this.highestAttack(monster) - this.highestAttack(attackTarget))
    //           }
    //         } else {
    //           if (monster.defense > this.highestAttack(monster) || monster.attack < 1500) {
    //             monster.position = "defense"
    //           }
    //         }
    //       }
    //     }
    //   )
    // }

    this.setState({
      player1Monsters: playerMonsters,
      player1Spells: playerSpells,
      player1Graveyard: playerGraveyard,
      player1Life: playerLife,
      player2Hand: computerHand,
      player2Monsters: computerMonsters,
      player2Spells: computerSpells,
      player2Graveyard: computerGraveyard
    }, () => {this.computerEndTurn()})
  }

  getStrongestMonsterInOwnHand = (hand, items) => {

    let monsters = hand.filter(obj => obj.cardtype === 'Champion').sort( (a, b) => {
      if(this.highestAttack(a) > this.highestAttack(b)) {
    		return -1
      } else {
      	return 1
      }
      return 0
    })

    let buffedMonsters = []

    monsters.forEach(monster => {
      let newMonster = Object.assign({}, monster)
      items.forEach(item => {
        if (item.description.includes(newMonster.role)) {
          newMonster.attack = newMonster.attack + parseInt(item.description)
          newMonster.magic = newMonster.magic + parseInt(item.description)
          newMonster.defense = newMonster.defense + parseInt(item.description)
        }
      })
      buffedMonsters = [...buffedMonsters, newMonster]
    })

    return buffedMonsters.sort( (a, b) => {
      if(this.highestAttack(a) > this.highestAttack(b)) {
    		return -1
      } else {
      	return 1
      }
      return 0
    })[0]
  }

  getWeakestMonsterInOwnHand = (hand, items) => {
    let monsters = hand.filter(obj => obj.cardtype === 'Champion').sort( (a, b) => {
      if(this.highestAttack(a) > this.highestAttack(b)) {
    		return -1
      } else {
      	return 1
      }
      return 0
    })

    let buffedMonsters = []

    monsters.forEach(monster => {
      let newMonster = Object.assign({}, monster)
      items.forEach(item => {
        if (item.description.includes(newMonster.role)) {
          newMonster.attack = newMonster.attack + parseInt(item.description)
          newMonster.magic = newMonster.magic + parseInt(item.description)
          newMonster.defense = newMonster.defense + parseInt(item.description)
        }
      })
      buffedMonsters = [...buffedMonsters, newMonster]
    })

    return buffedMonsters.sort( (a, b) => {
      if(this.highestAttack(a) > this.highestAttack(b)) {
    		return -1
      } else {
      	return 1
      }
      return 0
    })[buffedMonsters.length - 1]
  }

  getStrongestMonsterOnOwnField = (field) => {
    let monster = ''
    field.forEach(
      monsterObj => {if (this.highestAttack(monsterObj) > this.highestAttack(monster) || monster === '') {
        monster = monsterObj
      }}
    )
    return monster
    // return field.sort( (a, b) => {
    // 	if(this.highestAttack(a) > this.highestAttack(b)) {
    // 		return 1
    //   } else {
    //   	return -1
    //   }
    // })[0]
  }

  getStrongerEnemyMonsters = (monster, field) => {
    console.log(monster)
    return field.filter(monsterObj => {
      if (monsterObj.position === "attack") {
        return this.highestAttack(monsterObj) > this.highestAttack(monster)
      } else if (monsterObj.position === "defense"){
        return monsterObj.defense > this.highestAttack(monster)
      }
    })
  }

  findStrongestKillablePlayerMonster = (monster, field) => {

    let sortedPlayerField = field.sort( (a, b) => {
        if (a.position === "attack" && b.position === "attack") {
          if(this.highestAttack(a) > this.highestAttack(b)) {
            return -1
          } else {
            return 1
          }
          return 0
        } else if (a.position === "attack" && b.position === "defense") {
          if(this.highestAttack(a) > b.defense) {
            return -1
          } else {
            return 1
          }
          return 0
        } else if (a.position === "defense" && b.position === "attack") {
          if(a.defense > this.highestAttack(b)) {
            return -1
          } else {
            return 1
          }
          return 0
        } else if (a.position === "defense" && b.position === "defense") {
          if(a.defense > b.defense) {
            return -1
          } else {
            return 1
          }
          return 0
        }
      }
    )

    let strongestKillableMonster = sortedPlayerField.find(
      monsterObj =>
        (monsterObj.position === 'attack' && this.highestAttack(monster) > this.highestAttack(monsterObj)) ||
        (monsterObj.position === 'defense' && this.highestAttack(monster) > monsterObj.defense)
    )

    if (strongestKillableMonster === undefined) {
      strongestKillableMonster = sortedPlayerField.find(
        monsterObj => monsterObj.position === 'attack' && this.highestAttack(monster) === this.highestAttack(monsterObj)
      )
    }

    return strongestKillableMonster
  }

  requiem = (card) => {
    if (this.state.currentPlayer === "player1") {
      let newGraveyard = this.state.player2Graveyard
      let newMonsterField = this.state.player2Monsters
      let newSpellField = this.state.player2Spells
      let newHand = this.state.player1Hand.filter(
        cardObj => cardObj.id !== card.id
      )

      this.state.player2Monsters.forEach(monster => {
        if (Object.keys(monster).length > 1) {

          let emptySlot = newMonsterField.findIndex(
            obj => obj.id === monster.id
          )

          monster.attack = monster.originalAttack
          monster.magic = monster.originalMagic
          monster.defense = monster.originalDefense

          newGraveyard = [...newGraveyard, monster]

          for (let i = 0; i < newSpellField.length; i++) {
            if (Object.keys(newSpellField[i]).length !== 0 && newSpellField[i].target.id === monster.id){
              newGraveyard = [...newGraveyard, newSpellField[i]]
              newSpellField.splice(i, 1, {})
            }
          }

          newMonsterField.splice(emptySlot, 1, {})
        }
      })

      this.setState({
        player2Monsters: newMonsterField,
        player2Graveyard: newGraveyard,
        player2Spells: newSpellField,
        player1Hand: newHand,
        player1Graveyard: [...this.state.player1Graveyard, card],
        actionType: ''
      })
    } else {
      let newGraveyard = this.state.player1Graveyard
      let newMonsterField = this.state.player1Monsters
      let newSpellField = this.state.player1Spells
      let newHand = this.state.player2Hand.filter(
        cardObj => cardObj.id !== card.id
      )

      this.state.player1Monsters.forEach(monster => {
        if (Object.keys(monster).length > 1) {

          let emptySlot = newMonsterField.findIndex(
            obj => obj.id === monster.id
          )

          monster.attack = monster.originalAttack
          monster.magic = monster.originalMagic
          monster.defense = monster.originalDefense

          newGraveyard = [...newGraveyard, monster]

          for (let i = 0; i < newSpellField.length; i++) {
            if (Object.keys(newSpellField[i]).length !== 0 && newSpellField[i].target.id === monster.id){
              newGraveyard = [...newGraveyard, newSpellField[i]]
              newSpellField.splice(i, 1, {})
            }
          }

          newMonsterField.splice(emptySlot, 1, {})
        }
      })

      this.setState({
        player1Monsters: newMonsterField,
        player1Graveyard: newGraveyard,
        player1Spells: newSpellField,
        player2Hand: newHand,
        player2Graveyard: [...this.state.player2Graveyard, card]
      })
    }
  }

  demacianJustice = (card) => {
    if (this.state.currentPlayer === 'player1') {
      let highestMonster = this.state.player2Monsters.sort( (a, b) => {
        if(this.highestAttack(a) > this.highestAttack(b)) {
          return -1
        } else {
          return 1
        }
        return 0
      })[0]

      this.sendEnemyFromFieldToGraveyard(highestMonster)

      let newHand = this.state.player1Hand.filter(
        cardObj => cardObj.id !== card.id
      )

      this.setState({
        // player2Monsters: newMonsterField,
        // player2Graveyard: newGraveyard,
        player1Hand: newHand,
        player1Graveyard: [...this.state.player1Graveyard, card],
        actionType: ''
      })
    } else {
      let highestMonster = this.state.player1Monsters.sort( (a, b) => {
        if(a.attack > b.attack) {
          return -1
        } else {
          return 1
        }
        return 0
      })[0]

      this.sendEnemyFromFieldToGraveyard(highestMonster)

      let newHand = this.state.player2Hand.filter(
        cardObj => cardObj.id !== card.id
      )

      this.setState({
        player2Hand: newHand,
        player2Graveyard: [...this.state.player2Graveyard, card],
        actionType: ''
      })
    }
  }

  deathMark = (card) => {
    if (this.state.currentPlayer === 'player1') {
      let highestMonster = this.state.player2Monsters.sort( (a, b) => {
        if(a.attack > b.attack) {
          return -1
        } else {
          return 1
        }
        return 0
      })[0]

      this.sendEnemyFromFieldToGraveyard(highestMonster)

      let newHand = this.state.player1Hand.filter(
        cardObj => cardObj.id !== card.id
      )

      this.setState({
        // player2Monsters: newMonsterField,
        // player2Graveyard: newGraveyard,
        player1Hand: newHand,
        player1Graveyard: [...this.state.player1Graveyard, card],
        actionType: ''
      })
    } else {
      let highestMonster = this.state.player1Monsters.sort( (a, b) => {
        if(a.attack > b.attack) {
          return -1
        } else {
          return 1
        }
        return 0
      })[0]

      this.sendEnemyFromFieldToGraveyard(highestMonster)

      let newHand = this.state.player2Hand.filter(
        cardObj => cardObj.id !== card.id
      )

      this.setState({
        player2Hand: newHand,
        player2Graveyard: [...this.state.player2Graveyard, card],
        actionType: ''
      })
    }
  }

  primordialBurst = (card) => {
    if (this.state.currentPlayer === 'player1') {
      let highestMonster = this.state.player2Monsters.sort( (a, b) => {
        if(a.magic > b.magic) {
          return -1
        } else {
          return 1
        }
        return 0
      })[0]

      this.sendEnemyFromFieldToGraveyard(highestMonster)

      let newHand = this.state.player1Hand.filter(
        cardObj => cardObj.id !== card.id
      )

      this.setState({
        // player2Monsters: newMonsterField,
        // player2Graveyard: newGraveyard,
        player1Hand: newHand,
        player1Graveyard: [...this.state.player1Graveyard, card],
        actionType: ''
      })
    } else {
      let highestMonster = this.state.player1Monsters.sort( (a, b) => {
        if(a.magic > b.magic) {
          return -1
        } else {
          return 1
        }
        return 0
      })[0]

      this.sendEnemyFromFieldToGraveyard(highestMonster)

      let newHand = this.state.player2Hand.filter(
        cardObj => cardObj.id !== card.id
      )

      this.setState({
        player2Hand: newHand,
        player2Graveyard: [...this.state.player2Graveyard, card],
        actionType: ''
      })
    }
  }

  silverBolts = (card) => {
    if (this.state.currentPlayer === 'player1') {
      let highestMonster = this.state.player2Monsters.sort( (a, b) => {
        if(a.defense > b.defense) {
          return -1
        } else {
          return 1
        }
        return 0
      })[0]

      this.sendEnemyFromFieldToGraveyard(highestMonster)

      let newHand = this.state.player1Hand.filter(
        cardObj => cardObj.id !== card.id
      )

      this.setState({
        // player2Monsters: newMonsterField,
        // player2Graveyard: newGraveyard,
        player1Hand: newHand,
        player1Graveyard: [...this.state.player1Graveyard, card],
        actionType: ''
      })
    } else {
      let highestMonster = this.state.player1Monsters.sort( (a, b) => {
        if(a.defense > b.defense) {
          return -1
        } else {
          return 1
        }
        return 0
      })[0]

      this.sendEnemyFromFieldToGraveyard(highestMonster)

      let newHand = this.state.player2Hand.filter(
        cardObj => cardObj.id !== card.id
      )

      this.setState({
        player2Hand: newHand,
        player2Graveyard: [...this.state.player2Graveyard, card],
        actionType: ''
      })
    }
  }

  getItemTargetMode = () => {
    console.log(this.state)
    console.log(this.state.selectedCard)
    this.setState({
      actionType: 'selectItemTarget'
    })
  }

  selectItemTarget = (card) => {
    this.setState({
      selectedItemTarget: card
    })
  }

  // longSword = (card) => {
  //   if (this.state.currentPlayer === 'player1') {
  //     if (this.state.selectedItemTarget === '') {
  //       this.setState({
  //         actionType: ''
  //       })
  //     } else {
  //       let newMonsterField = this.state.player1Monsters
  //       let newHand = this.state.player1Hand.filter(
  //         cardObj => cardObj.id !== card.id
  //       )
  //       let newSpellField = this.state.player1Spells
  //
  //       let monsterToEquip = newMonsterField.find(obj => obj.id === this.state.selectedItemTarget.id)
  //       let monsterToEquipSlot = newMonsterField.findIndex(obj => obj.id === this.state.selectedItemTarget.id)
  //       let emptySlot = this.state.player1Spells.findIndex(
  //         obj => Object.keys(obj).length === 0
  //       )
  //
  //       card.target = monsterToEquip
  //
  //       newSpellField.splice(emptySlot, 1, card)
  //
  //       monsterToEquip.attack = monsterToEquip.attack + 300
  //
  //       newMonsterField.splice(monsterToEquipSlot, 1, monsterToEquip)
  //
  //       this.setState({
  //         player1Monsters: newMonsterField,
  //         player1Hand: newHand,
  //         player1Spells: newSpellField,
  //         actionType: '',
  //         selectedItemTarget: ''
  //       })
  //     }
  //   }
    // else {
    //   let newMonsterField = this.state.player2Monsters
    //   let newHand = this.state.player2Hand.filter(
    //     cardObj => cardObj.id !== card.id
    //   )
    //   let newSpellField = this.state.player2Spells
    //
    //   let monsterToEquip = newMonsterField.find(obj => obj.id === this.state.selectedItemTarget.id)
    //   let monsterToEquipSlot = newMonsterField.findIndex(obj => obj.id === this.state.selectedItemTarget.id)
    //   let emptySlot = this.state.player1Spells.findIndex(
    //     obj => Object.keys(obj).length === 0
    //   )
    //
    //   card.target = monsterToEquip
    //
    //   newSpellField.splice(emptySlot, 1, card)
    //
    //   monsterToEquip.attack = monsterToEquip.attack + 300
    //
    //   newMonsterField.splice(monsterToEquipSlot, 1, monsterToEquip)
    //
    //   this.setState({
    //     player2Monsters: newMonsterField,
    //     player2Hand: newHand,
    //     player2Spells: newSpellField,
    //     actionType: '',
    //     selectedItemTarget: ''
    //   })
    // }
  // }

  equip = (card) => {
    if (card.name === "Long Sword" || card.name === "B. F. Sword" || card.name === "Amplifying Tome" ||
      card.name === "Needlessly Large Rod" || card.name === "Ruby Crystal" || card.name === "Giant's Belt") {
      if (this.state.selectedItemTarget === '') {
        this.setState({
          actionType: '',
          selectedItemTarget: ''
        })
      } else {
        let newMonsterField = this.state.player1Monsters
        let newHand = this.state.player1Hand.filter(
          cardObj => cardObj.id !== card.id
        )
        let newSpellField = this.state.player1Spells

        let monsterToEquip = newMonsterField.find(obj => obj.id === this.state.selectedItemTarget.id)
        let monsterToEquipSlot = newMonsterField.findIndex(obj => obj.id === this.state.selectedItemTarget.id)
        let emptySlot = this.state.player1Spells.findIndex(
          obj => Object.keys(obj).length === 0
        )

        card.target = monsterToEquip

        newSpellField.splice(emptySlot, 1, card)

        monsterToEquip[`${card.description.split(' ')[3]}`] = monsterToEquip[`${card.description.split(' ')[3]}`] + parseInt(card.description)

        newMonsterField.splice(monsterToEquipSlot, 1, monsterToEquip)

        this.setState({
          player1Monsters: newMonsterField,
          player1Hand: newHand,
          player1Spells: newSpellField,
          actionType: '',
          selectedItemTarget: ''
        })
      }
    } else {
      if (this.state.selectedItemTarget === '' || !card.description.includes(this.state.selectedItemTarget.role)) {
        this.setState({
          actionType: '',
          selectedItemTarget: ''
        })
      } else {
        let newMonsterField = this.state.player1Monsters
        let newHand = this.state.player1Hand.filter(
          cardObj => cardObj.id !== card.id
        )
        let newSpellField = this.state.player1Spells

        let monsterToEquip = newMonsterField.find(obj => obj.id === this.state.selectedItemTarget.id)
        let monsterToEquipSlot = newMonsterField.findIndex(obj => obj.id === this.state.selectedItemTarget.id)
        let emptySlot = this.state.player1Spells.findIndex(
          obj => Object.keys(obj).length === 0
        )

        card.target = monsterToEquip

        newSpellField.splice(emptySlot, 1, card)

        monsterToEquip.attack = monsterToEquip.attack + parseInt(card.description)
        monsterToEquip.magic = monsterToEquip.magic + parseInt(card.description)
        monsterToEquip.defense = monsterToEquip.defense + parseInt(card.description)

        newMonsterField.splice(monsterToEquipSlot, 1, monsterToEquip)

        this.setState({
          player1Monsters: newMonsterField,
          player1Hand: newHand,
          player1Spells: newSpellField,
          actionType: '',
          selectedItemTarget: ''
        })
      }
    }
  }

directAttack = (monster) => {
  this.setState({
    player2Life: this.state.player2Life - this.highestAttack(monster)
  })
}

  render() {
    if (this.state.player1Life <= 0) {
      return(
        <div id="post-match">
        <img id="shadow-isles" src="image/shadow-isles.jpeg" />
          <div id="post-match-message">
            <h1>YOU HAVE RUN OUT OF STAMINA</h1>
            <h1>YOU ARE NO LONGER ABLE TO FIGHT</h1>
            <h1>YOU CAN ONLY WATCH ON AS YOUR ENEMY COMES TO DELIVER THE FINISHING BLOW</h1>
          </div>
        </div>
      )
    } else if (this.state.player2Life <= 0) {
      return(
        <div id="post-match">
          <img id="targon" src="image/targon.jpeg" />
          <div id="post-match-message">
            <h1>CONGRATULATIONS!</h1>
            <h1>YOU HAVE DEFEATED YOUR OPPONENT!</h1>
          </div>
        </div>
      )
    } else {
      return(
        <div>
          <img id="noxus-arena" src="image/noxus-arena.jpeg" />
          <div id="duel-field-container">
            <div id="duel-field">

              <div>{this.props.player2.name}</div>
              <img src={this.props.player2.image}/>
              <div>
                <img id="summoners-rift" src="image/summoners-rift.jpg"/>
                <div id="enemy-field">
                  <div id="player2-hand">
                  <Hand hand={this.state.player2Hand}/>
                  </div>
                  <br/>
                  <div className="extra-field">
                  <div id="player2-deck" className="duel-card" >
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
              <div>
                <img id="summoners-rift" src="image/summoners-rift.jpg"/>
                <div id="player-field">

                  <div id="player1-monsters">
                    <MonsterField
                      monsters={this.state.player1Monsters}
                      clickFieldMonster={this.clickFieldMonster}
                      selectTarget={this.selectTarget}
                      selectItemTarget={this.selectItemTarget}
                      actionType={this.state.actionType}
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
                </div>
                <div id="player1-hand">
                  <Hand
                    hand={this.state.player1Hand}
                    clickHandCard={this.clickHandCard}
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
                requiem={this.requiem}
                demacianJustice={this.demacianJustice}
                deathMark={this.deathMark}
                primordialBurst={this.primordialBurst}
                silverBolts={this.silverBolts}
                getItemTargetMode={this.getItemTargetMode}
                selectedItemTarget={this.state.selectedItemTarget}
                equip={this.equip}
                directAttack={this.directAttack}
                // longSword={this.longSword}
                // bfSword={this.bfSword}
                // amplifyingTome={this.amplifyingTome}
                // needlesslyLargeRod={this.needlesslyLargeRod}
                // rubyCrystal={this.rubyCrystal}
                // giantsBelt={this.giantsBelt}
              />
            </div>
          </div>
        </div>
      )
    }
  }

}
