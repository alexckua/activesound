Rails.application.routes.draw do
  devise_for :users
  mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: '/graphql' if Rails.env.development?
  mount ApplicationAPI => '/api'
  mount GrapeSwaggerRails::Engine => '/api/docs'
  post '/graphql', to: 'graphql#execute'
  root 'welcome#index'
end
