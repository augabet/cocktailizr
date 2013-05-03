Cocktailizr::Application.routes.draw do
  root to: 'static_pages#home'
  resources :ingredients
  resources :cocktails

end
