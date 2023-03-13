Rails.application.routes.draw do
  resources :books, only: [:index, :edit, :show, :create, :update, :destroy]
  
  devise_for :users
  root to: "homes#top"
  get '/about' => 'homes#about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
