Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  Rails.application.routes.draw do
    get '/tasks', to: 'tasks#index', as: 'tasks'
    get "/tasks/new", to: "tasks#new", as: "new_task"
    delete "/tasks/:id", to: "tasks#destroy"

  end
end
