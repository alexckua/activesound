Rails.application.routes.draw do
  mount ApplicationAPI => '/api'
  mount GrapeSwaggerRails::Engine => '/api/docs'

  devise_for :users
  root 'welcome#index'
end
