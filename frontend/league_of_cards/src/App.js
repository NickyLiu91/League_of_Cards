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
import {Route, Link, Switch} from 'react-router-dom';

class App extends Component {
  render() {
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
//
// class App extends Component {
//
//   render() {
//     return (
//       <div className="App">
//         <Home />
//       </div>
//     );
//   }
// }

export default App;

// import React, { Component } from 'react';
// import { Route, Switch, Redirect, withRouter } from 'react-router-dom'
// import logo from './logo.svg';
// import './App.css';
// import Home from './containers/Home'
//
//
//   const App = props => {
//     return (
//       <Fragment>
//       <Switch>
//       // <Route exact path="/" render={() => {<Redirect to="/" />}}
//       // <Route exact path="/login" component={home}}
//       <Route exact path="/home" component={Home}} />
//       <Route exact path="/collection" component={Collection}} />
//       <Route exact path="/store" component={CardStore}} />
//       <Route exact path="/campaign" component={Campaign}} />
//       <Route exact path="/freeduel" component={DuelistsList}} />
//       <Route exact path="/decks" component={DecksList}} />
//       </Switch>
//       </Fragment>
//     )
//   }
//
// export default withRouter(App);
