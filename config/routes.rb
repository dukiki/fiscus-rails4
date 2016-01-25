Rails.application.routes.draw do
  devise_for :users, skip: :sessions
  root to: 'demo_page#index'
  # login/logout
  as :user do
    get "login" => "users/sessions#new", as: :new_user_session
    post 'login' => 'users/sessions#create', as: :user_session
    get 'logout' => 'users/sessions#destroy', as: :destroy_user_session
  end

  # Categories
  get 'categories/index'

  get 'categories/edit'

  get 'categories/new'

  get 'categories/show'

  get 'categories/delete'

end
