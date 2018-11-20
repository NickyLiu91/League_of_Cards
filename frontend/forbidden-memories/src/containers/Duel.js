import React from "react";
import Hand from "./Hand.js"

const Duel = (props) => {
  return(
    <div id="duel-field">
      <div id="player2-hand">
        <Hand player1Hand={props.player1Hand}/>
      </div>
      <br/>
      <div id="player2-spells">
        <div id="player2-deck" className="duel-card player2-deck" onClick={props.drawCard}>
          p2 Deck
        </div>
        <div id="player2-spells0" className="duel-card player2-spell">p2s1</div>
        <div id="player2-spells1" className="duel-card player2-spell">p2s2</div>
        <div id="player2-spells2" className="duel-card player2-spell">p2s3</div>
        <div id="player2-spells3" className="duel-card player2-spell">p2s4</div>
        <div id="player2-spells4" className="duel-card player2-spell">p2s5</div>
        <div id="player2-spells5" className="duel-card player2-spell">p2s6</div>
      </div>
      <div id="player2-monsters">
        <div id="player2-monsters0" className="duel-card player2-monster">p2m0</div>
        <div id="player2-monsters1" className="duel-card player2-monster">p2m1</div>
        <div id="player2-monsters2" className="duel-card player2-monster">p2m2</div>
        <div id="player2-monsters3" className="duel-card player2-monster">p2m3</div>
        <div id="player2-monsters4" className="duel-card player2-monster">p2m4</div>
        <div id="player2-monsters5" className="duel-card player2-monster">p2m5</div>
        <div id="player2-monsters6" className="duel-card player2-monster">p2m6</div>
      </div>
      <br/>
      <br/>
      <div id="player1-monsters">
        <div id="player1-monsters0" className="duel-card player1-monster">p1m0</div>
        <div id="player1-monsters1" className="duel-card player1-monster">p1m1</div>
        <div id="player1-monsters2" className="duel-card player1-monster">p1m2</div>
        <div id="player1-monsters3" className="duel-card player1-monster">p1m3</div>
        <div id="player1-monsters4" className="duel-card player1-monster">p1m4</div>
        <div id="player1-monsters5" className="duel-card player1-monster">p1m5</div>
        <div id="player1-monsters6" className="duel-card player1-monster">p1m6</div>
      </div>
      <div id="player1-spells">
        <div id="player1-spells0" className="duel-card player1-spell">p1s0</div>
        <div id="player1-spells1" className="duel-card player1-spell">p1s1</div>
        <div id="player1-spells2" className="duel-card player1-spell">p1s2</div>
        <div id="player1-spells3" className="duel-card player1-spell">p1s3</div>
        <div id="player1-spells4" className="duel-card player1-spell">p1s4</div>
        <div id="player1-spells5" className="duel-card player1-spell">p1s5</div>
        <div id="player1-spells6" className="duel-card player1-spell">p1s6</div>
      </div>
      <br/>
      <div id="player1-hand">
        <div id="player1-hand0" className="player1-hand">p1h0</div>
        <div id="player1-hand1" className="player1-hand">p1h1</div>
        <div id="player1-hand2" className="player1-hand">p1h2</div>
        <div id="player1-hand3" className="player1-hand">p1h3</div>
        <div id="player1-hand4" className="player1-hand">p1h4</div>
        <div id="player1-hand5" className="player1-hand">p1h5</div>
        <div id="player1-hand6" className="player1-hand">p1h6</div>
      </div>
    </div>
  )

}

export default Duel;
