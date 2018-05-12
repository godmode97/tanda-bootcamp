Rails.application.routes.draw do
  devise_for :users
  root to: redirect('/posts')
  get 'posts', to: 'posts#index'
  post 'posts', to: 'posts#create'
  delete 'posts', to: 'posts#delete'
  get 'update', to: 'posts#update'
  get 'login', to: 'posts#login'
  get 'signup', to: 'posts#signup'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
