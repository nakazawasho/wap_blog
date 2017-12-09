Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root 'articles#index'
  get "/articles/search/:genre" => "articles#search"
  get "/articles/search" => "articles#search"
  resources :articles do
    collection do
      get 'archive'
    end
  end

end
