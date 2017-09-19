Rails.application.routes.draw do

  get '/task_list', to: 'task_list#index', as: 'task_list' #task_list_path

  get '/task_list/:id/edit', to: 'task_list#edit', as: 'edit_task' #edit_task_path

  get '/task_list/new', to: 'task_list#new', as: 'new_task' #new_task_path

  get '/task_list/:id', to: 'task_list#show', as: 'task' #task_path

  patch '/task_list/:id/mark_complete', to: 'task_list#mark_complete', as: 'mark_complete' # mark_complete_path

  patch '/task_list/:id', to: 'task_list#update', as: 'update_task' #update_task_path

  post '/task_list', to: 'task_list#create', as: 'create_task' #create_task_path

  delete '/task_list', to: 'task_list#destroy', as: "destroy_task" #destroy_task_path

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
