Rails.application.routes.draw do

  resources :contactos
  resources :atividades
  resources :entregaemcasas
  resources :menudegustacaos
  resources :degustacaos
resources :products  
  post 'products/new' => 'products#create'
  get 'dashboard/index'
  devise_for :administradors
  get 'casas', to: 'casas#casasindex'
  get 'pequenosalmocos', to: 'palmoco#index'
  post 'palmoco/create'
  post 'encomenda/create'
  get 'encomendas', to: 'encomenda#show'
  delete :logout, to: "sessions#logout"
  put 'casas/:id', to: 'casas#update'
  put 'checkout/:id', to: 'casas#suja'
  get 'casas/index', to:'casas#index'
  get 'ocupadas', to: 'casas#casaOcupada'
  post 'sessions/create'
  get 'sessions/logged_in'
    match '*all', controller: 'application', action: 'cors_preflight_check', via: [:options]
  get 'produtos/index'
  post 'clientes/create'
  get 'clientes/getCli', to: 'clientes#getCli'
  get 'clientes', to: 'clientes#getCli'
  root 'dashboard#index'
end
