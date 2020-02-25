import React, { Component, Fragment } from 'react';
import logo from './logo.svg';
import './App.css';
import {createStore} from 'redux';
import {Provider} from 'react-redux'
import Home from './containers/Home'
import Collection from "./containers/Collection.js"
import CardInfo from "./components/CardInfo.js"
import DuelField from "./containers/DuelField.js"
import CardStore from "./containers/CardStore.js"
import DecksList from "./containers/DecksList.js"
import DuelistsList from "./containers/DuelistsList.js"
import Header from "./components/Header.js"
import Rules from "./components/Rules.js"
import PostDuel from "./components/PostDuel.js"
import Campaign from "./containers/Campaign.js"
import {connect} from 'react-redux';
import {compose} from 'redux';
import {Route, Link, Switch, withRouter} from 'react-router-dom';

class App extends Component {

  state= {account: {}}

  render() {
    if (this.props.deckCards.length != 40) {
      return (
        <div className="App">
        <Switch>
        <Route path={`/`} component={Home} />
        </Switch>
        </div>
      )
    } else {
      return (
        <div className="App">
        <Switch>
        <Route exact path={`/`} component={Home} />
        <Route path={`/rules`} component={Rules} />
        <Route path={`/campaign`} component={Campaign} />
        <Route path={`/duelistsList`} component={DuelistsList} />
        <Route path={`/duelField`} component={DuelField} />
        <Route path={`/collection`} component={Collection} />
        <Route path={`/cardInfo`} component={CardInfo} />
        <Route path={`/cardStore`} component={CardStore} />
        <Route path={`/decksList`} component={DecksList} />
        <Route path={`/cardInfo`} component={CardInfo} />
        <Route path={`/postDuel`} component={PostDuel} />
        </Switch>
        </div>
      )
    }
  }
}

const mapStateToProps = state => {
  return {
    deckCards: state.deckCardsChanger.deckCards
  }
}

export default compose(
  withRouter,
  connect(mapStateToProps)
)(App);

// export default App;
