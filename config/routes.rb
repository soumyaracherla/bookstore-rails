Rails.application.routes.draw do
  get 'pages/about'
  root 'books#index', as: 'home'

  get 'about' => 'pages#about', as: 'about'

  resources :books do
    resources :comments

  end
  #get 'books/new'
  #get 'books/show'
  #get 'books/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
