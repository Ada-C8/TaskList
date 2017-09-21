Rails.application.routes.draw do
  get 'tasks/new'

  get 'tasks/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/tasks/new", to: "tasks#new", as: "new_task"
  post "/tasks", to: "tasks#create", as: "tasks"
  get '/tasks/:id/edit', to: 'tasks#edit', as: "edit_task"
  get "/tasks/:id", to: "tasks#show", as: "task"
  patch '/tasks/:id', to: 'tasks#update'
  get "/tasks", to: "tasks#index"
  delete "/tasks/:id", to: "tasks#destroy"
end
