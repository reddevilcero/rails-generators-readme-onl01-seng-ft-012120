Rails.application.routes.draw do
  
  resources :users
  get 'admin/dashboard'

  get 'admin/stats'

  get 'admin/finacials'

  get 'admin/settings'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'categories/show'

  resources :posts, only: [:index, :show, :new, :create, :edit, :update]
  resources :categories
  resources :accounts
end
