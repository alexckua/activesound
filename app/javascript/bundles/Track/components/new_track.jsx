import PropTypes from 'prop-types';
import React from 'react';
import NewTrackButton from '../../Buttons/components/add_track';

export default class NewTrack extends React.Component {
  constructor(props) {
    super(props);

    this.state = { action: '' };
  }

  render() {
    return (
      <div>
       <h1>New Tracks</h1>
      </div>
    );
  }
}
