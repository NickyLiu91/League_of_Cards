import React from "react";
import {connect} from 'react-redux';
// import {compose} from 'redux';
import {Route, Link, withRouter, NavLink} from 'react-router-dom';

const Header = (props) => {
    return(
      <nav>
          <ul>
            <li className="home" onClick={event => {props.history.push("/")}}>Home</li>
            <li className="campaign" onClick={event => {props.renderStuff(event)}}>Campaign</li>
            <li className="duelistsList" onClick={event => {props.renderStuff(event)}}>Free Duel</li>
            <li className="collection" onClick={event => {props.renderStuff(event)}}>Collection</li>
            <li className="store" onClick={event => {props.renderStuff(event)}}>Store</li>
            <li className="decksList" onClick={event => {props.renderStuff(event)}}>Decks</li>
          </ul>
      </nav>
    )
}

export default withRouter(Header)
