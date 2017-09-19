Rails.application.routes.draw do
  get 'tasks/index'

  get '/tasks', to: "tasks#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/tasks/new", to: "books#new", as: "new_task"


  get '/tasks/:title/edit', to: 'tasks#edit', as: "edit_task"

  get "/tasks/:title", to: "tasks#show", as: "task"

  patch '/tasks/:title', to: 'tasks#update'

  get "/tasks", to: "tasks#index"

  delete "/tasks/:title", to: "tasks#destroy"
end
