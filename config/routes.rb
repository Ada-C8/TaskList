Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # VERB    PATH    # CONTROLLERACTION   PREFIX
  get "/tasks", to: "tasks#index", as: "tasks"

  get "/tasks/new", to: "tasks#new", as: "new_task"
  post "/tasks", to: "tasks#create"

  get "/tasks/:id", to: "tasks#show", as: "task"

  get "/tasks/:id/edit", to: "tasks#edit", as: "edit_task"
  patch "/tasks/:id", to: "tasks#update"

  patch "tasks/:id/complete", to: "tasks#complete", as: "complete"
  patch "tasks/:id/incomplete", to: "tasks#incomplete", as: "incomplete"
  
  delete "/tasks/:id", to: "tasks#destroy", as: "delete_task"
end
