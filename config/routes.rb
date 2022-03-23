Rails.application.routes.draw do
  resources:users,only:[:index,:show,:edit,:update]
  root to: 'homes#top'
  get 'homes/about',as:"about"
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
