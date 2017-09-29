Rails.application.routes.draw do
  get 'photos/index'

  get 'photos/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :photo, only: [:index, :show] do
    resource :score
  end
end
