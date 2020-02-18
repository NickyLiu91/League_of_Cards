import React from "react";
import Header from "./Header.js"

const Rules = (props) => {
  return(
    <div>
      <Header />
      <img id="rules-background" src="image/rules.jpeg" />
      <ol id="rules-list">
        <oh id="rules-title">Rules</oh>
        <br/>
        <br/>
        <li>Both players start with 8000 lifepoints and 5 cards in hand.</li>
        <br/>
        <br/>
        <li>Players will draw a card at the start of a turn. If a players hand has 7 or more cards the newest card will be sent to the graveyard.</li>
        <br/>
        <br/>
        <li>One monster can be summoned per turn.</li>
        <br/>
        <br/>
        <li>A monster can be in attack or defense position. When in attack position, combat is calculated using the higher of the magic or the attack stat. If the Monster is in defense position combat is calculated using defense. A monster can change position if it has no attacked yet.</li>
        <br/>
        <br/>
        <li>A monster can only attack once per turn and must be in attack mode. and can change position if it has not attacked yet.</li>
        <br/>
        <br/>
        <li>A monster can change only position if it has not attacked yet.</li>
        <br/>
        <br/>
        <li>If the attack target has higher attack the attacking monster will be destroyed and sent to the graveyard and the player with the attacking monster will lose the difference in attack from lifepoints.</li>
        <br/>
        <br/>
        <li>If the attack target has lower attack the target will be destroyed and sent to the graveyard and the player with the attack target monster will lose the difference in attack from lifepoints.</li>
        <br/>
        <br/>
        <li>If the attack target is in defense position and the defense is higher then the attacker the player with the attacking monster will lose the difference in the attackers attack and the defenders defense from their lifepoints.</li>
        <br/>
        <br/>
        <li>If the attack target is in defense position and the defense is lower then the attacker the targeted monster will be destroyed and sent to the graveyard.</li>
        <br/>
        <br/>
        <li>If an opponent has no monsters on the field a monsters attack will be subtracted directly from the their lifepoints.</li>
        <br/>
        <br/>
        <li>If there is space on the spell field items can be played and equipped to a monster. The item will remain on the field as long as the monster does and if the monster is sent to the graveyard all items equipped to the monster will be sent to the graveyard also.</li>
        <br/>
        <br/>
        <li>All summons, attacks, targeting, and playing spells will be done through the action box on the right.</li>
        <br/>
        <br/>
        <li>The first player to run out of cards from their deck or reach 0 lifepoints loses the duel.</li>
      </ol>
    </div>
  )
}

export default Rules;
