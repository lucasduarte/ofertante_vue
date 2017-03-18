Rails.application.routes.draw do
  namespace :api do
    scope :v1 do
      mount_devise_token_auth_for 'User', at: 'auth', controllers: {
        sessions: 'overrides/sessions'
      }
    end
  end

  namespace :api do
    namespace :v1 do
      resources :offers
      resources :likes, only: [:create, :destroy]
    end
  end
  
end
