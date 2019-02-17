import React from "react";
import CampaignScreen from "../components/CampaignScreen.js"
let dialogueCounter = 0

export default class Campaign extends React.Component {
  state = {
    player1: this.props.player1,
    computers: this.props.allPlayers,
    dialogue: this.props.player1.dialogue,
    defeated: this.props.player1.defeated_id,
    storyText: [
      "While accepting a job to rob a passing Demacian caravan of its jewels, our crew of bandits was easily dispatched by the 3 riding inside the caravan, Garen, Lux, and Ezreal.",
      "However, they saw potential in me as a mercenary, and decided to hire me to join Ezreal as a bodyguard on a large scale expedition funded by the royal family.",
      "Thus, I travelled with them back to Demacia, to prepare for our journey.",
      "Alright, we gave you everything you said you would need to be a proper bodyguard.",
      "Now, show me what you can do!",
      "DUEL",
      "Well fought! You are every bit as strong as we thought you would be.",
      "Now it's my turn!",
      "I am Jarvan IV, the Prince of Demacia!",
      "Prepare yourself!",
      "DUEL"
    ]
  }

  increaseDialogue = () => {
    let dialogue = this.state.dialogue

    fetch(`http://localhost:3000/api/v1/players/${this.state.player1.id}`, {
      method: 'PATCH',
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      body: JSON.stringify(
          {
            dialogue: dialogue + 1
          }
      )
    })
    .then(res => {
      let player = this.state.player1
      player.dialogue = player.dialogue + 1

      this.setState({
        player1: player,
        dialogue: this.state.dialogue + 1
      })
    })

  }

  render() {
    return(
      <div id="campaign-screen" >
        <CampaignScreen player1={this.state.player1} computers={this.state.computers}
        dialogue={this.state.dialogue} defeated={this.state.defeated} storyText={this.state.storyText} increaseDialogue={this.increaseDialogue}
        getDuelist={this.props.getDuelist}/>
      </div>
    )
  }

}
