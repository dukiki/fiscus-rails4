Rails.application.routes.draw do
  root to: 'demo_page#index'

  # Categories
  get 'categories/index'

  get 'categories/edit'

  get 'categories/new'

  get 'categories/show'

  get 'categories/delete'

end
