class ArtistsAPI < Grape::API
  helpers SharedParams

  resource :artists do
    desc 'Artists'
    params do
      optional :q, type: Hash, desc: 'Search params' do
        optional :name_cont, type: String, desc: 'String contains in the name of the Artist'
      end
      use :pagination
    end

    get do
      search = Artist.ransack(params[:q])
      search.sorts = 'name'
      artists = search.result
      present paginate(artists)
    end
  end
end
