Rails.application.routes.draw do
    devise_for :users, controllers: {registrations: 'users/registrations' }
    resources :users do
      resources :timelogs
    end
    root 'timelogs#home'
end
