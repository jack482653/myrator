Rails.application.routes.draw do
  root 'main#index'
  resources :jobs, only: [:index, :show]
  resources :companies, only: [:index, :show]

  namespace :admin do
    root 'main#index'
    get 'company', to: 'companies#edit'
    patch '/company', to: 'companies#update'
    patch '/jobs/:id/update_enabled', to: 'jobs#update_enabled'
    resources :jobs, only: [:new, :create, :edit, :update, :destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
