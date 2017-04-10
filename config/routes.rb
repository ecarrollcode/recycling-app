Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: 'searches#index'
  get '/searches/get_ajx', to: 'searches#get_ajx'
  resources :searches
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
