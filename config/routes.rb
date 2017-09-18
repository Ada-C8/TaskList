Rails.application.routes.draw do

  get '/tasks/', to: 'tasks#index', as: 'tasks' # tasks_path

  get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task' # edit_task_path

  get '/tasks/new', to: 'tasks#new', as: 'new_task' # new_task_path

  get '/tasks/:id', to: 'books#show', as: 'task' # task_path

  patch '/tasks/:id', to: 'books#update', as: 'update_task' # update_task_path

  post '/tasks/', to: 'tasks#create', as: 'create_task' #create_task_path

  delete '/tasks/destroy', to: 'tasks#destroy', as: 'delete_task' # delete_task_path



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
