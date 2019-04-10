class ApplicationAPI < Grape::API
  version 'v1', using: :header, vendor: 'resource'
  content_type :json, 'application/json'
  default_format :json

  helpers do
    def paginate(relation)
      relation.page(params[:page]).per(params[:count])
    end
  end

  mount ArtistsAPI
  mount TracksAPI

  add_swagger_documentation(
    base_path: '/api',
    api_version: 'v1',
    hide_documentation_path: true
  )
end
