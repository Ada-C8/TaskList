Rails.application.routes.draw do
  get 'tasks/index'

  get('/tasks', to: 'tasks#index', as: 'tasks')
  get('/tasks/new', to: 'tasks#new', as: 'new_task')
  post('/tasks', to: 'tasks#create')
  get('/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task')
  patch('/tasks/:id/edit', to: 'tasks#update', as: 'update_task')
  get('/tasks/:id', to: 'tasks#show', as: 'show_task')
  patch('tasks/:id/complete', to: 'tasks#complete', as:'complete_task')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
