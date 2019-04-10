require 'rails_helper'

describe 'TracksAPI' do
  describe 'GET /api/tracks' do
    let!(:tracks) { create_list(:track, 4) }
    let(:params) { {} }

    subject { get '/api/tracks', params: params }

    it 'show all tracks' do
      subject
      expect(response.status).to eq 200
      expect_json_sizes(4)
    end

    describe 'search tracks with title' do
      let(:track) { tracks.last }
      let(:params) do
        {
          q: {
            title_cont: track.title
          }
        }
      end

      it 'show found traks' do
        subject
        expect(response.status).to eq 200
        expect(json_body[0][:title]).to eq track.title
      end
    end
  end
end
