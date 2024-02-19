Rails.application.routes.draw do
  root to: 'api/v1/users#index'

  get '/current_user', to: 'current_user#index'
  match '/logout', to: 'users/sessions#destroy', via: [:get, :delete]

  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  Rails.application.routes.draw do
    devise_for :users, controllers: {
      sessions: 'users/sessions'
    }
  end

  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show, :create, :destroy]
      resources :items, only: [:index, :show, :create, :destroy]
      resources :reservations, only: [:index, :show, :create, :destroy]
    end
  end
end