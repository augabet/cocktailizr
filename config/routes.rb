Cocktailizr::Application.routes.draw do
  devise_for :users

  root to: 'static_pages#home'
  resources :ingredients
  resources :cocktails

end
