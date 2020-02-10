import {combineReducers} from 'redux'

function allCharactersChanger(state = {allCharacters: [], action) {
  switch (action.type) {
    case 'CHANGE_ALLCHARACTERS':
      console.log(state);
      return {allCharacters: action.allCharacters}
    default:
      return state;
  }
}

function accountChanger(state = {account: {}}, action) {
  switch (action.type) {
    case 'CHANGE_ACCOUNT':
      console.log(state);
      return {account: action.newAccount}
    default:
      return state;
  }
}

function enemyChanger(state = {enemy: {}, action) {
  switch (action.type) {
    case 'CHANGE_ENEMY':
      console.log(state);
      return {enemy: action.enemy}
    default:
      return state;
  }
}

// function collectionChanger(state = {collection: [], action) {
//   switch (action.type) {
//     case 'CHANGE_COLLECTION':
//       console.log(state);
//       return {collection: action.newCollection}
//     default:
//       return state;
//   }
// }
// function noDupesCollectionChanger(state = {collection: [], action) {
//   switch (action.type) {
//     case 'CHANGE_NODUPESCOLLECTION':
//       console.log(state);
//       return {noDupesCollection: action.newNoDupesCollection}
//     default:
//       return state;
//   }
// }
//
// function decksChanger(state = {decks: []}, action) {
//   switch (action.type) {
//     case 'CHANGE_DECKS':
//       console.log(state);
//       return {decks: action.newDecks}
//     default:
//       return state;
//   }
// }
//
// function currentDeckChanger(state = {result: []}, action) {
//   switch (action.type) {
//     case 'CHANGE_CURRENTDECK':
//       console.log(state);
//       return {currentDeck: action.newCurrentDeck}
//     default:
//       return state;
//   }
// }
//
// function deckCardsChanger(state = {deckCards: []}, action) {
//   switch (action.type) {
//     case 'CHANGE_DECKCARDS':
//       console.log(state);
//       return {deckCards: action.newDeckCards}
//     default:
//       return state;
//   }
// }
//
// function rChanger(state = {r: []}, action) {
//   switch (action.type) {
//     case 'CHANGE_R':
//       // console.log(action.newR);
//       return {r: action.newR}
//     default:
//       return state;
//   }
// }
//
// function srChanger(state = {sr: []}, action) {
//   // console.log("SR")
//   switch (action.type) {
//     case 'CHANGE_SR':
//       console.log(state);
//       return {sr: action.newSR}
//     default:
//       return state;
//   }
// }
//
// function ssrChanger(state = {ssr: []}, action) {
//   // console.log("SSR")
//   switch (action.type) {
//     case 'CHANGE_SSR':
//       console.log(state);
//       return {ssr: action.newSSR}
//     default:
//       return state;
//   }
// }
//
// function ssrCollectionChanger(state = {ssrCollection: []}, action) {
//   switch (action.type) {
//     case 'CHANGE_SSRCOLLECTION':
//       console.log(state);
//       return {ssrCollection: action.newSSRCollection}
//     default:
//       return state;
//   }
// }

export default combineReducers({
  allCharactersChanger,
  accountChanger,
  enemyChanger
})
