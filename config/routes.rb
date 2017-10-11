Rails.application.routes.draw do
# resources :tasks

  root to: 'tasks#index'
  #
  # get '/tasks/', to: 'tasks#index', as: 'tasks' #tasks_path
  #
  # # get 'tasks/edit'
  # get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task' #edit_tasks_path
  #
  # # get 'tasks/new'
  # get '/tasks/new', to: 'tasks#new', as: 'new_task' #new_task_path
  #
  # # get 'tasks/show'
  # get '/tasks/:id', to: 'tasks#show', as: 'task' #task_path
  #
  #
  # # patch 'tasks/completed'
  # patch '/tasks/:id/completed', to: 'tasks#completed', as:'completed' #completed_path

  resources :tasks do
    patch 'completed', as:'completed' #completed_path
  end

  #
  # # patch 'tasks/update'
  # patch '/tasks/:id', to: 'tasks#update', as:'update_task' #update_task_path
  #
  # # post 'tasks/create'
  # post '/tasks/', to: 'tasks#create', as:'create_task' #create_task_path
  #
  # # delete 'tasks/destroy'
  # delete '/tasks/:id', to: 'tasks#destroy', as: 'delete_task' #delete_task_path

end
