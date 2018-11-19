Rails.application.routes.draw do

  get 'pages/index'
  get 'carts/index'
  devise_for :users
  resources :user do
    resources :products do
      resources :carts, only: [:index, :create]
    end
  end



  root to: "pages#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
