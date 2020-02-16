import React from "react";
import {connect} from 'react-redux';
import Hand from "./Hand.js"
import SpellField from "./SpellField.js"
import MonsterField from "./MonsterField.js"
import ActionBox from "../components/ActionBox.js"
import Graveyard from "./Graveyard.js"
import PostDuel from "../components/PostDuel.js"

let totalDamage = 8000
var audio = new Audio('files/SummonersCall.mp3')

class DuelField extends React.Component {

  state = {
    turn: 1,
    currentPlayer: "player1",
    currentOpponent: "player2",
    summoned: false,
    player1: this.props.account,
    player1Life: 8000,
    player1Monsters: [{}, {}, {}, {}, {}],
    player1Spells: [{}, {}, {}, {}, {}],
    player1Hand: [],
    player1Deck: this.props.deckCards.slice(0),
    player1Graveyard: [],
    player2: this.props.enemy,
    player2Life: 500,
    player2Monsters: [{}, {}, {}, {}, {}],
    player2Spells: [{}, {}, {}, {}, {}],
    player2Deck: this.props.enemyDeck.slice(0),
    player2Hand: [],
    player2Graveyard: [],
    actionType: '',
    selectedCard: '',
    selectedTarget: '',
    selectedItemTarget: '',
    rewardCard: '',
    display: ''
  }

  shuffle = (array) => {
    for (var i = array.length - 1; i > 0; i--) {
      var j = Math.floor(Math.random() * (i + 1));
      var temp = array[i];
      array[i] = array[j];
      array[j] = temp;
    }
    return array
}

  swapCurrentPlayer = () => {
    // if (this.state.currentPlayer === "player1") {
    //   this.setState({
    //     currentPlayer: "player2",
    //     currentOpponent: "player1",
    //     summoned: false
    //   }, () => {this.drawCard()})
    // }
    if (this.state.currentPlayer === "player2") {
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

  fullField = (field) => {
    return field.every(
      object => Object.keys(object).length > 0
    )
  }

  start5CardsPlayer = () => {
    this.setState({
      player1Deck: this.shuffle(this.state.player1Deck)
    }, () => {
      let newDeck = this.state.player1Deck
      let newHand = []
      let newCard
      let i = 0
      for(i = 0; i < 5; i ++) {
        if (this.state.player1Deck.length > 0) {
          newCard = newDeck.pop()
          newHand = [...newHand, newCard]
        }
      }
      this.setState({
        player1Deck: newDeck,
        player1Hand: newHand
      })
    })
  }

  start5CardsComputer = () => {
    this.setState({
      player2Deck: this.shuffle(this.state.player2Deck)
    }, () => {
      let newDeck = this.state.player2Deck
      let newHand = []
      let newCard
      let i = 0
      for(i = 0; i < 5; i ++) {
        if (this.state.player2Deck.length > 0) {
          newCard = newDeck.pop()
          console.log(newCard)
          newHand = [...newHand, newCard]
        }
      }
      this.setState({
        player2Deck: newDeck,
        player2Hand: newHand
      })
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

    this.props.deckCards.map(
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

    // player1Deck = this.shuffle(player1Deck)

    this.props.enemyDeck.map(
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

    // player2Deck = this.shuffle(player2Deck)

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
    // console.log(card)
    // console.log(this.state.player1.id === this.state.currentPlayer.id)
    if (this.state.summoned === false && card.cardtype === "Champion") {
      if (this.state.currentPlayer === "player1") {
        this.setState({
          selectedCard: card,
          actionType: "summon-position"
        })
      }
    } else if (card.cardtype === "Ability") {
      if (card.name === "Requiem" || card.name === "Death Mark" || card.name === "Primordial Burst" || card.name === "Silver Bolts" ||
    card.name === "Demacian Justice") {
        this.setState({
          selectedCard: card,
          actionType: "non-target ability"
        })
      } else if (card.name === "Noxian Guillotine") {
        this.setState({
          selectedCard: card,
          actionType: "noxianGuillotineTarget"
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
    if (this.state.selectedCard.name === "Noxian Guillotine") {
      this.setState({
        actionType: 'noxianGuillotine'
      })
    } else {
      this.setState({
        actionType: 'selectAttackTarget'
      })
    }

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
        if (this.highestAttack(monster1) === monster2.defense) {
          monster1.attacked = true
          this.setState({
            selectedCard: '',
            selectedTarget: '',
            actionType: ''
          })
        } else if (this.highestAttack(monster1) > monster2.defense) {
          monster1.attacked = true
          this.setState({
            selectedCard: '',
            selectedTarget: '',
            actionType: ''
          }, () => {this.sendEnemyFromFieldToGraveyard(monster2)})
        } else if (this.highestAttack(monster1) < monster2.defense) {
          monster1.attacked = true
          this.setState({
            player1Life: this.state.player1Life - (monster2.defense - this.highestAttack(monster1)),
            selectedCard: '',
            selectedTarget: '',
            actionType: ''
          }, () => {
            if (this.state.player1Life <= 0) {
              this.lose()
            }
          })
        }
      } else if (monster2.position === 'attack'){
        if (this.highestAttack(monster1) > this.highestAttack(monster2)) {
          monster1.attacked = true
          // console.log(this.state.player2Life)
          // console.log(this.state.player2Life - (this.highestAttack(monster1) - this.highestAttack(monster2)))
          this.setState({
            player2Life: this.state.player2Life - (this.highestAttack(monster1) - this.highestAttack(monster2)),
            selectedCard: '',
            selectedTarget: '',
            actionType: ''
          }, () => {
            if (this.state.player2Life <= 0) {
              console.log("WIN")
              this.win()
            } else {
              console.log("wtf")
              this.sendEnemyFromFieldToGraveyard(monster2)
            }
          })
        } else if (this.highestAttack(monster1) < this.highestAttack(monster2)){
          this.setState({
            player1Life: this.state.player1Life - (this.highestAttack(monster2) - this.highestAttack(monster1)),
            selectedCard: '',
            selectedTarget: '',
            actionType: ''
          }, () => {
            if (this.state.player1Life <= 0) {
              this.lose()
            } else {
              this.sendOwnFromFieldToGraveyard(monster1)
            }
          })
        } else if (this.highestAttack(monster1) === this.highestAttack(monster2)){
          this.setState({
            selectedCard: '',
            selectedTarget: '',
            actionType: ''
          }, () => {this.sendBothFromFieldToGraveyard(monster1, monster2)})
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

  computerPlayMonster = (monster) => {
    let newMonsterField = this.state.player2Monsters
    let newHand = this.state.player2Hand.filter(
      cardObj => cardObj.id !== monster.id
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

  // drawCard = () => {
  //   if (this.state.currentPlayer === 'player1') {
  //     if (this.state.player1Hand.length < 7) {
  //       const newDeck = this.state.player1Deck
  //       let newCard
  //       if (this.state.player1Deck.length > 0) {
  //         newCard = newDeck.pop()
  //         this.setState({
  //           player1Deck: newDeck,
  //           player1Hand: [...this.state.player1Hand, newCard]
  //         })
  //       } else {
  //         this.lose()
  //       }
  //     } else {
  //       const newDeck = this.state.player1Deck
  //       let newCard
  //       if (this.state.player1Deck.length > 0) {
  //         newCard = newDeck.pop()
  //         this.setState({
  //           player1Deck: newDeck,
  //           player1Graveyard: [...this.state.player1Graveyard, newCard]
  //         })
  //       } else {
  //         this.lose()
  //       }
  //     }
  //   } else {
  //     const newDeck = this.state.player2Deck
  //     let newCard
  //     if (this.state.player2Deck.length > 0) {
  //       newCard = newDeck.pop()
  //       this.setState({
  //         player2Deck: newDeck,
  //         player2Hand: [...this.state.player2Hand, newCard]
  //       })
  //     } else {
  //       this.win()
  //     }
  //   }
  // }

  drawCard = () => {
    if (this.state.currentPlayer === 'player1') {
      let newDeck = this.state.player1Deck
      if (this.state.player1Deck.length === 0) {
        this.lose()
      } else if (this.state.player1Hand.length < 7) {
        let newCard
        newCard = newDeck.pop()
        this.setState({
          player1Deck: newDeck,
          player1Hand: [...this.state.player1Hand, newCard]
        })
      } else {
        let newDeck = this.state.player1Deck
        let newCard
        newCard = newDeck.pop()
        this.setState({
          player1Deck: newDeck,
          player1Graveyard: [...this.state.player1Graveyard, newCard]
        })
      }
    }
    else {
      let newDeck = this.state.player2Deck
      if (this.state.player2Deck.length === 0) {
        this.win()
      } else if (this.state.player2Hand.length < 7) {
        let newCard
        newCard = newDeck.pop()
        this.setState({
          player2Deck: newDeck,
          player2Hand: [...this.state.player2Hand, newCard]
        })
      } else {
        let newDeck = this.state.player2Deck
        let newCard
        newCard = newDeck.pop()
        this.setState({
          player2Deck: newDeck,
          player2Graveyard: [...this.state.player2Graveyard, newCard]
        })
      }
    }
  }

  lose = () => {
    this.setState({
      display: 'Lose'
    })
  }

  win = () => {
    let listOfCards = this.props.enemyDeck
    let number = Math.floor(Math.random() * 100) + 1
    console.log(number)
    let newCard
    //
    const diamonds = listOfCards.filter(obj => obj.rarity === "Diamond")
    const platinums = listOfCards.filter(obj => obj.rarity === "Platinum")
    const golds = listOfCards.filter(obj => obj.rarity === "Gold")
    const silvers = listOfCards.filter(obj => obj.rarity === "Silver")
    const bronzes = this.props.cards.filter(obj => obj.rarity === "Bronze")
    //
    if (number > 98) {
      if (diamonds.length === 0 && platinums.length === 0 && golds.length === 0 && silvers.length === 0) {
        console.log("a")
        newCard = bronzes[Math.floor(Math.random() * bronzes.length)]
      } else if (diamonds.length === 0 && platinums.length === 0 && golds.length === 0) {
        console.log("b")
        newCard = silvers[Math.floor(Math.random() * silvers.length)]
      } else if (diamonds.length === 0 && platinums.length === 0) {
        console.log("c")
        newCard = golds[Math.floor(Math.random() * golds.length)]
      } else if (diamonds.length === 0) {
        console.log("d")
        newCard = platinums[Math.floor(Math.random() * platinums.length)]
      } else {
        console.log("e")
        newCard = diamonds[Math.floor(Math.random() * diamonds.length)]
      }
    } else if ( number > 93) {
      if (platinums.length === 0 && golds.length === 0 && silvers.length === 0) {
        console.log("f")
        newCard = bronzes[Math.floor(Math.random() * bronzes.length)]
      } else if (platinums.length === 0 && golds.length === 0 ) {
        newCard = silvers[Math.floor(Math.random() * silvers.length)]
        console.log("g")
      } else if (platinums.length === 0) {
        console.log("h")
        newCard = golds[Math.floor(Math.random() * golds.length)]
      } else {
        console.log("i")
        newCard = platinums[Math.floor(Math.random() * platinums.length)]
      }
    } else if ( number > 85) {
      if (golds.length === 0 && silvers.length === 0) {
        console.log("j")
        newCard = bronzes[Math.floor(Math.random() * bronzes.length)]
      } else if (golds.length === 0 ) {
        console.log("k")
        newCard = silvers[Math.floor(Math.random() * silvers.length)]
      } else {
        console.log("l")
        newCard = golds[Math.floor(Math.random() * golds.length)]
      }
    } else if ( number > 50) {
      if (silvers.length === 0) {
        console.log("m")
        newCard = bronzes[Math.floor(Math.random() * bronzes.length)]
      } else {
        console.log("n")
        newCard = silvers[Math.floor(Math.random() * silvers.length)]
      }
    } else {
      console.log("o")
      newCard = bronzes[Math.floor(Math.random() * bronzes.length)]
    }
    console.log(newCard)

    this.setState({
      rewardCard: newCard,
      display: 'Win'
    })

    let oldCards = this.props.currentPlayerCards
    oldCards.push(newCard)
    this.props.changeCurrentPlayerCards(oldCards)

    let newCollection = oldCards.map(card => {
        card.quantity = this.props.currentPlayerCards.filter(cardObj => cardObj.name === card.name).length;
        return card
      }
    )

    this.props.changeNoDupesCurrentPlayerCards(newCollection)


    fetch("http://localhost:3000/api/v1/cards", {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json'
      },
      body: JSON.stringify(
          {
            player_id: this.state.player1.id,
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
      .then( res => {
        if (this.props.location === "campaign") {
          fetch(`http://localhost:3000/api/v1/players/${this.state.player1.id}`, {
          method: 'PATCH',
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
          body: JSON.stringify(
              {
                gold: this.props.gold + 30,
                dialogue: this.props.dialogue + 1
              }
        )})
      } else {
        fetch(`http://localhost:3000/api/v1/players/${this.state.player1.id}`, {
        method: 'PATCH',
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
        body: JSON.stringify(
            {
              gold: this.props.gold + 30,
            }
      )})
      }
      }
    )
    .then(res => {
      if (this.props.location === "campaign" && this.state.player1.defeated_id <= this.state.player2.id) {
        console.log("hi")
        fetch(`http://localhost:3000/api/v1/players/${this.state.player1.id}`, {
          method: 'PATCH',
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
          body: JSON.stringify(
            {
              defeated_id: this.props.player1.defeated_id + 1
            }
          )
        })
      }
    })
    .then(res => {
      this.props.changeDefeated(this.props.defeated + 1)
      this.reward(this.props.location)
    })
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
       let newDeck = this.state.player2Deck
       if (this.state.player2Deck.length === 0) {
         this.win()
       } else if (this.state.player2Hand.length < 7) {
         let newCard
         newCard = newDeck.pop()
         this.setState({
           player2Deck: newDeck,
           player2Hand: [...this.state.player2Hand, newCard]
         }, () => {this.performTurn()})
       } else {
         let newDeck = this.state.player2Deck
         let newCard
         newCard = newDeck.pop()
         this.setState({
           player2Deck: newDeck,
           player2Graveyard: [...this.state.player2Graveyard, newCard]
         }, () => {this.performTurn()})
       }
    })
  }

  performTurn = () => {
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
    let monsters = computerHand.filter(card => card.cardtype === "Champion")

    let strongestHandMonster
    let strongestPossibleHandMonster
    let weakestPossibleHandMonster
    let strongestMonsterInField
    let strongestPossibleMonsterInField
    let strongestMonster
    let strongerEnemyMonsters
    let buffedStrongestPossibleHandMonster
    let buffedStrongestPossibleMonsterInField

    if (monsters.length > 0 && !this.emptyField(computerMonsters)) {
      strongestHandMonster = this.getStrongestMonsterInOwnHand(monsters)
      strongestPossibleHandMonster = this.getStrongestPossibleMonsterInOwnHand(computerHand, items)
      weakestPossibleHandMonster = this.getWeakestMonsterInOwnHand(computerHand, items)
      strongestMonsterInField = this.getStrongestMonsterInOwnField(computerMonsters)
      strongestPossibleMonsterInField = this.getStrongestPossibleMonsterInOwnField(computerMonsters, items)
      buffedStrongestPossibleHandMonster = this.getBuffedStrongestPossibleMonsterInOwnHand(computerHand, items)
      buffedStrongestPossibleMonsterInField = this.getBuffedStrongestPossibleMonsterInOwnField(computerMonsters, items)

      if (Object.keys(strongestPossibleMonsterInField).length === 0 || this.highestAttack(strongestPossibleHandMonster) > this.highestAttack(strongestPossibleMonsterInField) ) {
        strongestMonster = strongestPossibleHandMonster
        strongerEnemyMonsters = this.getStrongerEnemyMonsters(buffedStrongestPossibleHandMonster, playerMonsters)
      } else {
        strongestMonster = strongestPossibleMonsterInField
        strongerEnemyMonsters = this.getStrongerEnemyMonsters(buffedStrongestPossibleMonsterInField, playerMonsters)
      }
      console.log("a")
    } else if (monsters.length > 0 && this.emptyField(computerMonsters)) {
      strongestPossibleHandMonster = this.getStrongestPossibleMonsterInOwnHand(computerHand, items)
      weakestPossibleHandMonster = this.getWeakestMonsterInOwnHand(computerHand, items)
      strongestHandMonster = this.getStrongestMonsterInOwnHand(monsters)
      buffedStrongestPossibleHandMonster = this.getBuffedStrongestPossibleMonsterInOwnHand(computerHand, items)

      strongestMonster = strongestPossibleHandMonster

      strongerEnemyMonsters = this.getStrongerEnemyMonsters(buffedStrongestPossibleHandMonster, playerMonsters)
      // console.log(strongestMonster)
      // console.log(strongerEnemyMonsters)
      // console.log(strongerEnemyMonsters[0])
      // console.log(strongerEnemyMonsters.length)
      console.log("b")
    } else if (monsters.length === 0 && !this.emptyField(computerMonsters)){
      strongestPossibleMonsterInField = this.getStrongestPossibleMonsterInOwnField(computerMonsters, items)
      buffedStrongestPossibleMonsterInField = this.getBuffedStrongestPossibleMonsterInOwnField(computerMonsters, items)
      strongestMonster = strongestPossibleMonsterInField

      strongerEnemyMonsters = this.getStrongerEnemyMonsters(buffedStrongestPossibleMonsterInField, playerMonsters)
      console.log("c")
    } else {
      strongerEnemyMonsters = playerMonsters.filter(obj => Object.keys(obj).length > 0)
      console.log("d")
    }

    console.log(strongerEnemyMonsters)

    if (strongerEnemyMonsters.length > 1 && computerHand.filter(card => card.name === "Requiem").length > 0) {
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
    } else if (strongerEnemyMonsters.length > 0) {
      if (computerHand.filter(card => card.name === "Noxian Guillotine").length > 0) {
        while (strongerEnemyMonsters.length > 0 && computerHand.filter(card => card.name === "Noxian Guillotine").length > 0) {
          // console.log("EXECUTE TIME")
          let cardToUse = computerHand.find(card => card.name === "Noxian Guillotine")
          let cardToUseSlot = computerHand.findIndex(card => card.id === cardToUse.id)

          computerHand.splice(cardToUseSlot, 1)

          computerGraveyard = [...computerGraveyard, cardToUse]

          let monsterToRemove = playerMonsters.find(card => card.id === strongerEnemyMonsters[0].id)
          let monsterToRemoveSlot = playerMonsters.findIndex(card => card.id === strongerEnemyMonsters[0].id)

          playerMonsters.splice(monsterToRemoveSlot, 1, {})

          for (let i = 0; i < playerSpells.length; i++) {
            if (Object.keys(playerSpells[i]).length !== 0 && playerSpells[i].target.id === monsterToRemove.id){
              playerGraveyard = [...playerGraveyard, playerSpells[i]]
              playerSpells.splice(i, 1, {})
            }
          }

          playerGraveyard = [...playerGraveyard, monsterToRemove]

          strongerEnemyMonsters.splice(0, 1)
        }
      } else if (computerHand.filter(card => card.name === "Requiem").length > 0) {
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

    }

    if (monsters.length === 0 && !this.emptyField(computerMonsters)) {
      items.forEach(item => {
        if (item.description.includes(strongestMonster.role)) {

          if (!this.fullField(computerSpells)) {
            let emptySpellSlot = computerSpells.findIndex(slot => Object.keys(slot).length === 0)
            computerSpells.splice(emptySpellSlot, 1, item)
            item.target = strongestMonster

            strongestMonster.attack = strongestMonster.attack + parseInt(item.description)
            strongestMonster.magic = strongestMonster.magic + parseInt(item.description)
            strongestMonster.defense = strongestMonster.defense + parseInt(item.description)

            computerHand = computerHand.filter(card => card.id !== item.id)
          }

        }

      })
    }

    // let sortedMonsters = computerMonsters.slice(0, computerMonsters.length).sort( (a, b) => {
    //   if(this.highestAttack(a) > this.highestAttack(b)) {
    // 		return 1
    //   } else {
    //   	return -1
    //   }
    //   return 0
    // })
    // console.log(sortedMonsters)

    // if (!this.emptyField(playerMonsters)) {
    //   sortedMonsters.forEach(
    //     monster => {
    //       if (Object.keys(monster).length !== 0 && monster.attacked === false) {
    //         if (this.emptyField(playerMonsters)) {
    //           playerLife = playerLife - this.highestAttack(monster)
    //           monster.attacked = true
    //           if (playerLife <= 0) {
    //             this.lose()
    //           }
    //         } else if (this.findStrongestKillablePlayerMonster(monster, playerMonsters)) {
    //           monster.position = "attack"
    //
    //           let attackTarget = this.findStrongestKillablePlayerMonster(monster, playerMonsters)
    //           let attackTargetSlot = playerMonsters.findIndex(card => card.id === attackTarget.id)
    //
    //           playerMonsters.splice(attackTargetSlot, 1, {})
    //           playerGraveyard = [...playerGraveyard, attackTarget]
    //
    //           for (let i = 0; i < playerSpells.length; i++) {
    //             if (Object.keys(playerSpells[i]).length !== 0 && playerSpells[i].target.id === attackTarget.id){
    //               console.log(attackTarget.idea)
    //               console.log(playerSpells[i].target)
    //               playerGraveyard = [...playerGraveyard, playerSpells[i]]
    //               playerSpells.splice(i, 1, {})
    //             }
    //           }
    //
    //           monster.attacked = true
    //
    //           if (attackTarget.position === "attack" && this.highestAttack(attackTarget) === this.highestAttack(monster)) {
    //             let attackingMonsterSlot = computerMonsters.findIndex(card => card.id === monster.id)
    //
    //             computerMonsters.splice(attackingMonsterSlot, 1, {})
    //             computerGraveyard = [...computerGraveyard, monster]
    //           } else if (attackTarget.position === "attack" && this.highestAttack(attackTarget) < this.highestAttack(monster)) {
    //             playerLife = playerLife - (this.highestAttack(monster) - this.highestAttack(attackTarget))
    //             if (playerLife <= 0) {
    //               this.lose()
    //             }
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

    // if (monsters.length > 0 && (this.emptyField(playerMonsters) || this.findStrongestKillablePlayerMonster(buffedStrongestPossibleHandMonster, playerMonsters))) {
    if (monsters.length > 0 ) {

      if (!this.fullField(computerMonsters)) {
        let emptyMonsterSlot = computerMonsters.findIndex(slot => Object.keys(slot).length === 0)
        let monsterToPlaySlot = computerHand.findIndex(card => card.id === strongestPossibleHandMonster.id)

        computerHand.splice(monsterToPlaySlot, 1)
        computerMonsters.splice(emptyMonsterSlot, 1, strongestPossibleHandMonster)
        strongestPossibleHandMonster.position = "attack"
        strongestPossibleHandMonster.attacked = false
      }

      items.forEach(item => {
        if (item.description.includes(strongestPossibleHandMonster.role)) {
          computerHand = computerHand.filter(card => card.id !== item.id)

          let emptySpellSlot = computerSpells.findIndex(slot => Object.keys(slot).length === 0)
          computerSpells.splice(emptySpellSlot, 1, item)
          item.target = strongestPossibleHandMonster

          strongestPossibleHandMonster.attack = strongestPossibleHandMonster.attack + parseInt(item.description)
          strongestPossibleHandMonster.magic = strongestPossibleHandMonster.magic + parseInt(item.description)
          strongestPossibleHandMonster.defense = strongestPossibleHandMonster.defense + parseInt(item.description)
        }
      })
    }

      let sortedMonsters = computerMonsters.slice(0, computerMonsters.length)
      .filter(obj => Object.keys(obj).length > 0).sort( (a, b) => {
        if(this.highestAttack(a) > this.highestAttack(b)) {
      		return 1
        } else {
        	return -1
        }
        return 0
      })

      console.log(sortedMonsters)

      sortedMonsters.forEach(
        monster => {
          if (Object.keys(monster).length !== 0 && monster.attacked === false) {
            if (this.emptyField(playerMonsters)) {
              playerLife = playerLife - this.highestAttack(monster)
              monster.attacked = true
              console.log(monster.attacked)
              if (playerLife <= 0) {
                this.lose()
              }
            } else if (this.findStrongestKillablePlayerMonster(monster, playerMonsters)) {
              monster.position = "attack"

              let attackTarget = this.findStrongestKillablePlayerMonster(monster, playerMonsters)
              let attackTargetSlot = playerMonsters.findIndex(card => card.id === attackTarget.id)
              console.log(monster)
              console.log(attackTarget)

              playerMonsters.splice(attackTargetSlot, 1, {})
              playerGraveyard = [...playerGraveyard, attackTarget]

              for (let i = 0; i < playerSpells.length; i++) {
                if (Object.keys(playerSpells[i]).length !== 0 && playerSpells[i].target.id === attackTarget.id){
                  console.log(attackTarget.idea)
                  console.log(playerSpells[i].target)
                  playerGraveyard = [...playerGraveyard, playerSpells[i]]
                  playerSpells.splice(i, 1, {})
                }
              }

              monster.attacked = true

              if (attackTarget.position === "attack" && this.highestAttack(attackTarget) === this.highestAttack(monster)) {
                let attackingMonsterSlot = computerMonsters.findIndex(card => card.id === monster.id)

                computerMonsters.splice(attackingMonsterSlot, 1, {})
                computerGraveyard = [...computerGraveyard, monster]
              } else if (attackTarget.position === "attack" && this.highestAttack(attackTarget) < this.highestAttack(monster)) {
                playerLife = playerLife - (this.highestAttack(monster) - this.highestAttack(attackTarget))
                if (playerLife <= 0) {
                  this.lose()
                }
              }
            }
          }
        }
      )

      sortedMonsters.forEach(
        monster => {
          if (Object.keys(monster).length !== 0 && monster.attacked === false) {
            if (this.emptyField(playerMonsters)) {
              playerLife = playerLife - this.highestAttack(monster)
              monster.attacked = true
              console.log(monster.attacked)
              if (playerLife <= 0) {
                this.lose()
              }
            } else {
              if (monster.defense > this.highestAttack(monster) || (monster.attack < 1500 && monster.magic < 1500)) {
                monster.position = "defense"
              }
            }
          }
        }
      )


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

  getStrongestMonsterInOwnHand = (hand) => {
    let monster = ''
    hand.forEach(
      monsterObj => {if (this.highestAttack(monsterObj) > this.highestAttack(monster) || monster === '') {
        monster = monsterObj
      }}
    )
    return monster
  }

  getStrongestPossibleMonsterInOwnHand = (hand, items) => {
    let strongestMonster

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

    strongestMonster = buffedMonsters.sort( (a, b) => {
      if(this.highestAttack(a) > this.highestAttack(b)) {
    		return -1
      } else {
      	return 1
      }
      return 0
    })[0]

    // console.log("STRONGEST Hand")
    // console.log(strongestMonster)

    let x = monsters.find(obj => obj.id === strongestMonster.id)
    // console.log(x)

    return monsters.find(obj => obj.id === strongestMonster.id)
  }

  getBuffedStrongestPossibleMonsterInOwnHand = (hand, items) => {
    let strongestMonster

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

    return strongestMonster = buffedMonsters.sort( (a, b) => {
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

    // let buffedMonsters = []
    //
    // monsters.forEach(monster => {
    //   let newMonster = Object.assign({}, monster)
    //   items.forEach(item => {
    //     if (item.description.includes(newMonster.role)) {
    //       newMonster.attack = newMonster.attack + parseInt(item.description)
    //       newMonster.magic = newMonster.magic + parseInt(item.description)
    //       newMonster.defense = newMonster.defense + parseInt(item.description)
    //     }
    //   })
    //   buffedMonsters = [...buffedMonsters, newMonster]
    // })

    return monsters.sort( (a, b) => {
      if(this.highestAttack(a) > this.highestAttack(b)) {
    		return -1
      } else {
      	return 1
      }
      return 0
    })[monsters.length - 1]
  }

  getStrongestMonsterInOwnField = (field) => {
    let monster = ''
    field.forEach(
      monsterObj => {if (this.highestAttack(monsterObj) > this.highestAttack(monster) || monster === '') {
        monster = monsterObj
      }}
    )
    return monster
  }

  getStrongestPossibleMonsterInOwnField = (field, items) => {
    let strongestMonster
    if (!this.emptyField(field)) {
      let monsters = field.filter(obj => Object.keys(obj).length > 0)
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

      strongestMonster = buffedMonsters.sort( (a, b) => {
        if(this.highestAttack(a) > this.highestAttack(b)) {
      		return -1
        } else {
        	return 1
        }
        return 0
      })[0]
    }

    // console.log("STRONGEST FIELD")
    // console.log(strongestMonster)

    let x = field.find(obj => obj.id === strongestMonster.id)
    // console.log(x)

    return field.find(obj => obj.id === strongestMonster.id)
  }

  getBuffedStrongestPossibleMonsterInOwnField = (field, items) => {
    let strongestMonster
    if (!this.emptyField(field)) {
      let monsters = field.filter(obj => Object.keys(obj).length > 0)
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

      return strongestMonster = buffedMonsters.sort( (a, b) => {
        if(this.highestAttack(a) > this.highestAttack(b)) {
      		return -1
        } else {
        	return 1
        }
        return 0
      })[0]
    }

  }

  getStrongerEnemyMonsters = (monster, field) => {
    let strongerEnemyMonsters = field.filter(monsterObj => {
      if (monsterObj.position === "attack") {
        console.log(monster)
        console.log(monster.attack)
        console.log(monster.magic)
        console.log(monsterObj)
        console.log(this.highestAttack(monster))
        console.log(this.highestAttack(monsterObj))
        console.log(this.highestAttack(monsterObj) > this.highestAttack(monster))
        console.log(this.highestAttack(monsterObj) < this.highestAttack(monster))
        return this.highestAttack(monsterObj) > this.highestAttack(monster)
      } else if (monsterObj.position === "defense"){
        console.log(monster)
        console.log(monster.attack)
        console.log(monster.magic)
        console.log(monsterObj)
        console.log(this.highestAttack(monster))
        console.log(this.highestAttack(monsterObj))
        console.log(this.highestAttack(monsterObj) > this.highestAttack(monster))
        console.log(this.highestAttack(monsterObj) < this.highestAttack(monster))
        return monsterObj.defense > this.highestAttack(monster)
      }
    })
    // console.log(monster)
    // console.log(strongerEnemyMonsters)
    return strongerEnemyMonsters

  }

  findStrongestKillablePlayerMonster = (monster, field) => {
    let sortedPlayerField = field.slice(0, field.length - 1)

      sortedPlayerField.sort( (a, b) => {
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

  noxianGuillotine = (card, target) => {
    if (this.state.currentPlayer === 'player1') {
      this.sendEnemyFromFieldToGraveyard(target)

      let newHand = this.state.player1Hand.filter(
        cardObj => cardObj.id !== card.id
      )

      this.setState({
        // player2Monsters: newMonsterField,
        // player2Graveyard: newGraveyard,
        player1Hand: newHand,
        player1Graveyard: [...this.state.player1Graveyard, card],
        selectedCard: '',
        selectedTarget: '',
        actionType: ''
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

  // getItemTargetMode = () => {
  //   console.log(this.state)
  //   console.log(this.state.selectedCard)
  //   this.setState({
  //     actionType: 'selectItemTarget'
  //   })
  // }

  selectItemTarget = (card) => {
    console.log("hi")
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
    monster.attacked = true
    this.setState({
      player2Life: this.state.player2Life - this.highestAttack(monster),
      selectedCard: '',
      actionType: ''
    }, () => {
      if (this.state.player2Life <= 0) {
        this.win()
      }
    })
  }

  reward = () => {
    let player = this.state.account
    if (this.props.location === 'campaign') {
      player.defeated_id = this.state.player2.id
      // this.setState({
      //   gold: this.state.gold + 30,
      //   defeated: this.props.enemy.id,
      //   currentPlayer: player
      // })
    }
    this.props.changeGold(this.props.gold + 30)
    this.props.changeDefeated(this.props.enemy.id)
  }

  render() {
    console.log(this.props)
    if (this.state.display === 'Lose' || this.state.display === 'Win') {
      audio.pause()
      audio.currentTime = 0
      return(
        <div>
          <PostDuel
          display={this.state.display}
          renderHome={this.props.renderHome}
          renderPostDuel={this.props.renderPostDuel}
          location={this.props.location}
          rewardCard={this.state.rewardCard}
          defeated={this.props.defeated}
          />
        </div>
      )
    } else if (this.props.enemy.name === "Xerath"){
      audio.play()
      return(
        <div>
          <div id="duel-field-container">
            <div id="duel-field">

              <div>{this.props.enemy.name}</div>
              <img src={this.props.enemy.image}/>
              <div>
                <img id="summoners-rift" src="image/summoners-rift.jpg"/>
                <div id="enemy-field">
                  <div id="player2-hand">
                  <Hand hand={this.state.player2Hand} player={"player2"}/>
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
                      player={"player2"}
                    />
                  </div>
                </div>
              </div>
              <br/>
              <br/>
              <div id="middle-bar">
              <div className="life-points">{this.state.player1Life}</div>
              <button onClick={this.computerTurn}>End Turn</button>
              <div className="life-points">{this.state.player2Life}</div>
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
                  <div id="player1-deck" className="duel-card">
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
                    noxianGuillotine={this.noxianGuillotine}
                    player={"player1"}
                    actionType={this.state.actionType}
                    itemTarget={this.itemTarget}
                  />
                </div>
              </div>
              <img src="image/AzirPortrait.png"/>
              <div>Azir</div>
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
                noxianGuillotine={this.noxianGuillotine}
              />
            </div>
          </div>
        </div>
      )
    } else {
      // var audio = new Audio('files/SummonersCall.mp3')
      // audio.play()
      return(
        <div>
          <div id="duel-field-container">
            <div id="duel-field">

              <div>{this.props.enemy.name}</div>
              <img src={this.props.enemy.image}/>
              <div>
                <img id="summoners-rift" src="image/summoners-rift.jpg"/>
                <div id="enemy-field">
                  <div id="player2-hand">
                  <Hand hand={this.state.player2Hand} player={"player2"}/>
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
                      player={"player2"}
                    />
                  </div>
                </div>
              </div>
              <br/>
              <br/>
              <div id="middle-bar">
              <div className="life-points">{this.state.player1Life}</div>
              <button onClick={this.computerTurn}>End Turn</button>
              <div className="life-points">{this.state.player2Life}</div>
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
                  <div id="player1-deck" className="duel-card">
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
                    noxianGuillotine={this.noxianGuillotine}
                    player={"player1"}
                    actionType={this.state.actionType}
                    itemTarget={this.itemTarget}
                  />
                </div>
              </div>
              <img src={this.props.account.image}/>
              <div>Sivir</div>
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
                noxianGuillotine={this.noxianGuillotine}
              />
            </div>
          </div>
        </div>
      )
    }
  }
}

const mapStateToProps = state => {
  return {
    account: state.accountChanger.account,
    cards: state.cardsChanger.cards,
    currentPlayerCards: state.currentPlayerCardsChanger.currentPlayerCards,
    noDupesCurrentPlayerCards: state.noDupesCurrentPlayerCardsChanger.noDupesCurrentPlayerCards,
    deck: state.deckChanger.deck,
    deckCards: state.deckCardsChanger.deckCards,
    enemy: state.enemyChanger.enemy,
    enemyDeck: state.enemyDeckChanger.enemyDeck,
    gold: state.goldChanger.gold,
    defeated: state.defeatedChanger.defeated,
    dialogue: state.dialogueChanger.dialogue,
    location: state.locationChanger.location
  }
}

const mapDispatchToProps = dispatch => {
  return {
    changeAccount: (event) => dispatch({type: 'CHANGE_ACCOUNT', newAccount: event}),
    changeCurrentPlayerCards: (event) => dispatch({type: 'CHANGE_CURRENTPLAYERCARDS', newCurrentPlayerCards: event}),
    changeNoDupesCurrentPlayerCards: (event) => dispatch({type: 'CHANGE_NODUPESCURRENTPLAYERCARDS', newNoDupesCurrentPlayerCards: event}),
    changeGold: (event) => dispatch({type: 'CHANGE_GOLD', newGold: event}),
    changeDefeated: (event) => dispatch({type: 'CHANGE_DEFEATED', newDefeated: event}),
    changeDialogue: (event) => dispatch({type: 'CHANGE_DIALOGUE', newDialogue: event}),
    changeLocation: (event) => dispatch({type: 'CHANGE_LOCATION', newLocation: event})
  }
}

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(DuelField);
