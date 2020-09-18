Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'restaurants#index'

  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:new, :create]
    collection do
      get :french
      get :italian
      get :chinese
      get :japanese
      get :belgian
    end
  end
end
