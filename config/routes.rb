Rails.application.routes.draw do

  namespace :api do
    resources :questions do
      resources :answers, only: [:index, :create]
    end
  end
end
