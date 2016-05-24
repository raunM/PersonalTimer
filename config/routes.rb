Rails.application.routes.draw do
    devise_for :users do
      get'users/sign_out'=>'devise/sessions#destroy'
    end
    resources :users do
      resources :timelog
    end
    root 'timelogs#home'
end
