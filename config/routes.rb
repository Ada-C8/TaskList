Rails.application.routes.draw do

  get '/tasks', to: "tasks#index", as: 'tasks'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/tasks/new", to: "tasks#new", as: "new_task"

  post'/tasks', to: 'tasks#create'

  get '/tasks/:id/edit', to: 'tasks#edit', as: "edit_task"

  get "/tasks/:id", to: "tasks#show", as: "task"

  patch '/tasks/:id', to: 'tasks#update'

  get "/tasks", to: "tasks#index"

  patch 'tasks/:id/status_incomplete', to: 'tasks#status_incomplete', as: 'status_incomplete'

  patch 'tasks/:id/status_complete', to: "tasks#status_complete", as: "update_status"

  delete "/tasks/:id", to: "tasks#destroy", as: "delete_task"

  delete '/tasks', to: 'tasks#delete_complete', as: 'delete_completed'
end
