Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # resources :tasks
  get '/tasks', to:'tasks#index', as:'tasks'
  # POST   /tasks(.:format)          tasks#create
  # GET    /tasks/new(.:format)      tasks#new new_task
  # GET    /tasks/:id/edit(.:format) tasks#edit edit_task
  # GET    /tasks/:id(.:format)      tasks#show task
  # PATCH  /tasks/:id(.:format)      tasks#update
  # PUT    /tasks/:id(.:format)      tasks#update
  # DELETE /tasks/:id(.:format)      tasks#destroy

end
