import PropTypes from 'prop-types';
import React from 'react';

export default class IndexTracks extends React.Component {
  constructor(props) {
    super(props);

    this.state = { tracks: [] };
  }

  componentDidMount(){
    $.getJSON('/tracks.json', (response) => { this.setState({ tracks: response }) })
  }

  render() {
    var traks = this.state.tracks.map((track) => {
      return (
        <div key={ track.id }>
          <h2>{ track.title }</h2>
        </div>
      )
    })

    return (
      <div>
       <h1>Tracks</h1>
       { traks }
      </div>
    );
  }
}
