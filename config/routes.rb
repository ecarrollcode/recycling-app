Rails.application.routes.draw do
  # devise_for :admin
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: 'searches#index'
  get '/searches/get_ajx', to: 'searches#get_ajx'
  get '/searches/get_ajx_item_infos', to: 'searches#get_ajx_item_infos'
  resources :searches
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
