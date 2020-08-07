Rails.application.routes.draw do
  resources :campaigns, only: [:index, :show] do
    resources :services, only: [:index, :show]    
  end

  resources :services, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
