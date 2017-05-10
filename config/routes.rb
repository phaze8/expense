Rails.application.routes.draw do
  resources :level3s
  resources :level2s
  resources :level1s
  resources :costs

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  get '/login', to: 'home#login'

  # This is where we are redirected if OmniAuth successfully authenticates
  # the user.
  match '/auth/:provider/callback', to: 'home#callback', via: [:get, :post]
  
  match '/send_mail', to: 'home#send_mail', via: [:post]

  match '/disconnect', to: 'home#disconnect', via: [:get]

end
