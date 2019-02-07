# README: League of Cards

Online card game that is a fusion of
Yugioh and League of Legends. A user can create an account, use gold to buy packs from the store and add cards to your collection, use cards from your collection to build a deck, and use that deck to fight enemies in both story and free duel. Enemies will unlock in free duel upon being defeated in story mode.

## Duel Rules:
1. Both players start with 8000 lifepoints.
2. Players will draw a card at the start of a turn. If a players hand has 7 or more cards the newest card will be sent to the graveyard.
3. One monster can be summoned per turn, and a monster can attack once per turn.
4. A monster can be in attack or defense position When in attack position, combat is calculated using the higher of the magic or the attack stat. If the Monster is in defense position combat is calculated using defense.
5. A monster can only attack when in attack mode. If the attack target has higher attack the attacking monster will be destroyed and sent to the graveyard and the player with the attacking monster will lose the difference in attack from lifepoints. If the attack target has lower attack the target will be destroyed and sent to the graveyard and the player with the attack target monster will lose the difference in attack from lifepoints. If the attack target is in defense position and the defense is higher then the attacker the player with the attacking monster will lose the difference in the attackers attack and the defenders defense from their lifepoints. If the attack target is in defense position and the defense is lower then the attacker the targeted monster will be destroyed and sent to the graveyard.
6. If the enemy has no monsters on the field a monsters attack will be subtracted directly from the enemy's lifepoints.
7. If there is space on the spell field items can be played and equipped to a monster. The item will remain on the field as long as the monster does. If the monster is sent to the graveyard all items equipped to the monster will be sent to the graveyard also.
8. The first player to run out of cards from their deck or reach 0 lifepoints loses the duel.

### Prerequisites

```
Postgres
Ruby on Rails
React.js
```

### Installing

```
Run Postgres
rails db: create
rails db: migrate
rails s
npm start then enter 'y' after to start on new port
```
