import PropTypes from 'prop-types';
import React from 'react';
import TrackAction from './track_action';

export default class NewTrackButton extends React.Component {
  constructor(props) {
    super(props);

    this.state = { action: '' };
  }

  setAction(){
    this.setState({ action: 'add_track' })
  }

  render(){
    var tmp = (this.state.action) ? <TrackAction btn_action={ this.state.action }/> : null

    return (
      <div>
        <button type='submit' onClick={ this.setAction.bind(this) }>Add track</button>
        { tmp }
      </div>
    );
  }
}
