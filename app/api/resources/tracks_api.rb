class TracksAPI < Grape::API
  resource :tracks do
    desc 'tracks'
    params do
      optional :q, type: Hash, desc: 'Search params' do
        optional :title_cont, type: String, desc: 'String contains in the name of the Track'
      end
    end

    get do
      search = Track.ransack(params[:q])
      search.sorts = 'title'
      tracks = search.result
      present tracks
    end
  end
end
