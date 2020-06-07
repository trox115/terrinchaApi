Rails.application.routes.draw do
  get 'casas/index'
    match '*all', controller: 'application', action: 'cors_preflight_check', via: [:options]
  get 'produtos/index'
end
