Rails.application.routes.draw do
  get '/tasks/index', to: 'tasks#index', as: 'tasks'

  get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'

  get '/tasks/new', to: 'tasks#new', as: 'new_task'

  get '/tasks/:id' to: 'tasks#show', as: 'task'

  patch '/tasks/:id', to: 'tasks#update', as: 'update_task'

  post '/tasks', to: 'tasks/create', as: 'create_task'

  delete '/tasks', to: 'tasks#destroy', as: 'delete_task'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
