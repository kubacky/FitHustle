Rails.application.routes.draw do
  root "dashboard/workouts#index"
  devise_for :users
  namespace :dashboard do
    resources :workouts
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
