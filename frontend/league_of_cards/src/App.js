import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';
import Home from './containers/Home'


class App extends Component {

  render() {
    return (
      <div className="App">
        <Home />
      </div>
    );
  }
}

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
