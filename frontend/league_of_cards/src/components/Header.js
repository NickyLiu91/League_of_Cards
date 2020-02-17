import React from "react";
import {connect} from 'react-redux';
// import {compose} from 'redux';
import {Route, Link, withRouter, NavLink} from 'react-router-dom';

const Header = (props) => {
    return(
      <nav>
          <ul>
            <li className="home" onClick={() => {props.history.push("/")}}>Home</li>
            <li className="campaign" onClick={() => {props.history.push("/campaign")}}>Campaign</li>
            <li className="duelistsList" onClick={() => {props.history.push("/duelistsList")}}>Free Duel</li>
            <li className="collection" onClick={() => {props.history.push("/collection")}}>Collection</li>
            <li className="store" onClick={() => {props.history.push("/cardStore")}}>Store</li>
            <li className="decksList" onClick={() => {props.history.push("/decksList")}}>Decks</li>
          </ul>
      </nav>
    )
}

export default withRouter(Header)
