Rails.application.routes.draw do
  get 'categories/index'

  get 'categories/edit'

  get 'categories/new'

  get 'categories/show'

  get 'categories/delete'

  root 'application#index'
end
