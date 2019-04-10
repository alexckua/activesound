class TracksAPI < Grape::API
  helpers SharedParams

  resource :tracks do
    desc 'tracks'
    params do
      optional :q, type: Hash, desc: 'Search params' do
        optional :title_cont, type: String, desc: 'String contains in the name of the Track'
      end
      use :pagination
    end

    get do
      search = Track.ransack(params[:q])
      search.sorts = 'title'
      tracks = search.result
      present paginate(tracks)
    end
  end
end
