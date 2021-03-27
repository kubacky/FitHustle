Rails.application.routes.draw do
  root "dashboard/workouts#index"
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations'}
  namespace :dashboard do
    resources :workouts, :trainees
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
