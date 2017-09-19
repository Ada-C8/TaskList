Rails.application.routes.draw do
  get 'tasks', to: 'tasks#index', as: 'tasks'

  get 'tasks/add', to:'tasks#add', as: 'add_task'

  get 'tasks/remove'

  get 'tasks/edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
