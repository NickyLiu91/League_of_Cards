import React from "react";
var audio = new Audio('files/ExcitedDuelists.mp3')

export default class CampaignScreen extends React.Component {
  componentDidMount() {
    console.log(this.props)
  }

  manageMusic = function(){
    if (audio.currentTime === 0) {
      audio.play()
    } else {
      audio.pause()
    }
  }

  startDuel = (computer) => {
    this.manageMusic()
    this.props.getDuelist(computer, "campaign")
  }

  render() {
    if (this.props.dialogue < 6 || (this.props.dialogue >= 223  && this.props.dialogue <= 248)) {
      if (this.props.storyText[this.props.dialogue].ezreal !== undefined) {
        return(
          <div id="campaign-screen" >
            <img id="campaign-background"/>
              <div id="text-box" onClick={event => {this.props.increaseDialogue()}}>
                <div id="speaker-picture">
                  <img id="speaker-picture-2" src="image/EzrealPortrait.png" />
                </div>
              <div id="story-text">
                <p>{this.props.storyText[this.props.dialogue].ezreal}</p>
              </div>
            </div>
          </div>
        )
      } else if (this.props.storyText[this.props.dialogue].sivir !== undefined){
        return(
          <div id="campaign-screen" >
            <img id="campaign-background"/>
              <div id="text-box" onClick={event => {this.props.increaseDialogue()}}>
                <div id="speaker-picture">
                  <img id="speaker-picture-2" src={this.props.player1.image} />
                </div>
              <div id="story-text">
                <p>{this.props.storyText[this.props.dialogue].sivir}</p>
              </div>
            </div>
          </div>
        )
      }
    } else if (this.props.dialogue >= 279 && this.props.dialogue <= 280){
      if (this.props.storyText[this.props.dialogue].sivir !== undefined){
        return(
          <div id="campaign-screen" >
            <img id="campaign-background" />
              <div id="text-box" onClick={event => {this.props.increaseDialogue()}}>
                <div id="speaker-picture">
                  <img id="speaker-picture-2" src={this.props.player1.image} />
                </div>
              <div id="story-text">
                <p>{this.props.storyText[this.props.dialogue].sivir}</p>
              </div>
            </div>
          </div>
        )
      }
    } else if (this.props.dialogue === 281) {
      return(
        <div id="campaign-screen" >
        <audio src='files/LongThunderSoundEffects.mp4' autoPlay/>
          <img id="campaign-background" src={"image/XerathSummon.gif"}/>
            <div id="text-box" onClick={event => {this.props.increaseDialogue()}}>
              <div id="speaker-picture">
                <img id="speaker-picture-2" src={this.props.player1.image} />
              </div>
            <div id="story-text">
              <p>{this.props.storyText[this.props.dialogue].sivir}</p>
            </div>
          </div>
        </div>
      )
    } else if (this.props.dialogue === 282) {
      return(
        <div id="campaign-screen" >
          <img id="campaign-background" src={"image/XerathSummon.gif"}/>
            <div id="text-box" onClick={event => {this.props.increaseDialogue()}}>
              <div id="speaker-picture">
                <div> </div>
              </div>
            <div id="story-text">
              <p>{this.props.storyText[this.props.dialogue].ascendedXerath}</p>
            </div>
          </div>
        </div>
      )
    } else if (this.props.dialogue > 281 && this.props.dialogue < 339) {
      if (this.props.storyText[this.props.dialogue] === "THIS TIME I WONT LEAVE EVEN A PARTICLE FOR YOU TO RESURRECT FROM!!!") {
        return(
          <div id="campaign-screen" >
            <img id="campaign-preduel" src={this.props.computers[this.props.defeated].preduel}/>
              <div id="text-box" onClick={event => {this.startDuel(this.props.computers[this.props.defeated])}}>
                <div id="speaker-picture">
                  <img id="speaker-picture-2" src={this.props.computers[this.props.defeated].image} />
                </div>
              <div id="story-text">
                <p>{this.props.storyText[this.props.dialogue]}</p>
              </div>
            </div>
          </div>
        )
      } else if (this.props.dialogue > 281 && this.props.dialogue < 328) {
        if (this.props.storyText[this.props.dialogue].sivir !== undefined){
          return(
            <div id="campaign-screen" >
              <img id="campaign-background" src={"image/AscendedXerath.jpg"}/>
                <div id="text-box" onClick={event => {this.props.increaseDialogue()}}>
                  <div id="speaker-picture">
                    <img id="speaker-picture-2" src={this.props.player1.image} />
                  </div>
                <div id="story-text">
                  <p>{this.props.storyText[this.props.dialogue].sivir}</p>
                </div>
              </div>
            </div>
          )
        } else if (this.props.storyText[this.props.dialogue].ascendedXerath !== undefined) {
          return(
            <div id="campaign-screen" >
              <img id="campaign-background" src={"image/AscendedXerath.jpg"}/>
                <div id="text-box" onClick={event => {this.props.increaseDialogue()}}>
                  <div id="speaker-picture">
                    <img id="speaker-picture-2" src="image/AscendedXerathPortrait.jpg"/>
                  </div>
                <div id="story-text">
                  <p>{this.props.storyText[this.props.dialogue].ascendedXerath}</p>
                </div>
              </div>
            </div>
          )
        } else if (this.props.storyText[this.props.dialogue].ezreal !== undefined) {
          return(
            <div id="campaign-screen" >
              <img id="campaign-background" src={"image/AscendedXerath.jpg"}/>
                <div id="text-box" onClick={event => {this.props.increaseDialogue()}}>
                  <div id="speaker-picture">
                    <img id="speaker-picture-2" src="image/EzrealPortrait.png"/>
                  </div>
                <div id="story-text">
                  <p>{this.props.storyText[this.props.dialogue].ezreal}</p>
                </div>
              </div>
            </div>
          )
        } else if (this.props.storyText[this.props.dialogue].azir === "Is that so?") {
          this.manageMusic()
          return(
            <div id="campaign-screen" >
              <img id="campaign-background" src={"image/AscendedXerath.jpg"}/>
                <div id="text-box" onClick={event => {this.props.increaseDialogue()}}>
                  <div id="speaker-picture">
                    <div> </div>
                  </div>
                <div id="story-text">
                  <p>{this.props.storyText[this.props.dialogue].azir}</p>
                </div>
              </div>
            </div>
          )
        } else if (this.props.storyText[this.props.dialogue].azir !== undefined) {
          return(
            <div id="campaign-screen" >
              <img id="campaign-background" src={"image/AscendedXerath.jpg"}/>
                <div id="text-box" onClick={event => {this.props.increaseDialogue()}}>
                  <div id="speaker-picture">
                    <img id="speaker-picture-2" src="image/AzirPortrait.png"/>
                  </div>
                <div id="story-text">
                  <p>{this.props.storyText[this.props.dialogue].azir}</p>
                </div>
              </div>
            </div>
          )
        }
      } else if (this.props.dialogue > 327 && this.props.dialogue < 339) {
        console.log(this.props.dialogue)
        if (this.props.storyText[this.props.dialogue].sivir !== undefined){
          return(
            <div id="campaign-screen" >
              <img id="campaign-background" src="image/Xerath.png"/>
                <div id="text-box" onClick={event => {this.props.increaseDialogue()}}>
                  <div id="speaker-picture">
                    <img id="speaker-picture-2" src={this.props.player1.image} />
                  </div>
                <div id="story-text">
                  <p>{this.props.storyText[this.props.dialogue].sivir}</p>
                </div>
              </div>
            </div>
          )
        } else if (this.props.storyText[this.props.dialogue].ezreal !== undefined) {
          return(
            <div id="campaign-screen" >
              <img id="campaign-background" src="image/Xerath.png"/>
                <div id="text-box" onClick={event => {this.props.increaseDialogue()}}>
                  <div id="speaker-picture">
                    <img id="speaker-picture-2" src="image/EzrealPortrait.png"/>
                  </div>
                <div id="story-text">
                  <p>{this.props.storyText[this.props.dialogue].ezreal}</p>
                </div>
              </div>
            </div>
          )
        } else if (this.props.storyText[this.props.dialogue].azir === "Xerath, the time of your judgment has come!") {
          let audio = new Audio("https://vignette.wikia.nocookie.net/leagueoflegends/images/4/42/Azir.tauntXerath07.ogg/revision/latest?cb=20140827015020")
          audio.play()
          return(
            <div id="campaign-screen" >
              <img id="campaign-background" src="image/Azir.png"/>
                <div id="text-box" onClick={event => {this.props.increaseDialogue()}}>
                  <div id="speaker-picture">
                    <img id="speaker-picture-2" src="image/AzirPortrait.png"/>
                  </div>
                <div id="story-text">
                  <p>{this.props.storyText[this.props.dialogue].azir}</p>
                </div>
              </div>
            </div>
          )
        } else if (this.props.storyText[this.props.dialogue].azir !== undefined) {
          return(
            <div id="campaign-screen" >
              <img id="campaign-background" src="image/Xerath.png"/>
                <div id="text-box" onClick={event => {this.props.increaseDialogue()}}>
                  <div id="speaker-picture">
                    <img id="speaker-picture-2" src="image/AzirPortrait.png"/>
                  </div>
                <div id="story-text">
                  <p>{this.props.storyText[this.props.dialogue].azir}</p>
                </div>
              </div>
            </div>
          )
        } else {
          return(
            <div id="campaign-screen" >
              <img id="campaign-background" src="image/Xerath.png"/>
                <div id="text-box" onClick={event => {this.props.increaseDialogue()}}>
                  <div id="speaker-picture">
                    <img id="speaker-picture-2" src="image/XerathPortrait.png"/>
                  </div>
                <div id="story-text">
                  <p>{this.props.storyText[this.props.dialogue]}</p>
                </div>
              </div>
            </div>
          )
        }
      }
    } else if (this.props.storyText[this.props.dialogue] === "DUEL" ) {
      console.log(this.props)
      return(
        <div id="campaign-screen" >
          <img id="campaign-preduel" src={this.props.computers[this.props.defeated].preduel}/>
            <div id="text-box" onClick={event => {this.props.getDuelist(this.props.computers[this.props.defeated], "campaign")}}>
              <div id="speaker-picture">
                <img id="speaker-picture-2" src={this.props.computers[this.props.defeated].image} />
              </div>
            <div id="story-text">
              <p>{this.props.storyText[this.props.dialogue - 1]}</p>
            </div>
          </div>
        </div>
      )
    } else if (this.props.storyText[this.props.dialogue] === "END") {
      return(
        <div id="campaign-screen" >
          <div id="end-screen" onClick={event => this.props.resetCampaign(event)}>
            END
          </div>
        </div>
      )
    } else if (this.props.dialogue > 340) {
      console.log(this.props.dialogue)
      if (this.props.storyText[this.props.dialogue].sivir !== undefined){
        return(
          <div id="campaign-screen" >
            <img id="campaign-background" src="image/XerathBG.png"/>
              <div id="text-box" onClick={event => {this.props.increaseDialogue()}}>
                <div id="speaker-picture">
                  <img id="speaker-picture-2" src={this.props.player1.image} />
                </div>
              <div id="story-text">
                <p>{this.props.storyText[this.props.dialogue].sivir}</p>
              </div>
            </div>
          </div>
        )
      } else if (this.props.storyText[this.props.dialogue].ezreal !== undefined) {
        return(
          <div id="campaign-screen" >
            <img id="campaign-background" src="image/XerathBG.png"/>
              <div id="text-box" onClick={event => {this.props.increaseDialogue()}}>
                <div id="speaker-picture">
                  <img id="speaker-picture-2" src="image/EzrealPortrait.png"/>
                </div>
              <div id="story-text">
                <p>{this.props.storyText[this.props.dialogue].ezreal}</p>
              </div>
            </div>
          </div>
        )
      } else if (this.props.storyText[this.props.dialogue].azir !== undefined) {
        return(
          <div id="campaign-screen" >
            <img id="campaign-background" src="image/XerathBG.png"/>
              <div id="text-box" onClick={event => {this.props.increaseDialogue()}}>
                <div id="speaker-picture">
                  <img id="speaker-picture-2" src="image/AzirPortrait.png"/>
                </div>
              <div id="story-text">
                <p>{this.props.storyText[this.props.dialogue].azir}</p>
              </div>
            </div>
          </div>
        )
      }
    } else if (this.props.storyText[this.props.dialogue - 1] === "DUEL" || this.props.storyText[this.props.dialogue - 2] === "DUEL" ||
  this.props.storyText[this.props.dialogue - 1] === "THIS TIME I WONT LEAVE EVEN A PARTICLE FOR YOU TO RESURRECT FROM!!!" || this.props.storyText[this.props.dialogue - 2] === "THIS TIME I WONT LEAVE EVEN A PARTICLE FOR YOU TO RESURRECT FROM!!!") {
      return(
        <div id="campaign-screen" >
          <img id="campaign-background" src={this.props.computers[this.props.defeated - 1].background}/>
            <div id="text-box" onClick={event => {this.props.increaseDialogue()}}>
              <div id="speaker-picture">
                <img id="speaker-picture-2" src={this.props.computers[this.props.player1.defeated_id - 1].image} />
              </div>
            <div id="story-text">
              <p>{this.props.storyText[this.props.dialogue]}</p>
            </div>
          </div>
        </div>
      )
    } else if (this.props.storyText[this.props.dialogue].ezreal !== undefined) {
      return(
        <div id="campaign-screen" >
          <img id="campaign-background" src={this.props.computers[this.props.defeated - 1].background}/>
            <div id="text-box" onClick={event => {this.props.increaseDialogue()}}>
              <div id="speaker-picture">
                <img id="speaker-picture-2" src="image/EzrealPortrait.png" />
              </div>
            <div id="story-text">
              <p>{this.props.storyText[this.props.dialogue].ezreal}</p>
            </div>
          </div>
        </div>
      )
    } else if (this.props.storyText[this.props.dialogue].sivir !== undefined) {
      return(
        <div id="campaign-screen" >
          <img id="campaign-background" src={this.props.computers[this.props.defeated - 1].background}/>
            <div id="text-box" onClick={event => {this.props.increaseDialogue()}}>
              <div id="speaker-picture">
                <img id="speaker-picture-2" src={this.props.player1.image} />
              </div>
            <div id="story-text">
              <p>{this.props.storyText[this.props.dialogue].sivir}</p>
            </div>
          </div>
        </div>
      )
    } else {
      console.log(this.props.dialogue)
      return(
        <div id="campaign-screen" >
          <img id="campaign-background" src={this.props.computers[this.props.defeated].background}/>
            <div id="text-box" onClick={event => {this.props.increaseDialogue()}}>
              <div id="speaker-picture">
                <img id="speaker-picture-2" src={this.props.computers[this.props.player1.defeated_id].image} />
              </div>
            <div id="story-text">
              <p>{this.props.storyText[this.props.dialogue]}</p>
            </div>
          </div>
        </div>
      )
    }
  }
}

// export default CampaignScreen;
