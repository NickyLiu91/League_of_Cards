import React from "react";

const Header = (props) => {
    return(
      <nav>
          <ul>
            <li className="home" onClick={event => {props.renderStuff(event)}}>Home</li>
            <li className="decksList" onClick={event => {props.renderStuff(event)}}>Decks</li>
            <li className="collection" onClick={event => {props.renderStuff(event)}}>Collection</li>
            <li className="store" onClick={event => {props.renderStuff(event)}}>Store</li>
            <li className="duelistsList" onClick={event => {props.renderStuff(event)}}>DUEL!!!</li>
          </ul>
      </nav>
    )

}

export default Header;
