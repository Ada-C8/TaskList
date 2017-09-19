Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


get "/tasks/new", to: "tasks#new"
post "/tasks", to: "tasks#create"

get "/tasks/:id/edit", to: "tasks#edit"

get "tasks/:id", to: "tasks#show"

patch "/tasks/:id", to: "tasks#update"

get "/tasks", to: "tasks#index"

delete "/tasks/:id", to: "tasks#destroy"


end
