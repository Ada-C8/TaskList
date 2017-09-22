Rails.application.routes.draw do
  root to: 'tasks#index'

  get 'tasks', to: 'tasks#index', as: 'tasks'

  get 'tasks/add', to:'tasks#add', as: 'add_task'

  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'

  patch 'tasks/:id/mark_complete', to: 'tasks#mark_complete', as: 'mark_complete'

  patch 'tasks/:id', to: 'tasks#update', as: 'update_task'

  get 'tasks/:id', to: 'tasks#show', as: 'task'

  get 'tasks/:id/remove', to: 'tasks#remove', as: 'remove_task'

  delete 'tasks/:id/confirm_remove', to: 'tasks#confirm_remove', as: 'confirm_remove'

  post 'tasks/', to: 'tasks#create', as: 'create_task'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
