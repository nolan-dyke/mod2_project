Rails.application.routes.draw do
  resources :states
  resources :joiners
  resources :thoughts
  resources :contents
  resources :groups
  resources :users

  post "/remove_joiner", to: "joiners#destroy"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
