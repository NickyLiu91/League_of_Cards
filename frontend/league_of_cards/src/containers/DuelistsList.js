import React from "react";
import {connect} from 'react-redux';
import {compose} from 'redux';
import {Route, Link, withRouter} from 'react-router-dom';
import Duelist from "../components/Duelist.js"
import Header from "../components/Header.js"

let duelistKey = 0

class DuelistsList extends React.Component {

  generateDuelists = () => {
    let list = this.props.characters

    if (this.props.completed === true) {
      this.props.characters.slice(0, 24).forEach(duelist => {
        let index = list.findIndex(obj => Object.keys(obj).length === 0)
        list[index] = duelist
      })
      return list.map(
        duelistObj => <Duelist key={duelistKey++} duelist={duelistObj} getDuelist={this.getDuelist}/>
      )
    }
    else {

      return list.slice(0, this.props.defeated).map(
        duelistObj => <Duelist key={duelistKey++} duelist={duelistObj} getDuelist={this.getDuelist}/>
      )
    }
  }

  getDuelist = (player, location, dialogue=0) => {
    this.props.changeEnemy(player)
    this.props.changeLocation('duelistsList')
    this.props.history.push('/duelField')
  }

  render() {
    return(
      <div>
      <Header />
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
    enemy: state.enemyChanger.enemy,
    defeated: state.defeatedChanger.defeated,
    location: state.locationChanger.location,
    completed: state.completedChanger.completed
  }
}

const mapDispatchToProps = dispatch => {
  return {
    changeAccount: (event) => dispatch({type: 'CHANGE_ACCOUNT', newAccount: event}),
    changeDeck: (event) => dispatch({type: 'CHANGE_DECK', newDeck: event}),
    changeEnemy: (event) => dispatch({type: 'CHANGE_ENEMY', newEnemy: event}),
    changeDefeated: (event) => dispatch({type: 'CHANGE_DEFEEATED', newDefeated: event}),
    changeLocation: (event) => dispatch({type: 'CHANGE_LOCATION', newLocation: event})
  }
}

export default compose(
  withRouter,
  connect(mapStateToProps,
  mapDispatchToProps)
)(DuelistsList);
