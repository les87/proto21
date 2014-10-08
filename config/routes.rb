Proto::Application.routes.draw do
  devise_for :admins
  devise_for :installs
  root "pages#home"    
  get "home", to: "pages#home", as: "home"
  get "inside", to: "pages#inside", as: "inside"
  post "inside", to: "pages#home"
  get "setup", to: "pages#setup", as:"setup"
  get "printers", to: "printers#new_printer"
  post "printers", to: "printers#create"
  get "view", to: "printers#index"

  devise_for :users

  resources :printers
  resources :calls
  
  namespace :admin do
    root "base#index"
    resources :users
  end

end