Rails.application.routes.draw do
    devise_for :users do
      get'users/sign_out'=>'devise/sessions#destroy'
    end
    resources :timelogs
    root 'timelogs#home'
end
