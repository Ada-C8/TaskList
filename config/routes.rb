Rails.application.routes.draw do

  root to: 'tasks#index', as: 'root' #root_path

  get '/tasks/', to: 'tasks#index', as: 'tasks' #tasks_path

  get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task' #edit_task_path

  patch '/tasks/:id/mark_completion', to: 'tasks#mark_completion', as: 'mark_completion_task' #mark_completion_task_path

  get '/tasks/new', to: 'tasks#new', as: 'new-task' #new_task_path

  get '/tasks/:id', to: 'tasks#show', as: 'task' #task_path

  get '/tasks/:id/confirm_delete', to: 'tasks#confirm_delete', as: 'confirm_delete' #confirm_delete_path

  patch '/tasks/:id', to: 'tasks#update', as: 'update_task' #update_task_path

  post '/tasks', to: 'tasks#create', as: 'create_task' #create_task_path

  delete '/tasks/:id', to: 'tasks#destroy', as: 'delete_task' #delete_task_path

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
