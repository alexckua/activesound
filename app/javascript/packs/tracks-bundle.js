import ReactOnRails from 'react-on-rails';

import IndexTracks from '../bundles/Track/components/index_tracks';
import NewTrack from '../bundles/Track/components/new_track';
import MainTracks from '../bundles/Track/components/main_tracks';

import NewTrackButton from '../bundles/Buttons/components/add_track';
import TrackAction from '../bundles/Buttons/components/track_action';

ReactOnRails.register({
  IndexTracks,
  NewTrackButton,
  NewTrack,
  MainTracks,
  TrackAction,
});
