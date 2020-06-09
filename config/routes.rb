Rails.application.routes.draw do
  post 'palmoco/create'
  post 'encomenda/create'
  delete :logout, to: "sessions#logout"
  put 'casas/:id', to: 'casas#update'
  put 'checkout/:id', to: 'casas#suja'
  post 'sessions/create'
  get 'sessions/logged_in'
    match '*all', controller: 'application', action: 'cors_preflight_check', via: [:options]
  get 'produtos/index'
  post 'clientes/create'
  get 'casas/index'
end
