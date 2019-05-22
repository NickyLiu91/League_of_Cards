import React from "react";
import Duelist from "../components/Duelist.js"
let duelistKey = 0

export default class DuelistsList extends React.Component {
  state = {
    duelists: [{}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}]
  }

  // componentDidMount() {
  //   fetch('http://localhost:3000/api/v1/players')
  //   .then(response => response.json())
  //   .then(json => this.setState({
  //     duelists: json.filter(
  //       duelistObj => duelistObj.computer === true
  //     )
  //   }))
  // }

  generateDuelists = () => {
    let list = this.state.duelists

    if (this.props.currentPlayer.completed === true) {
      this.props.allPlayers.slice(0, 24).forEach(duelist => {
        let index = list.findIndex(obj => Object.keys(obj).length === 0)
        list[index] = duelist
      })
      return list.map(
        duelistObj => <Duelist key={duelistKey++} duelist={duelistObj} getDuelist={this.props.getDuelist}/>
      )
    } else if (this.props.currentPlayer.defeated_id === 0 ) {
      return(list.map(
        duelistObj => <Duelist key={duelistKey++} duelist={duelistObj} getDuelist={this.props.getDuelist}/>
      ))
    } else {
      this.props.allPlayers.slice(0, this.props.currentPlayer.defeated_id).forEach(duelist => {
        let index = list.findIndex(obj => Object.keys(obj).length === 0)
        list[index] = duelist
      })
      return list.map(
        duelistObj => <Duelist key={duelistKey++} duelist={duelistObj} getDuelist={this.props.getDuelist}/>
      )
    }
  }


  render() {
    return(
      <div>
      <img id="ionia" src="image/ionia.jpeg"/>
        <div id="duelist-list">
          {this.generateDuelists()}
        </div>
      </div>
    )
  }

}
