Rails.application.routes.draw do

  resources :users, only: [:show, :edit, :update]

  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resources :post_comments, only: [:create, :destroy]
    resource :favorite, only: [:create, :destroy]
  end


  get 'homes/about' => 'homes#about', as: 'about'

  devise_for :users
  root to: "homes#top"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
