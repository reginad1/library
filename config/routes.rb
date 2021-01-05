Rails.application.routes.draw do

  devise_scope :user do
    post 'sign_in', to: 'users/sessions#create'
    get 'user', to: 'users/sessions#show'
    delete 'sign_out', to: 'users/sessions#destroy'
  end
  root 'pages#welcome'
  resources :ebooks, only: :index
  resources :checked_out_books, only: :create
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
