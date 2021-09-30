Rails.application.routes.draw do
   get 'home/about' => "homes#about"
  root to:'homes#index'


  devise_for :users

  resources :homes

  resources :users
    resources :books do
    resource :favorites,only:[:create,:destroy]

    resources :comments,only:[:create,:destroy]
    end

end
