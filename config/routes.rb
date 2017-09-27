Rails.application.routes.draw do
  get "/tasks/new", to: "tasks#new"
  post "/tasks", to:"tasks#create"

  get "/tasks", to: "tasks#index"
  get "/tasks/:id", to: "tasks#show", as: "task"


end
