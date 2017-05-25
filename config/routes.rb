Rails.application.routes.draw do
  get 'pages/home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :cocktails, only: [ :index, :show, :create]
root "pages#home"
end
