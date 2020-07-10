Rails.application.routes.draw do
  post 'encomenda/create'
  delete :logout, to: "sessions#logout"
  put 'casas/:id', to: 'casas#update'
  put 'checkout/:id', to: 'casas#suja'
  get 'ocupadas', to: 'casas#casaOcupada'
  post 'sessions/create'
  get 'sessions/logged_in'
    match '*all', controller: 'application', action: 'cors_preflight_check', via: [:options]
  get 'produtos/index'
  post 'clientes/create'
  get 'clientes/getCli'
  get 'clientes', to: 'clientes#getCli'
end
