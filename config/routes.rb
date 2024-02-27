Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  root to: redirect('/api-docs/index.html')

  get '/current_user', to: 'api/v1/users#my_profile'
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

  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show, :create, :destroy]
      resources :items, only: [:index, :show, :create, :destroy]
      resources :reservations, only: [:index, :show, :create, :destroy]
    end
  end
end
