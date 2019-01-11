Rails.application.routes.draw do
  devise_for :users
  get 'toppages/home'
  resources :tricks do
    resources :videos
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'toppages#home'
end
