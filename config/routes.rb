Rails.application.routes.draw do

  root to: 'tasks#index'


  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'

  get 'tasks/new', to: 'tasks#new', as: 'new_task'

  get 'tasks/:id', to: 'tasks#show', as: 'task'

  patch 'tasks/:id/mark_complete', to: 'tasks#mark_complete', as: 'mark_complete'

  patch 'tasks/:id/mark_incomplete', to: 'tasks#mark_incomplete', as: 'mark_incomplete'

  patch 'tasks/:id', to: 'tasks#update', as: 'update_task'

  get 'tasks/', to: 'tasks#index', as: 'tasks'

  post 'tasks/', to: 'tasks#create', as: 'create_task'

  delete 'tasks/:id', to: 'tasks#destroy', as: 'delete_task'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
