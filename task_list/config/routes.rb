Rails.application.routes.draw do
  get 'tasks/new'

  get 'tasks/index'

  get 'tasks/edit'

  get 'tasks/update'

  get 'tasks/destroy'

  get 'tasks/create'

  get 'tasks/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
