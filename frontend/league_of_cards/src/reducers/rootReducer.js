import {combineReducers} from 'redux'

function accountChanger(state = {account: {}}, action) {
  switch (action.type) {
    case 'CHANGE_ACCOUNT':
      // console.log(state);
      return {account: action.newAccount}
    default:
      return state;
  }
}

function nameChanger(state = {name: ''}, action) {
  switch (action.type) {
    case 'CHANGE_NAME':
      // console.log(state);
      return {name: action.newName}
    default:
      return state;
  }
}

function cardsChanger(state = {cards: []}, action) {
  switch (action.type) {
    case 'CHANGE_CARDS':
    // console.log(state);
    return {cards: action.newCards}
    default:
    return state;
  }
}

function currentPlayerCardsChanger(state = {currentPlayerCards: []}, action) {
  switch (action.type) {
    case 'CHANGE_CURRENTPLAYERCARDS':
    // console.log(state);
    return {currentPlayerCards: action.newCurrentPlayerCards}
    default:
    return state;
  }
}

function noDupesCurrentPlayerCardsChanger(state = {noDupesCurrentPlayerCards: []}, action) {
  switch (action.type) {
    case 'CHANGE_NODUPESCURRENTPLAYERCARDS':
    // console.log(state);
    return {noDupesCurrentPlayerCards: action.newNoDupesCurrentPlayerCards}
    default:
    return state;
  }
}

function deckChanger(state = {deck: {}}, action) {
  switch (action.type) {
    case 'CHANGE_DECK':
      // console.log(state);
      return {deck: action.newDeck}
    default:
      return state;
  }
}

function deckCardsChanger(state = {deckCards: []}, action) {
  switch (action.type) {
    case 'CHANGE_DECKCARDS':
      // console.log(state);
      return {deckCards: action.newDeckCards}
    default:
      return state;
  }
}


function charactersChanger(state = {characters: []}, action) {
  switch (action.type) {
    case 'CHANGE_CHARACTERS':
      // console.log(state);
      return {characters: action.newCharacters}
    default:
      return state;
  }
}

function enemyChanger(state = {enemy: {}}, action) {
  switch (action.type) {
    case 'CHANGE_ENEMY':
      // console.log(state);
      return {enemy: action.newEnemy}
    default:
      return state;
  }
}

function enemyDeckChanger(state = {enemyDeck: [], action) {
  switch (action.type) {
    case 'CHANGE_ENEMYDECK':
      // console.log(state);
      return {enemyDeck: action.newEnemyDeck}
    default:
      return state;
  }
}

function cardChanger(state = {card: {}}, action) {
  switch (action.type) {
    case 'CHANGE_CARD':
      // console.log(state);
      return {card: action.newCard}
    default:
      return state;
  }
}

function decksListChanger(state = {decksList: []}, action) {
  switch (action.type) {
    case 'CHANGE_DECKSLIST':
      // console.log(state);
      return {decksList: action.newDecksList}
    default:
      return state;
  }
}

function goldChanger(state = {gold: 0}, action) {
  switch (action.type) {
    case 'CHANGE_GOLD':
      // console.log(state);
      return {gold: action.newGold}
    default:
      return state;
  }
}

function defeatedChanger(state = {defeated: 0}, action) {
  switch (action.type) {
    case 'CHANGE_DEFEATED':
      // console.log(state);
      return {defeated: action.newDefeated}
    default:
      return state;
  }
}

function dialogueChanger(state = {dialogue: 0}, action) {
  switch (action.type) {
    case 'CHANGE_DIALOGUE':
      // console.log(state);
      return {dialogue: action.newDialogue}
    default:
      return state;
  }
}

function locationChanger(state = {location: 0}, action) {
  switch (action.type) {
    case 'CHANGE_LOCATION':
      // console.log(state);
      return {location: action.newDialogue}
    default:
      return state;
  }
}

export default combineReducers({
  accountChanger,
  nameChanger,
  cardsChanger,
  currentPlayerCardsChanger,
  noDupesCurrentPlayerCardsChanger,
  deckChanger,
  deckCardsChanger,
  charactersChanger,
  enemyChanger,
  cardChanger,
  decksListChanger,
  goldChanger,
  defeatedChanger,
  dialogueChanger,
  locationChanger
})
