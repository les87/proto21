Proto::Application.routes.draw do
  devise_for :admins
  devise_for :installs
  root "pages#home"    
  get "home", to: "pages#home", as: "home"
  get "inside", to: "pages#inside", as: "inside"
  get "setup", to: "pages#setup", as:"setup"
  get "printers", to: "printers#new_printer"

  devise_for :users

  resources :printers
  
  namespace :admin do
    root "base#index"
    resources :users
  end

end