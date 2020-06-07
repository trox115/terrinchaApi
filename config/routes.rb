Rails.application.routes.draw do
  post 'sessions/create'
  get 'sessions/logged_in'
    match '*all', controller: 'application', action: 'cors_preflight_check', via: [:options]
  get 'produtos/index'
  post 'clientes/create'
  get 'casas/index'
end
