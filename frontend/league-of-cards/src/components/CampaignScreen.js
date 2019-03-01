import React from "react";

const CampaignScreen = (props) => {
  // if (props.defeated < 4) {
    if (props.dialogue < 6 || (props.dialogue >= 223  && props.dialogue <= 248)) {
      if (props.storyText[props.dialogue].ezreal !== undefined) {
        return(
          <div id="campaign-screen" >
            <img id="campaign-background"/>
              <div id="text-box" onClick={event => {props.increaseDialogue()}}>
                <div id="speaker-picture">
                  <img src="image/EzrealPortrait.png" />
                </div>
              <div id="story-text">
                <p>{props.storyText[props.dialogue].ezreal}</p>
              </div>
            </div>
          </div>
        )
      } else if (props.storyText[props.dialogue].sivir !== undefined){
        return(
          <div id="campaign-screen" >
            <img id="campaign-background"/>
              <div id="text-box" onClick={event => {props.increaseDialogue()}}>
                <div id="speaker-picture">
                  <img src={props.player1.image} />
                </div>
              <div id="story-text">
                <p>{props.storyText[props.dialogue].sivir}</p>
              </div>
            </div>
          </div>
        )
      }
    } else if (props.dialogue >= 279 && props.dialogue <= 280){
      if (props.storyText[props.dialogue].sivir !== undefined){
        return(
          <div id="campaign-screen" >
            <img id="campaign-background" />
              <div id="text-box" onClick={event => {props.increaseDialogue()}}>
                <div id="speaker-picture">
                  <img src={props.player1.image} />
                </div>
              <div id="story-text">
                <p>{props.storyText[props.dialogue].sivir}</p>
              </div>
            </div>
          </div>
        )
      }
    } else if (props.dialogue === 281) {
      return(
        <div id="campaign-screen" >
          <img id="campaign-background" src={"image/XerathSummon.gif"}/>
            <div id="text-box" onClick={event => {props.increaseDialogue()}}>
              <div id="speaker-picture">
                <img src={props.player1.image} />
              </div>
            <div id="story-text">
              <p>{props.storyText[props.dialogue].sivir}</p>
            </div>
          </div>
        </div>
      )
    } else if (props.dialogue > 281 && props.dialogue < 328) {
      if (props.storyText[props.dialogue].sivir !== undefined){
        return(
          <div id="campaign-screen" >
            <img id="campaign-background" src={"image/AscendedXerath.jpg"}/>
              <div id="text-box" onClick={event => {props.increaseDialogue()}}>
                <div id="speaker-picture">
                  <img src={props.player1.image} />
                </div>
              <div id="story-text">
                <p>{props.storyText[props.dialogue].sivir}</p>
              </div>
            </div>
          </div>
        )
      } else if (props.storyText[props.dialogue].ascendedXerath !== undefined) {
        return(
          <div id="campaign-screen" >
            <img id="campaign-background" src={"image/AscendedXerath.jpg"}/>
              <div id="text-box" onClick={event => {props.increaseDialogue()}}>
                <div id="speaker-picture">
                  <img src="image/AscendedXerathPortrait.jpg"/>
                </div>
              <div id="story-text">
                <p>{props.storyText[props.dialogue].ascendedXerath}</p>
              </div>
            </div>
          </div>
        )
      } else if (props.storyText[props.dialogue].ezreal !== undefined) {
        return(
          <div id="campaign-screen" >
            <img id="campaign-background" src={"image/AscendedXerath.jpg"}/>
              <div id="text-box" onClick={event => {props.increaseDialogue()}}>
                <div id="speaker-picture">
                  <img src="image/EzrealPortrait.png"/>
                </div>
              <div id="story-text">
                <p>{props.storyText[props.dialogue].ezreal}</p>
              </div>
            </div>
          </div>
        )
      } else if (props.storyText[props.dialogue].azir === "Is that so?") {
          var audio = new Audio('files/ExcitedDuelists.mp3')
          audio.play()
        return(
          <div id="campaign-screen" >
            <img id="campaign-background" src={"image/AscendedXerath.jpg"}/>
              <div id="text-box" onClick={event => {props.increaseDialogue()}}>
                <div id="speaker-picture">
                  <img src="image/AzirPortrait.png"/>
                </div>
              <div id="story-text">
                <p>{props.storyText[props.dialogue].azir}</p>
              </div>
            </div>
          </div>
        )
      } else if (props.storyText[props.dialogue].azir !== undefined) {
        return(
          <div id="campaign-screen" >
            <img id="campaign-background" src={"image/AscendedXerath.jpg"}/>
              <div id="text-box" onClick={event => {props.increaseDialogue()}}>
                <div id="speaker-picture">
                  <img src="image/AzirPortrait.png"/>
                </div>
              <div id="story-text">
                <p>{props.storyText[props.dialogue].azir}</p>
              </div>
            </div>
          </div>
        )
      }
    } else if (props.dialogue > 327 && props.dialogue < 336) {
      console.log(props.dialogue)
      if (props.storyText[props.dialogue].sivir !== undefined){
        return(
          <div id="campaign-screen" >
            <img id="campaign-background" src={"image/XerathBG.png"}/>
              <div id="text-box" onClick={event => {props.increaseDialogue()}}>
                <div id="speaker-picture">
                  <img src={props.player1.image} />
                </div>
              <div id="story-text">
                <p>{props.storyText[props.dialogue].sivir}</p>
              </div>
            </div>
          </div>
        )
      } else if (props.storyText[props.dialogue].xerath !== undefined) {
        return(
          <div id="campaign-screen" >
            <img id="campaign-background" src={"image/XerathBG.png"}/>
              <div id="text-box" onClick={event => {props.increaseDialogue()}}>
                <div id="speaker-picture">
                  <img src="image/XerathPortrait.png"/>
                </div>
              <div id="story-text">
                <p>{props.storyText[props.dialogue].xerath}</p>
              </div>
            </div>
          </div>
        )
      } else if (props.storyText[props.dialogue].ezreal !== undefined) {
        return(
          <div id="campaign-screen" >
            <img id="campaign-background" src={"image/XerathBG.png"}/>
              <div id="text-box" onClick={event => {props.increaseDialogue()}}>
                <div id="speaker-picture">
                  <img src="image/EzrealPortrait.png"/>
                </div>
              <div id="story-text">
                <p>{props.storyText[props.dialogue].ezreal}</p>
              </div>
            </div>
          </div>
        )
      } else if (props.storyText[props.dialogue].azir !== undefined) {
        return(
          <div id="campaign-screen" >
            <img id="campaign-background" src={"image/XerathBG.png"}/>
              <div id="text-box" onClick={event => {props.increaseDialogue()}}>
                <div id="speaker-picture">
                  <img src="image/AzirPortrait.png"/>
                </div>
              <div id="story-text">
                <p>{props.storyText[props.dialogue].azir}</p>
              </div>
            </div>
          </div>
        )
      }
    } else if (props.storyText[props.dialogue] === "DUEL") {
      console.log(props.computers[props.defeated])
      return(
        <div id="campaign-screen" >
          <img id="campaign-preduel" src={props.computers[props.defeated].preduel}/>
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
    } else if (props.storyText[props.dialogue] === "END") {
      return(
        <div id="campaign-screen" >
          <div id="end-screen" onClick={event => props.resetCampaign(event)}>
            END
          </div>
        </div>
      )
    } else if (props.dialogue > 339) {
      console.log(props.dialogue)
      if (props.storyText[props.dialogue].sivir !== undefined){
        return(
          <div id="campaign-screen" >
            <img id="campaign-background" src={"image/XerathBG.png"}/>
              <div id="text-box" onClick={event => {props.increaseDialogue()}}>
                <div id="speaker-picture">
                  <img src={props.player1.image} />
                </div>
              <div id="story-text">
                <p>{props.storyText[props.dialogue].sivir}</p>
              </div>
            </div>
          </div>
        )
      } else if (props.storyText[props.dialogue].ezreal !== undefined) {
        return(
          <div id="campaign-screen" >
            <img id="campaign-background" src={"image/XerathBG.png"}/>
              <div id="text-box" onClick={event => {props.increaseDialogue()}}>
                <div id="speaker-picture">
                  <img src="image/EzrealPortrait.png"/>
                </div>
              <div id="story-text">
                <p>{props.storyText[props.dialogue].ezreal}</p>
              </div>
            </div>
          </div>
        )
      } else if (props.storyText[props.dialogue].azir !== undefined) {
        return(
          <div id="campaign-screen" >
            <img id="campaign-background" src={"image/XerathBG.png"}/>
              <div id="text-box" onClick={event => {props.increaseDialogue()}}>
                <div id="speaker-picture">
                  <img src="image/AzirPortrait.png"/>
                </div>
              <div id="story-text">
                <p>{props.storyText[props.dialogue].azir}</p>
              </div>
            </div>
          </div>
        )
      }
    } else if (props.storyText[props.dialogue - 1] === "DUEL" || props.storyText[props.dialogue - 2] === "DUEL") {
      return(
        <div id="campaign-screen" >
          <img id="campaign-background" src={props.computers[props.defeated - 1].background}/>
            <div id="text-box" onClick={event => {props.increaseDialogue()}}>
              <div id="speaker-picture">
                <img src={props.computers[props.player1.defeated_id - 1].image} />
              </div>
            <div id="story-text">
              <p>{props.storyText[props.dialogue]}</p>
            </div>
          </div>
        </div>
      )
    } else if (props.storyText[props.dialogue].ezreal !== undefined) {
      return(
        <div id="campaign-screen" >
          <img id="campaign-background" src={props.computers[props.defeated - 1].background}/>
            <div id="text-box" onClick={event => {props.increaseDialogue()}}>
              <div id="speaker-picture">
                <img src="image/EzrealPortrait.png" />
              </div>
            <div id="story-text">
              <p>{props.storyText[props.dialogue].ezreal}</p>
            </div>
          </div>
        </div>
      )
    } else if (props.storyText[props.dialogue].sivir !== undefined) {
      return(
        <div id="campaign-screen" >
          <img id="campaign-background" src={props.computers[props.defeated - 1].background}/>
            <div id="text-box" onClick={event => {props.increaseDialogue()}}>
              <div id="speaker-picture">
                <img src={props.player1.image} />
              </div>
            <div id="story-text">
              <p>{props.storyText[props.dialogue].sivir}</p>
            </div>
          </div>
        </div>
      )
    } else {
      console.log(props.dialogue)
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
  // }
}

export default CampaignScreen;
