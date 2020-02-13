import React from "react";

const HomeScreen = (props) => {
  if (props.render === 'home') {
    if (props.loggedIn === false) {
      return(
          <div>
          <img id="shurima" src="image/shurima_sun_01.jpg" />
            <div id="home">
            <h1>LEAGUE OF CARDS</h1>
              <form>
                <h1>Log-In</h1>
                  Account: <input type="text" value={props.name} onChange={event => props.handleName(event)}/>
                  <br/>
                  <br/>
                  Password: <input type="password" value={props.password} onChange={event => props.handlePassword(event)}/>
                  <br/>
                  <br/>
                  <button type="button" onClick={event => props.getPlayer(event)}>Submit</button>
              </form>
                <br/>
              <button className="create" onClick={event => {props.renderStuff(event)}}>Create Account</button>
            </div>
          </div>
        )
    } else if (props.loggedIn) {
      return(
        <div>
          <img id="demacia" src="image/demacia.jpeg" />
          <div id="logged-in">
            <h1>LEAGUE OF CARDS</h1>
              <h1>Welcome, {props.currentPlayer.name}!</h1>
              <br/>
              <button className="rules" onClick={event => {props.renderStuff(event)}}>Rules</button>
              <br/>
              <br/>
              <button className="campaign" onClick={event => {props.renderStuff(event)}}>Campaign</button>
              <br/>
              <br/>
              <button className="duelistsList" onClick={event => {props.renderStuff(event)}}>Free Duel</button>
              <br/>
              <br/>
              <button className="collection" onClick={event => {props.renderStuff(event)}}>Collection</button>
              <br/>
              <br/>
              <button className="store" onClick={event => {props.renderStuff(event)}}>Card Store</button>
              <br/>
              <br/>
              <button className="decksList" onClick={event => {props.renderStuff(event)}}>Decks</button>
              <br/>
              <br/>
              <button onClick={props.logOut}>Log-Out</button>
          </div>
        </div>
      )
    }
  } else if (props.render === 'create') {
    return(
      <div>
      <img id="shurima" src="image/shurima_sun_01.jpg" />
        <div id="home">
          <h1>LEAGUE OF CARDS</h1>
            <form>
              Account Name: <input type="text" value={props.name} onChange={event => props.handleName(event)}/>
              <br/>
              <br/>
              Password: <input type="password" value={props.password} onChange={event => props.handlePassword(event)}/>
              <br/>
              <br/>
              <button type="button" onClick={event => props.createPlayer(event)}>Submit</button>
              <br/>
              <br/>
              <button className="home" onClick={event => {props.renderStuff(event)}}>Home</button>
            </form>
        </div>
      </div>
    )
  }
}

export default HomeScreen;
