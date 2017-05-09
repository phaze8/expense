Rails.application.routes.draw do
  resources :level3s
  resources :level2s
  resources :level1s
   resources :persons 
  resources :costs

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  get 'addpeople' => 'person#new'

end
