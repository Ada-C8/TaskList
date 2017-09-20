Rails.application.routes.draw do
  get '/tasks', to: 'tasks#index', as: 'tasks' # tasks_path

  get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task' # edit_task_path

  delete '/tasks/:id/delete', to: 'tasks#destroy', as: 'delete_task' # delete_task_path

  patch '/tasks/:id/change_status', to: 'tasks#change_status', as: 'change_status' # change_status_path

  get '/tasks/new', to: 'tasks#new', as: 'new_task' # new_task_path

  get '/tasks/:id', to: 'tasks#show', as: 'show_task' # task_path

  patch '/tasks/:id', to: 'tasks#update', as: 'update_task' # update__path

  post '/tasks', to: 'tasks#create', as: 'create_task' # create_tasks_path



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
