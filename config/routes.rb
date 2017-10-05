Rails.application.routes.draw do

  root to: 'tasks#index' #root_path takes to index/home page. Also, localhost3000 automatically goes here.

  get '/tasks', to: 'tasks#index', as: 'tasks' #tasks_path

  get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task' #edit_task_path

  patch '/tasks/:id/mark_complete', to: 'tasks#mark_complete', as: 'mark_complete' # mark_complete_path

  #( Need to add a method to the controller )

  get '/tasks/new', to: 'tasks#new', as: 'new_task' #new_task_path

  get '/tasks/:id', to: 'tasks#show', as: 'task' #task_path

  patch '/tasks/:id', to: 'tasks#update', as: 'update_task' #update_task_path

  post '/tasks', to: 'tasks#create', as: 'create_task' #create_task_path

  delete '/tasks/:id', to: 'tasks#destroy', as: 'delete_task' #delete_task_path

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
