Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'lists#index'
  resources :lists, only: %i[index show new create] do
    resources :bookmark, only: %i[index show new create]
  end
  resources :bookmark, only: [:destroy]
end
