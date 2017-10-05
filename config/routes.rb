Rails.application.routes.draw do
  root to: 'tasks#index'

  get '/tasks', to: 'tasks#index', as: 'tasks'

  get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'

  get '/tasks/new', to: 'tasks#new', as: 'new_task'

  get '/tasks/:id', to: 'tasks#show', as: 'task'

  patch '/tasks/:id', to: 'tasks#update', as: 'update_task'

  patch '/tasks/:id/markdone', to: 'tasks#markdone', as: 'markdone_task'

  post '/tasks', to: 'tasks#create', as: 'create_task'

  delete '/tasks/:id', to: 'tasks#delete', as: 'delete_task'

  # resource :tasks

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
