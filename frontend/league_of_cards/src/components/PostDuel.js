import React from "react";

const PostDuel = (props) => {
  console.log(props.defeated)
  if (props.display === "Win") {
    return(
      <div id="post-match" onClick={event => props.renderPostDuel(props.location)}>
        <img id="targon" src="image/targon.jpeg" />
        <div id="post-match-message">
          <h1>CONGRATULATIONS!</h1>
          <br/>
          <h1>YOU HAVE DEFEATED YOUR OPPONENT!</h1>
          <br/>
          <br/>
          <h1>You have recieved 30 gold and {props.rewardCard.name}!</h1>
        </div>
      </div>
    )
  } else if (props.display === "Lose") {
    return(
      <div id="post-match" onClick={event => props.renderHome()}>
      <img id="shadow-isles" src="image/shadow-isles.jpeg" />
        <div id="post-match-message">
          <h1>YOU HAVE RUN OUT OF STAMINA</h1>
          <h1>YOU ARE NO LONGER ABLE TO FIGHT</h1>
          <h1>YOU CAN ONLY WATCH ON AS YOUR ENEMY COMES TO DELIVER THE FINISHING BLOW</h1>
        </div>
      </div>
    )
  }

}

export default PostDuel;
