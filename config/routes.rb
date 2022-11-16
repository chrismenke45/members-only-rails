Rails.application.routes.draw do
  devise_for :users, controllers: {
            sessions: "users/sessions",
            registrations: "users/registrations",
          }
  resources :posts, only: [:new, :create, :index]

  root to: "posts#index"
end
