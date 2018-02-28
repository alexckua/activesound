require 'rails_helper'

RSpec.describe TracksController, type: :controller do
  describe 'GET#index' do
    let!(:tracks) { create_list(:track, 4) }

    subject { get :index }

    it { is_expected.to have_http_status 200 }
    it { is_expected.to render_template 'index' }
    it { expect(tracks.count).to eq 4 }

    context 'fomat.json' do
      subject { get :index, format: :json }

      it { expect(subject.header['Content-Type']).to include 'application/json' }
    end
  end
end
