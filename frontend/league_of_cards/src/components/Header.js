import React from "react";
import {connect} from 'react-redux';
import {compose} from 'redux';
import {Route, Link, withRouter, NavLink} from 'react-router-dom';

class Header extends React.Component {

  checkDeckSize = (string) => {
    if (this.props.deckCards.length < 40) {
      alert ('Your deck has less than 40 cards!')
    } else {
      this.props.history.push(string)
    }
  }

  render() {
    return(
      <nav>
      <ul>
      <li className="home" onClick={() => {this.props.history.push("/")}}>Home</li>
      <li className="campaign" onClick={() => {this.checkDeckSize("/campaign")}}>Campaign</li>
      <li className="duelistsList" onClick={() => {this.checkDeckSize("/duelistsList")}}>Free Duel</li>
      <li className="collection" onClick={() => {this.props.history.push("/collection")}}>Collection</li>
      <li className="store" onClick={() => {this.props.history.push("/cardStore")}}>Store</li>
      <li className="decksList" onClick={() => {this.props.history.push("/decksList")}}>Decks</li>
      </ul>
      </nav>
    )
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
)(Header);
