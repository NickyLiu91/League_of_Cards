import {combineReducers} from 'redux'

function accountChanger(state = {account: {}}, action) {
  switch (action.type) {
    case 'CHANGE_ACCOUNT':
      console.log(state);
      return {account: action.newAccount}
    default:
      return state;
  }
}

function cardsChanger(state = {cards: []}, action) {
  switch (action.type) {
    case 'CHANGE_CARDS':
      console.log(state);
      return {cards: action.newCards}
    default:
      return state;
  }
}

function charactersChanger(state = {characters: []}, action) {
  switch (action.type) {
    case 'CHANGE_CHARACTERS':
      console.log(state);
      return {characters: action.newCharacters}
    default:
      return state;
  }
}

function enemyChanger(state = {enemy: {}}, action) {
  switch (action.type) {
    case 'CHANGE_ENEMY':
      console.log(state);
      return {enemy: action.newEnemy}
    default:
      return state;
  }
}

export default combineReducers({
  accountChanger,
  cardsChanger,
  charactersChanger,
  enemyChanger
})
