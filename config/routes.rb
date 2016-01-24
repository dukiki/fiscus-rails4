Rails.application.routes.draw do
  devise_for :users, skip: :sessions
  root to: 'demo_page#index'
  # login/logout
  as :user do
    get "login" => "devise/sessions#new", as: :new_user_session
    post 'login' => 'devise/sessions#create', as: :user_session
    delete 'logout' => 'devise/sessions#destroy', as: :destroy_user_session
  end

  # Categories
  get 'categories/index'

  get 'categories/edit'

  get 'categories/new'

  get 'categories/show'

  get 'categories/delete'

end
