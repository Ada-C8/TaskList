Rails.application.routes.draw do

  root to: 'tasks#index' #explicit for saying this is the homepage

    # get '/tasks', to: 'tasks#index', as: 'tasks' #tasks_path
    #
    # get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task' #edit_task_path
    #
    # get '/tasks/new', to: 'tasks#new', as: 'new_task' #new_task_path
    #
    # get '/tasks/:id', to: 'tasks#show', as: 'task' #task_path #why doesn't this have: path(:id)?
    #
  patch '/tasks/:id/mark_complete', to: 'tasks#mark_complete', as: 'task_complete' #task_complete_path
    #
    # patch '/tasks/:id', to: 'tasks#update', as: 'update_task' #update_task_path
    #
    # post '/tasks', to: 'tasks#create', as: 'create_task' #create_task_path
    #
    # delete '/tasks/:id', to: 'tasks#destroy', as: 'delete_task' #delete_task_path

  resources :tasks

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


#NOTES:
# When using resources :tasks, I had to keep the task_complete route as it was not part of the standard crud rails routes that is generated. I also had to edit my the delete task path helper name in my index page to match the task_path(:id) generated.
