Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/tasks', to: 'tasks#index', as: 'tasks'
  get '/tasks/new', to: 'tasks#new', as: 'new_task'
  post '/tasks', to: 'tasks#create'

  get '/tasks/all', to: 'tasks#all', as: 'all_tasks'

  get '/tasks/:id', to: 'tasks#show', as: 'task'
  get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'

  patch '/tasks/:id', to: 'tasks#update'
  delete '/tasks/:id', to: 'tasks#destroy'

  get '/tasks/completed', to: 'tasks#completed', as: 'all_completed'
  patch '/tasks/:id/completed', to: 'tasks#completed', as: 'completed'
  patch '/tasks/:id/incompleted', to: 'tasks#incompleted'
end
