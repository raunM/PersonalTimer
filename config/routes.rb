Rails.application.routes.draw do
    devise_for :users
    resources :users do
      resources :timelogs
    end
    root 'timelogs#home'
end
