Rails.application.routes.draw do



  root "pages#home"

  resources :ingredients, only: [ :index, :show ]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [ :index, :show, :new, :create] do
    resources :doses, only: [ :create, :destroy]
  end
end
