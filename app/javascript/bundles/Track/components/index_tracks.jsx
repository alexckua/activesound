import PropTypes from 'prop-types';
import React from 'react';

export default class IndexTracks extends React.Component {
  constructor(props) {
    super(props);

    this.state = { data: this.props.data };
  }

  render() {
    return (
      <div>
       <h1>Tracks</h1>
      </div>
    );
  }
}
