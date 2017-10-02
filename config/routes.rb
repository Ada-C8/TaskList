Rails.application.routes.draw do
  root to: 'tasks#index'

  get '/tasks', to: 'tasks#index', as: 'tasks' #tasks_path

  get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task' #edit_book_path

  get '/tasks/new', to: 'tasks#new', as: 'new_task'

  get '/tasks/:id', to: 'tasks#show', as: 'task'

  patch '/tasks/:id', to: 'tasks#update', as: 'update_task'

  post '/tasks', to: 'tasks#create', as: 'create_task'

  patch '/tasks/:id/mark_complete', to: 'tasks#mark_complete', as: 'mark_complete'

  delete '/tasks/:id', to: 'tasks#destroy', as: 'delete_task'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
