Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/tasks', to: 'tasks#index', as: 'tasks'
  get '/tasks/new', to: 'tasks#new', as: 'new_task'
  get '/tasks/:id', to: 'tasks#show', as: "task"
  post "/tasks", to: "tasks#create"
  get "/tasks/:id/edit", to: "tasks#edit", as: "edit_task"
  patch "/tasks/:id", to: "tasks#update"
  delete '/tasks/:id', to: "tasks#destroy"
  patch "/tasks/:id/complete", to: 'tasks#completed', as: 'completed_task'
  # have to add /complete and /uncomplete for these to work
  patch '/tasks/:id/uncomplete', to: 'tasks#uncompleted', as: 'uncompleted_task'
end
