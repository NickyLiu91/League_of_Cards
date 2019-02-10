import React from "react";

const Duelist = (props) => {
  return(
    <div className="duelist" onClick={event => props.getDuelist(props.duelist, "freeDuel")}>
      <img className="duelist-portrait" src={props.duelist.image}/>
      <div>{props.duelist.name}</div>
    </div>
  )

}

export default Duelist;
