Cocktailizr::Application.routes.draw do

  get "collections/show"

  get "collections/create"

  get "collections/destroy"

  devise_for :users

  root to: 'static_pages#home'
  resources :ingredients
  resources :cocktails
  resources :users
  resources :collections

end
