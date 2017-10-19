Rails.application.routes.draw do

  resources :products
  get 'static_pages/home'

  get 'static_pages/help'

  get 'static_pages/about'

  root 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
