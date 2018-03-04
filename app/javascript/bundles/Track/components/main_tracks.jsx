import PropTypes from 'prop-types';
import React from 'react';
import IndexTracks from './index_tracks';
import NewTrack from './new_track';

export default class MainTracks extends React.Component {
  constructor(props) {
    super(props);

    this.state = { action: 'index_tracks' };
  }

  updateAction = (action) => {
    this.setState({ action: action })
  }

  render() {
    var index = (this.state.action == 'index_tracks') ? <IndexTracks/> : null
    var form = (this.state.action == 'add_track') ? <NewTrack/> : null

    return (
      <div>
        { index }
        { form }
      </div>
    );
  }
}
