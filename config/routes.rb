Rails.application.routes.draw do
    get '/timelogs' => 'timelogs#timelogs'
    devise_for :users do
      get'users/sign_out'=>'devise/sessions#destroy'
    end
    get '/timer' => 'pages#timer'
    root 'pages#home'
end
