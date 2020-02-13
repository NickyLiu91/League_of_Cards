import React from "react";
import {connect} from 'react-redux';
var audio = new Audio('files/ExcitedDuelists.mp3')

class CampaignScreen extends React.Component {

  manageMusic = function(){
    if (this.props.storyText[this.props.dialogue].azir === "Is that so?") {
      audio.play()
    } else {
      audio.pause()
    }
  }

  startDuel = (computer) => {
    this.manageMusic()
    this.props.getDuelist(computer, "campaign", this.props.dialogue)
  }

  render() {
    console.log(this.props)
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
                  <img id="speaker-picture-2" src={this.props.account.image} />
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
                  <img id="speaker-picture-2" src={this.props.account.image} />
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
                <img id="speaker-picture-2" src={this.props.account.image} />
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
        <audio src='files/LongThunderSoundEffects.mp4' autoPlay/>
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
            <img id="campaign-preduel" src={this.props.characters[this.props.defeated].preduel}/>
              <div id="text-box" onClick={event => {this.startDuel(this.props.characters[this.props.defeated])}}>
                <div id="speaker-picture">
                  <img id="speaker-picture-2" src={this.props.characters[this.props.defeated].image} />
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
                    <img id="speaker-picture-2" src={this.props.account.image} />
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
                    <img id="speaker-picture-2" src={this.props.account.image} />
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
          <img id="campaign-preduel" src={this.props.characters[this.props.defeated].preduel}/>
            <div id="text-box" onClick={event => {this.props.getDuelist(this.props.characters[this.props.defeated], "campaign", this.props.dialogue)}}>
              <div id="speaker-picture">
                <img id="speaker-picture-2" src={this.props.characters[this.props.defeated].image} />
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
                  <img id="speaker-picture-2" src={this.props.account.image} />
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
    } else if (this.props.storyText[this.props.dialogue - 1] === "DUEL" || this.props.storyText[this.props.dialogue - 2] === "DUEL") {
      console.log(this.props)
      return(
        <div id="campaign-screen" >
          <img id="campaign-background" src={this.props.characters[this.props.defeated - 1].background}/>
            <div id="text-box" onClick={event => {this.props.increaseDialogue()}}>
              <div id="speaker-picture">
                <img id="speaker-picture-2" src={this.props.characters[this.props.defeated - 1].image} />
              </div>
            <div id="story-text">
              <p>{this.props.storyText[this.props.dialogue]}</p>
            </div>
          </div>
        </div>
      )
    } else if (this.props.storyText[this.props.dialogue - 1] === "THIS TIME I WONT LEAVE EVEN A PARTICLE FOR YOU TO RESURRECT FROM!!!" || this.props.storyText[this.props.dialogue - 2] === "THIS TIME I WONT LEAVE EVEN A PARTICLE FOR YOU TO RESURRECT FROM!!!") {
      return(
        <div id="campaign-screen" >
          <img id="campaign-background" src={this.props.characters[this.props.defeated - 1].preduel}/>
            <div id="text-box" onClick={event => {this.props.increaseDialogue()}}>
              <div id="speaker-picture">
                <img id="speaker-picture-2" src={this.props.characters[this.props.defeated - 1].image} />
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
          <img id="campaign-background" src={this.props.characters[this.props.defeated - 1].background}/>
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
          <img id="campaign-background" src={this.props.characters[this.props.defeated - 1].background}/>
            <div id="text-box" onClick={event => {this.props.increaseDialogue()}}>
              <div id="speaker-picture">
                <img id="speaker-picture-2" src={this.props.account.image} />
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
          <img id="campaign-background" src={this.props.characters[this.props.defeated].background}/>
            <div id="text-box" onClick={event => {this.props.increaseDialogue()}}>
              <div id="speaker-picture">
                <img id="speaker-picture-2" src={this.props.characters[this.props.defeated].image} />
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

const mapStateToProps = state => {
  return {
    account: state.accountChanger.account,
    characters: state.charactersChanger.characters,
    // enemy: state.enemyChanger.enemy,
    defeated: state.defeatedChanger.defeated,
    dialogue: state.dialogueChanger.dialogue,
    // location: state.locationChanger.location
  }
}

const mapDispatchToProps = dispatch => {
  return {
    changeAccount: (event) => dispatch({type: 'CHANGE_ACCOUNT', newAccount: event}),
    // changeEnemy: (event) => dispatch({type: 'CHANGE_ENEMY', newEnemy: event}),
    changeDefeated: (event) => dispatch({type: 'CHANGE_DEFEATED', newDefeated: event}),
    changeDialogue: (event) => dispatch({type: 'CHANGE_DIALOGUE', newDialogue: event})
    // changeLocation: (event) => dispatch({type: 'CHANGE_LOCATION', newLocation: event})
  }
}

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(CampaignScreen);
