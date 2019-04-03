import React from "react";

const Duelist = (props) => {
  if (Object.keys(props.duelist).length > 0) {
    return(
      <div className="duelist" onClick={event => props.getDuelist(props.duelist, "freeDuel")}>
        <img className="duelist-portrait" src={props.duelist.image}/>
        <div className="duelist-name">{props.duelist.name}</div>
      </div>
    )
  } else {
    return(
      <div className="duelist" >
        <img className="duelist-portrait locked-duelist-portrait"/>
      </div>
    )
  }

}

export default Duelist;
