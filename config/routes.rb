Rails.application.routes.draw do
  get 'tasks/index'

  get '/', to: "tasks#index", as: "home"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/tasks/new', to: "tasks#new", as: 'new_task'
  post "tasks", to: "tasks#create", as: "create_task"

  get '/tasks', to: "tasks#index", as: "tasks"
  get "/tasks/:id", to: "tasks#show", as: "task"

  get '/tasks/:id/edit', to: 'tasks#edit', as: "edit_task"
  patch '/tasks/:id', to: 'tasks#update', as: 'update_task'

  delete "/tasks/:id", to: "tasks#destroy", as: "delete_task" #specificity
end










# Rails.application.routes.draw do
#   get "/tasks/new", to: "tasks#new"
#   post "/tasks", to:"tasks#create"
#
#   get "/tasks", to: "tasks#index"
#   get "/tasks/:id", to: "tasks#show", as: "task"
#
#   get "/tasks/:id/edit", to: "tasks#edit", as: "edit_task"
#   patch "/tasks/:id", to: "tasks#update"
#
#   delete "tasks/:id", to: "tasks#delete", as: "delete_task"
# end
