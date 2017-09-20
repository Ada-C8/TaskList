Rails.application.routes.draw do
  get 'tasks/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

get '/tasks/new', to: 'tasks#new', as: 'new_task'
post '/tasks/new', to: 'tasks#new', as: 'add_task'

get '/tasks', to: 'tasks#index', as: 'index'


get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'

post '/tasks', to: 'tasks#create', as: 'create_task'
get '/tasks/:id', to: 'tasks#show', as: 'show_task'

patch '/tasks:id', to: 'tasks#update', as: 'update_task'
delete '/tasks:id', to: 'tasks#destroy', as: 'delete'



end
