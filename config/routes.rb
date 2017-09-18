Rails.application.routes.draw do
  get '/tasks', to: 'tasks#index', as: 'tasks' #tasks_path

  get 'tasks/edit'

  get 'tasks/new'

  get 'tasks/show'

  get 'tasks/update'

  get 'tasks/create'

  get 'tasks/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
