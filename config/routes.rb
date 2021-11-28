Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'sign_up', to: 'registrations#new'

  post 'sign_up', to: 'registrations#create'

  get "password", to: "passwords#edit"
  patch "password", to: "passwords#update"


  delete 'logout', to: 'sessions#destroy'
  get "sign_in" , to: "sessions#new"
  post "sign_in", to: "sessions#create"
  get 'main', to: 'main#index'

  root to: 'main#index'

  get 'about', to: 'pages#about'
end
