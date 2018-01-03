Rails.application.routes.draw do

  resources :profits, only: [:new, :create]

  root 'profits#new'

  get 'profits', to: 'profits#new', as: 'profits_root'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
