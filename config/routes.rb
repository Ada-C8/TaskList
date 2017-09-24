Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  # HTTP verb = GET, url path = /tasks, controller = TasksController (ex: tasks), action = method within controller (ex: index), name/alias = "tasks"
  get "/tasks", to: "tasks#index", as: "tasks"
  get "/tasks/new", to: "tasks#new", as: "add"
  post "/tasks", to: "tasks#create"


  get "/tasks/:id", to: "tasks#show", as: "task"
  get "/tasks/:id/edit", to: "tasks#edit", as: "edit"
  patch "/tasks/:id", to: "tasks#update"
  delete "/tasks/:id", to: "tasks#destroy"


# as: "task" can be used to access patch and delete (by asking for them) and we can apply this in views

# as: "task" for get we can use in views and controllers. For views we can link_to or button_to. For controllers we re-direct.

end
