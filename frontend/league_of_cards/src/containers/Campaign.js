import React from "react";
import {connect} from 'react-redux';
import CampaignScreen from "../components/CampaignScreen.js"
let dialogueCounter = 0

class Campaign extends React.Component {
  state = {
    storyText: [
      {sivir: "Having accepted a job to rob a passing Demacian caravan of its jewels, my crew of bandits were easily dispatched by the three riding inside the caravan: Garen, Lux, and Ezreal."},
      {sivir: "They were looking for worthy mercenaries to hire for an expedition, and only I was deemed worthy."},
      {sivir: "In his travels, Ezreal found an ancient crystal fragment that compels him to reassemble it, promising limitless power."},
      {sivir: "It has filled his mind with visions of fragments scattered accross all of Runeterra."},
      {sivir: "Prince Jarvan has ordered an expedition to retrieve the fragments and acquire the power needed to bring peace to Runeterra."},
      {sivir: "Thus, I travelled to Demacia to prepare for our journey."},
      "Alright, we gave you everything you said you would need to be a proper bodyguard.",
      "Now, it's time to see how far you've come!",
      "I am Garen, the Might of Demacia!",
      "Show me what you can do!",
      "DUEL",
      "You are every bit as strong as we thought you would be.",
      "Now show that you can fight against mages as well by defeating my sister.",
      "I am Lux, the Lady of Luminosity.",
      "I will now test your aptitude for fighting against mages.",
      "Let us begin.",
      "DUEL",
      "Congratulations!",
      "Now only one more test awaits you.",
      "So you beat Garen and Lux huh?",
      "Now its my turn!",
      "I am Jarvan IV, the Prince of Demacia!",
      "SHOW ME YOUR STRENGTH!",
      "DUEL",
      "Perfect!",
      "Now go forth and attain the remaining pieces!",
      {ezreal: "Good job back there!"},
      {ezreal: "With us as a team, we'll definitely succeed!"},
      {ezreal: "The artifact is pulling me towards Ionia!"},
      {ezreal: "Lets head out!"},
      "I have sensed that you would appear here.",
      "Your quest will lead the world down a dangerous path.",
      "I am Karma, the Enlightened One.",
      "I will end your quest right here.",
      "DUEL",
      "How could I lose?",
      "Is providence on your side?",
      "The fragment that you seek has been safe guarded by my clan for generations.",
      "I will not allow you to take it.",
      "I am Shen, the Eye of Twilight.",
      "Prepare for battle!",
      "DUEL",
      "What power...",
      "Perhaps you are the ones destined to restore balance?",
      "So you are the ones seeking this forbidden power.",
      "Don't worry, I have no intention of stopping you.",
      "Secrets kept are weapons wasted.",
      "Show me your desire for power.",
      "I am Zed, the Master of Shadows.",
      "Beat me, and I will gladly hand over the fragment you desire.",
      "DUEL",
      "I could feel your thirst for power!",
      "Take it!",
      {ezreal: "I'm not sure what that guy was talking about."},
      {ezreal: "We're gathering the pieces so we can bring peace to Runeterra."},
      {ezreal: "Anyway, the artifact is directing me towards Noxus now."},
      {ezreal: "Bleh, I hate Noxians."},
      {ezreal: "Lets quickly get the piece and get out."},
      "Cowardly Demacians have the nerve to appear before me?",
      "I am Darius, the Hand of Noxus!",
      "I will purge you from this city right now!",
      "DUEL",
      "I see, you aren't a Demacian.",
      "Finish your business and leave.",
      "What do we have here?",
      "A demacian and a lowly mercenary?",
      "I'll give you one warning.",
      "Leave or die.",
      "...",
      "Fine.",
      "DUEL",
      "Not bad.",
      "I'll let you off easy this time.",
      "You have guts to attempt an assassination with just the two of you.",
      "I'll give you the honor of dying by my hand.",
      "I am Swain, the Grand General of Noxus.",
      "I will have your heads.",
      "DUEL",
      "Impossible...",
      "What?",
      {ezreal: "Don't worry old man."},
      {ezreal: "We aren't here to assassinate you or start a war."},
      {ezreal: "We'll be taking this artifact here though."},
      {ezreal: "See ya!"},
      {ezreal: "Glad that's done with!"},
      {ezreal: "Next up is Bilgewater."},
      "What are a bunch of naive landlubbers doing here?",
      "You two will be eaten up by this city's darkness in no time.",
      "Leave.",
      "DUEL",
      "It appears I underestimated you two.",
      "Still, watch your step.",
      {ezreal: "We'll keep that in mind."},
      "I had visions of your coming.",
      "You seek a great and destructive power.",
      "I will see if your hearts are strong enough to be worthy of such a power!",
      "I am Illaoi, the Kraken Priestess!",
      "BEHOLD THE TEST OF NAGAKABOUROS!",
      "DUEL",
      "Brilliant!",
      "May Nagakabouros bless you on your journey!",
      "So you are the two rats who crawled into my city.",
      "Rumor has it that you are collecting the pieces of an ancient artifact to create a powerful weapon.",
      "Well your quest ends here.",
      "I will slaughter you and take your pieces for myself.",
      "But worry not!",
      "I'll make sure to complete the artifact in your place!",
      "WITH ITS POWER I'LL RULE NOT JUST BILGEWATER, BUT ALL OF RUNETERRA!",
      "PREPARE TO BE BLOWN TO DAVY JONES' LOCKER AT THE HANDS OF GANKGPLANK, THE SALTWATER SCOURGE!",
      "DUEL",
      "This can't be...",
      "I wont be defeated by the likes of-",
      {ezreal: "Stay down old man."},
      {ezreal: "We got the piece, lets go."},
      {ezreal: "I wonder how Gangplank heard about our quest."},
      {ezreal: "Well whatever."},
      {ezreal: "I can feel the power in the artifact getting stronger."},
      {ezreal: "Next is... the Shadow Isles."},
      "This island is no place for the living.",
      "You must leave at once!",
      "DUEL",
      "Even if you are powerful, no good will come of your being here.",
      "I tell you this for your own good; turn back.",
      {ezreal: "Sorry, but we can't do that."},
      {ezreal: "But don't worry."},
      {ezreal: "Once we finish assembling that artifact, we'll save your island as well."},
      "Ah, fresh faces.",
      "I am Thresh, the Chain Warden.",
      "What delightful game shall we play today?",
      "Perhaps chain you up and slowly tear off your skin with my hooks?",
      "DUEL",
      "You haven't seen the last of me.",
      "After all, I am the thing under the bed.",
      {ezreal: "Begone, abomination!"},
      "Oh my, I did not expect to find living creatures here.",
      "Since you came all the way out here, you must be my new acolytes.",
      "Perfect timing.",
      "Lord Vilemaw was starting to grow hungry.",
      "DUEL",
      "How could I lose...",
      "Even with the blessing of the spider god...",
      {ezreal: "This is over, you hag!"},
      {ezreal: "For you and that monstrosity you call a god!"},
      {ezreal: "This place is horrible, lets get the fragment and leave."},
      {ezreal: "You know, this journey is starting to get pretty dangerous."},
      {ezreal: "Maneuvering around cities and empires is one thing, but I didn't expect to be dealing with ghosts and monsters."},
      {ezreal: "Atleast our next stop is Targon."},
      {ezreal: "It'll be good to see some sunlight again."},
      "Who dares step foot into my domain?",
      "You are the ones trying to put together a dangerous artifact.",
      "All who dare endanger my people will be annihilated by my spear.",
      "I AM PANTHEON!",
      "THE END HAS COME!",
      "DUEL",
      "Is that all you've got?",
      "This body... is it slowing down?",
      {ezreal: "This guy is insanely strong!"},
      {ezreal: "Lets make a break for it while we managed to slow him!"},
      "You two over there.",
      "I have read it in the stars, your actions will bring calamity upon this world.",
      "You must stop at once!",
      "DUEL",
      "Mortals, please heed my words.",
      "When you unleash the power of that artifact, even I may not be able to save you humans.",
      {ezreal: "Appreciate the warning, but we've come to far to turn back."},
      {ezreal: "But there's no need to worry, we gaurantee you that we will use the artifact's power for good."},
      "What hubris, to believe that you can control the powers held within that artifact.",
      "You are already completely led astray by the artifact's promise of power.",
      "I will put an end to your ambitions right now!",
      "I am Leona, the Radiant Dawn!",
      "Feel the fury of the Sun!",
      "DUEL",
      "With such power already...",
      "Why is it that you will go to such great lengths to get more...",
      {ezreal: "One or two people can't make a difference."},
      {ezreal: "We've found plenty of people who need help on our journey."},
      {ezreal: "We are undertaking this journey so Demacia can bring lasting peace."},
      {ezreal: "In any case, we've got what we came for, so we'll be on our way."},
      {ezreal: "The power emanating from this artifact is immense now."},
      {ezreal: "We must be almost done."},
      {ezreal: "It tells me that Freljord should contain the last remaining piece."},
      {ezreal: "Though, I'm starting to have second thoughts."},
      {ezreal: "Things have really started getting dicey."},
      {ezreal: "We barely survived some of those fights..."},
      {ezreal: "Well... it should be fine, so long as we remember what we are fighting for..."},
      "I am Ashe, the Frost Archer.",
      "What brings outsiders like you into this tundra?",
      "Collecting an artifact fragment you say?",
      "And you plan to use it to bring peace across the lands?",
      "I don't know if we have anything like that here, but I think outsiders will have trouble surviving here.",
      "If you can prove to me you have what it takes to survive, I'll help you with what I can.",
      "DUEL",
      "Sejuani leads the other tribes, she might have the fragment that you are looking for.",
      "I wish you luck on your journey, and hope you succeed.",
      {ezreal: "That girl, she seemed to really believe in us."},
      {ezreal: "That's the first time this journey."},
      "Halt.",
      "I am Sejuani, Fury of the North.",
      "Who dares tresspass in my territory?",
      "Ashe sent you?",
      "If you are allies of Ashe then you are enemies of mine.",
      "Prepare to be frozen and crushed!",
      "DUEL",
      "You aren't Ashe's allies and just met her?",
      "Begone, I do not possess any artifacts.",
      {ezreal: "The artifact is leading me somewhere."},
      {ezreal: "I can sense it around here, but it's faint."},
      {ezreal: "It seems to be coming from underground..."},
      {ezreal: "A path!"},
      "Welcome, mortals.",
      "I am Lissandra, the Ice Witch, and I have been waiting for you.",
      "I sensed the power you two were holding the moment you stepped into Freljord.",
      "I have the fragment that you are seeking.",
      "But I will be the one to wield the completed artifact.",
      "With its power, I will finally rid the world of the Watchers.",
      "Prepare yourselves.",
      "This citadel will be your eternal tomb.",
      "DUEL",
      "No...",
      "I... need it... after all these eons...",
      {ezreal: "I can't believe we won..."},
      {ezreal: "We should have all the fragments now."},
      {ezreal: "Lets discuss our next steps somewhere warmer."},
      {ezreal: "The artifact is drawing me towards Shurima."},
      {ezreal: "But I think we should give up."},
      {sivir: "When we are this close to finishing?"},
      {ezreal: "We barely survived that fight against the Ice Witch."},
      {ezreal: "In fact, I don't even know how we made it this far."},
      {ezreal: "People like Elise, Pantheon, and Leona didn't even seem human."},
      {ezreal: "It feels like the more fragments we gathered, the more dangerous the people who tried to stop us were."},
      {ezreal: "I would love be able to help Ashe, Yorick, and the others, but we are in over heads."},
      {ezreal: "Shurima has ascended beings even more powerful than any of the ones we fought so far."},
      {ezreal: "If we have to fight them, then we have no chance of survival."},
      {sivir: "I was paid in advance to finish this quest."},
      {sivir: "I never turn back on missions that I accepted."},
      {ezreal: "Mercenary's honor eh?"},
      {ezreal: "You'd risk your life for something like that?"},
      {sivir: "A mercenary is always prepared to risk her life."},
      {ezreal: "Sigh..."},
      {ezreal: "I know you've made up your mind."},
      {ezreal: "And I know you're not someone who hungers for power either."},
      {ezreal: "So if you insist, then you can take the artifact and continue."},
      {ezreal: "But I'm just an explorer, I don't have any codes like that."},
      {ezreal: "So I'm going to head back; you should do the same."},
      {sivir: "Ezreal handed me the artifact and turned back on his own."},
      {sivir: "It's true that a mercenary never abandons her job."},
      {sivir: "But more than that, I found myself being strongly drawn to Shurima."},
      {sivir: "Was it because of the artifact?"},
      {sivir: "Or was it something else?"},
      "I WILL SHRED ALL WHO CROSS MY PATH!",
      "I WILL TEAR YOU TO PIECES!",
      "DUEL",
      "RAAAAAAAAGH",
      "DIE!",
      {sivir: "He's too powerful!"},
      {ezreal: "Watch out!"},
      {sivir: "Ezreal?!"},
      {sivir: "Why did you return?"},
      {ezreal: "I knew you'd continue to Shurima."},
      {ezreal: "I wouldn't be able to live with myself if I just let you die."},
      {ezreal: "Surely mercenaries have a rule against abandoning their allies as well right?"},
      {sivir: "Yeah, execution."},
      {ezreal: "That's pretty harsh!"},
      {ezreal: "But we can deal with that later!"},
      {ezreal: "Lets make a break for it while Renekton is distracted!"},
      "You will go no further.",
      "I am Nasus, the Curator of the Sands.",
      "I will not allow him to return.",
      "Anyone who seeks to disturb the harmony of the desert will be eliminated.",
      "Even if it is you.",
      "DUEL",
      "Resistance is futile.",
      "Accept your fate, and I will guide your soul to the afterlife.",
      {ezreal: "SIVIR!"},
      {ezreal: "IF ALL THESE GUYS ARE HERE, YOU MUST BE CLOSE TO WHEREVER THE ARTIFACT IS CALLING YOU TO RIGHT?!"},
      {ezreal: "I'LL DISTRACT HIM, MAKE A BREAK FOR IT!"},
      {ezreal: "THE ONLY CHANCE WE HAVE OF SURVIVNG IS IF YOU CAN ATTAIN THE POWER OF THAT ARTIFACT!"},
      {ezreal: "GO!"},
      {sivir: "DONT DIE!"},
      {sivir: "THIS IS IT!"},
      {sivir: "THE TOMB OF EMPERORS!"},
      {sivir: "What?!"},
      {ascendedXerath: "AT LAST I AM FREE!"},
      {sivir: "This..."},
      {sivir: "Xerath...?"},
      {ascendedXerath: "That is right mortal."},
      {ascendedXerath: "For centuries I have been sealed in this cursed tomb, which answers only to the blood of emperors."},
      {ascendedXerath: "Until now."},
      {sivir: "What... do you mean?"},
      {ascendedXerath: "Foolish mortal, have you still not figured it out?"},
      {ascendedXerath: "The artifact you assembled was the key to unlocking the Tomb of the Emperors."},
      {ascendedXerath: "That cursed guardian of the sands, Nasus, destroyed it and split the fragments into the winds, hoping the key to unsealing me would never be reassembled."},
      {ascendedXerath: "But before he did that, I sealed a part of my consciousness in there, which would allowed me to influence any who touched it to assemble it and bring it here."},
      {ascendedXerath: "But even then, it was just a key."},
      {ascendedXerath: "To think that it would be you, the descendent of that wretched emperor, who brings it here, desperate for help."},
      {ascendedXerath: "AHAHAHA!"},
      {ascendedXerath: "It is your will that whatever was in here come out and assist you, wasnt it?!"},
      {ascendedXerath: "Then as a reward for freeing me, I will assist you in traveling to the abyss!"},
      {ascendedXerath: "EYE OF DESTRUCTION!"},
      {sivir: "GAH!"},
      {ezreal: "HANG ON I GOT YOU!"},
      {sivir: "Ezreal...?"},
      {ezreal: "WHAT THE HELL IS GOING ON HERE?!"},
      {sivir: "We need... Nasus... and Renekton..."},
      {ezreal: "Renekton attacked Nasus the second he saw him!"},
      {ezreal: "It's the only reason I got away from him."},
      {sivir: "Why... aren't you... answering...?"},
      {ezreal: "What...?"},
      {ezreal: "Damn it..."},
      {ezreal: "You've lost too much blood..."},
      {ezreal: "At this rate, you might not make it..."},
      {ascendedXerath: "Do not worry, mortal."},
      {ascendedXerath: "You will be joining her soon enough."},
      {ascendedXerath: "As thanks for helping to release me, I shall grant you a swift death."},
      {ezreal: "Her body is completely cold... the sand is practically dyed red with her blood..."},
      {ascendedXerath: "Perish and join your ancestors in death."},
      {ascendedXerath: "THIS IS THE END!"},
      {azir: "Is that so?"},
      {ascendedXerath: "This voice..."},
      {ascendedXerath: "Impossible..."},
      {azir: "You are not the only one who has awoken from the blood of emperors!"},
      {ascendedXerath: "AZIR?!"},
      {azir: "My descendent's blood has reached me from the bottom of the dessert!"},
      {azir: "I HAVE BEEN REBORN!"},
      {azir: "NOW, I SHALL TAKE BACK WHAT YOU STOLE FROM ME!"},
      {ascendedXerath: "WHAT?!"},
      {azir: "RECOGNIZE YOUR EMPEROR!"},
      {azir: "SERVE ME!"},
      "MY POWER...?!",
      {azir: "It was never yours to begin with."},
      {azir: "Now that I have returned, that power serves its rightful owner."},
      {azir: "Arise my descendent!"},
      {sivir: "...!"},
      {azir: "Now, I will put an end your ambitions!"},
      "AZIIIIIIIIR!!!!",
      "I WILL SLAUGHTER YOU AND ALL OF YOUR DESCENDENTS!",
      {azir: "You are but my shadow."},
      {azir: "Xerath, the time of your judgment has come!"},
      "THIS TIME I WONT LEAVE EVEN A PARTICLE FOR YOU TO RESURRECT FROM!!!",
      "NOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO",
      "CURSE YOUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU",
      {ezreal: "Is it... over?"},
      {azir: "Rest easy."},
      {azir: "The deed is done."},
      {azir: "You two have fought valiantly to get to this point."},
      {azir: "With your efforts I was able to return; and I was finally able to rid the world of my treacherous advisor."},
      {azir: "You have my gratitude."},
      {ezreal: "I am honored..."},
      {azir: "As a reward for your efforts, once I resurrect Shurima, I will ensure you are celebrated as heroes."},
      {azir: "And Ezreal, Demacia can count Shurima as an ally from this day forward."},
      {azir: "Let us bring forth a new era!"},
      {azir: "The era of prosperity that Xerath stole from this world shall begin!"},
      "END"
    ]
  }

  increaseDialogue = () => {
    let dialogue = this.props.dialogue

    fetch(`http://localhost:3000/api/v1/players/${this.props.account.id}`, {
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
      // let player = this.state.player1
      // player.dialogue = player.dialogue + 1
      //
      // this.setState({
      //   player1: player,
      //   dialogue: this.state.dialogue + 1
      // })
      this.props.changeDialogue(this.props.dialogue + 1)
    })
  }

  render() {
    console.log(this.props.defeated)
    return(
      <div id="campaign-screen" >
        <CampaignScreen storyText={this.state.storyText} increaseDialogue={this.increaseDialogue}
        getDuelist={this.props.getDuelist} resetCampaign={this.props.resetCampaign}/>
      </div>
    )
  }
}

const mapStateToProps = state => {
  return {
    account: state.accountChanger.account,
    characters: state.charactersChanger.characters,
    enemy: state.enemyChanger.enemy,
    defeated: state.defeatedChanger.defeated,
    dialogue: state.dialogueChanger.dialogue,
    location: state.locationChanger.location
  }
}

const mapDispatchToProps = dispatch => {
  return {
    changeAccount: (event) => dispatch({type: 'CHANGE_ACCOUNT', newAccount: event}),
    changeEnemy: (event) => dispatch({type: 'CHANGE_ENEMY', newEnemy: event}),
    changeDefeated: (event) => dispatch({type: 'CHANGE_DEFEATED', newDefeated: event}),
    changeDialogue: (event) => dispatch({type: 'CHANGE_DIALOGUE', newDialogue: event}),
    changeLocation: (event) => dispatch({type: 'CHANGE_LOCATION', newLocation: event})
  }
}

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Campaign);
