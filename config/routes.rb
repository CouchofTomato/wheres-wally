Rails.application.routes.draw do

  root 'photos#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :photos, only: [:index, :show] do
    resources :scores, only: [:create, :index]
  end
end
