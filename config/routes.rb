Rails.application.routes.draw do

  root to: 'tasks#index'

  get 'tasks', to: 'tasks#index', as: 'tasks'

  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'

  patch 'tasks/:id/mark_complete', to: 'tasks#mark_complete'

  get 'tasks/new', to: 'tasks#new', as: 'new_task'

  get 'tasks/:id', to: 'tasks#show', as: 'task'

  patch 'tasks/:id', to: 'tasks#update', as: 'update_task'

  patch 'tasks/:id/mark', to: 'tasks#mark', as: 'mark_task'

  post 'tasks', to: 'tasks#create', as: 'create_task'

  delete 'tasks/:id', to: 'tasks#destroy', as: 'delete_task'

end
