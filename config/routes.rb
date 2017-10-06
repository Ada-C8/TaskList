Rails.application.routes.draw do

  root to: 'tasks#index'

  resources :tasks

  patch 'tasks/:id/change_status', to: 'tasks#change_status', as: 'change_status'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
