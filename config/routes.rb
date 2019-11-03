Rails.application.routes.draw do
  devise_for :users
  mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/api" if Rails.env.development?
  post "/api", to: "graphql#execute"

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
