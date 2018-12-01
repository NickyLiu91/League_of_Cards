import React from "react";
import Duelist from "../components/Duelist.js"
let duelistKey = 0

export default class DuelistsList extends React.Component {
  state = {
    duelists: []
  }

  componentDidMount() {
    fetch('http://localhost:3000/api/v1/players')
    .then(response => response.json())
    .then(json => this.setState({
      duelists: json
    }))
  }

  generateDuelists = () => {
    return this.state.duelists.map(
      duelistObj => <Duelist key={duelistKey++} duelist={duelistObj} getDuelist={this.props.getDuelist}/>
    )
  }


  render() {
    return(
      <div>
        <div className="duelist-list">
          {this.generateDuelists()}
        </div>
        <button onClick={this.props.renderHome}>Home</button>
      </div>
    )
  }

}