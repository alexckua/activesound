import PropTypes from 'prop-types';
import React from 'react';

export default class NewTrackButton extends React.Component {
  constructor(props) {
    super(props);

    this.state = { action: 'new_track' };
  }

  render() {
    return (
      <a href='' className='nav-link'>Add track</a>
    );
  }
}
