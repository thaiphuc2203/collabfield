Rails.application.routes.draw do
  get 'errors/not_found'
  devise_for :users
  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
  end
  get 'up' => 'rails/health#show', as: :rails_health_check
  root to: 'pages#index'
  match '*path', to: 'errors#not_found', via: :all
end
