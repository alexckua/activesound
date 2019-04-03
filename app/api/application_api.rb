class ApplicationAPI < Grape::API
  version 'v1', using: :header, vendor: 'resource'
  content_type :json, 'application/json'
  default_format :json

  add_swagger_documentation(
    base_path: '/api',
    api_version: 'v1',
    hide_documentation_path: true
  )
end
