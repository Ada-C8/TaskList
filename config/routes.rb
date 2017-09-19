Rails.application.routes.draw do
  # get 'tasks/index'
  get '/tasks/', to: 'tasks#index', as: 'tasks' #tasks_path

  # get 'tasks/edit'
  get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task' #edit_tasks_path

  # get 'tasks/new'
  get '/tasks/new', to: 'tasks#new', as: 'new_task' #new_task_path

  # get 'tasks/show'
  get '/tasks/:id', to: 'tasks#show', as: 'task' #task_path

  # get 'tasks/update'
  patch '/tasks/:id', to: 'tasks#update', as:'update_book' #update_task_path

  # get 'tasks/create'
  post '/tasks/', to: 'tasks#create', as:'create_task' #create_task_path

  # get 'tasks/destroy'
  delete '/tasks', to: 'tasks#destroy', as: 'delete_task' #delete_book_path

  # may need to move this up so that it is correctly placed.
  # patch '/tasks/:id/mark_complete', to: 'tasks#mark_complete', as: 'task_complete'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
