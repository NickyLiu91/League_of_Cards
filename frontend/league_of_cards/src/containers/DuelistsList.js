import React from "react";
import {connect} from 'react-redux';
import Duelist from "../components/Duelist.js"

let duelistKey = 0

class DuelistsList extends React.Component {

  generateDuelists = () => {
    let list = this.props.characters

    if (this.props.account.completed === true) {
      this.props.characters.slice(0, 24).forEach(duelist => {
        let index = list.findIndex(obj => Object.keys(obj).length === 0)
        list[index] = duelist
      })
      return list.map(
        duelistObj => <Duelist key={duelistKey++} duelist={duelistObj} getDuelist={this.getDuelist}/>
      )
    } else if (this.props.account.defeated_id === 0 ) {
      return(list.map(
        duelistObj => <Duelist key={duelistKey++} duelist={duelistObj} getDuelist={this.getDuelist}/>
      ))
    } else {
      this.props.characters.slice(0, this.props.account.defeated_id).forEach(duelist => {
        let index = list.findIndex(obj => Object.keys(obj).length === 0)
        list[index] = duelist
      })
      return list.map(
        duelistObj => <Duelist key={duelistKey++} duelist={duelistObj} getDuelist={this.getDuelist}/>
      )
    }
  }

  getDuelist = (player, location, dialogue=0) => {
    console.log(player)
    this.props.changeEnemy(player)
    console.log(this.props.enemy)
    // let desiredDeck
    // fetch(`http://localhost:3000/api/v1/decks/${this.state.currentDeck.id}`)
    // .then(res => res.json())
    // .then(res => this.setState(
    //   {
    //     currentDeckCards: res.cards
    //   }, () => {
    //     fetch(`http://localhost:3000/api/v1/players/${player.id}`)
    //     .then(response => response.json())
    //     .then(json => {
    //       this.setState({
    //         player2: player,
    //         player2Deck: json.cards,
    //         duelLocation: location,
    //         dialogue: dialogue
    //       }, () => { this.renderDuel()}
    //     )
    //     })
    //   }
    // ))

  }

  render() {
    return(
      <div>
      <img id="ionia" src="image/ionia.jpeg"/>
        <div id="duelist-list">
          {this.generateDuelists()}
        </div>
      </div>
    )
  }

}

const mapStateToProps = state => {
  return {
    account: state.accountChanger.account,
    deck: state.deckChanger.deck,
    characters: state.charactersChanger.characters,
    enemy: state.enemyChanger.enemy
  }
}

const mapDispatchToProps = dispatch => {
  return {
    changeAccount: (event) => dispatch({type: 'CHANGE_ACCOUNT', newAccount: event}),
    changeDeck: (event) => dispatch({type: 'CHANGE_DECK', newDeck: event}),
    changeEnemy: (event) => dispatch({type: 'CHANGE_ENEMY', newEnemy: event})
  }
}

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(DuelistsList);
