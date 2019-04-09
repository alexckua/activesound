require 'rails_helper'

describe 'ArtistsAPI' do
  describe 'GET /api/artists' do
    let!(:artists) { create_list(:artist, 4) }
    let(:params) { {} }

    subject { get '/api/artists', params: params }

    it 'show all artists' do
      subject
      expect(response.status).to eq 200
      expect_json_sizes(4)
    end

    describe 'search artists with name' do
      let(:artist) { artists.last }
      let(:params) do
        {
          q: {
            name_cont: artist.name
          }
        }
      end

      it 'show found partists' do
        subject
        expect(response.status).to eq 200
        expect(json_body[0][:name]).to eq artist.name
      end
    end
  end
end
