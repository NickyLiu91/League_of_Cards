import React from "react";

const CampaignScreen = (props) => {
  if (props.defeated < 4) {
    if (props.dialogue < 3) {
      return(
        <div id="campaign-screen" >
          <img id="campaign-background" src={props.computers[props.defeated].preduel.background}/>
          <div id="text-box" onClick={event => {props.increaseDialogue()}}>
            <div id="speaker-picture">
              <img src={props.player1.image} />
            </div>
            <div id="story-text">
              <p>{props.storyText[props.dialogue]}</p>
            </div>
          </div>
        </div>
      )
    } else if (props.storyText[props.dialogue] === "DUEL") {
      return(
        <div id="campaign-screen" >
          <img id="campaign-background" src={props.computers[props.defeated].preduel}/>
            <div id="text-box" onClick={event => {props.getDuelist(props.computers[props.defeated], "campaign")}}>
              <div id="speaker-picture">
                <img src={props.computers[props.defeated].image} />
              </div>
            <div id="story-text">
              <p>{props.storyText[props.dialogue - 1]}</p>
            </div>
          </div>
        </div>
      )
    } else {
      return(
        <div id="campaign-screen" >
          <img id="campaign-background" src={props.computers[props.defeated].background}/>
            <div id="text-box" onClick={event => {props.increaseDialogue()}}>
              <div id="speaker-picture">
                <img src={props.computers[props.player1.defeated_id].image} />
              </div>
            <div id="story-text">
              <p>{props.storyText[props.dialogue]}</p>
            </div>
          </div>
        </div>
      )
    }
  }
}

export default CampaignScreen;
