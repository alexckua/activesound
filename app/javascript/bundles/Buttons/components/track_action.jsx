import PropTypes from 'prop-types';
import React from 'react';
import NewTrackButton from './add_track';
import MainTracks from '../../Track/components/main_tracks';

export default class TrackAction extends React.Component {
  constructor(props) {
    super(props);

    this.state = { action: '' };
  }

  componentDidMount(){
    this.setState({ action: this.props.btn_action })
  }

  render(){
    return(
      <div>
      </div>
    )
  }
}
