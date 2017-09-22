Rails.application.routes.draw do
  get 'tasks/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/tasks', to: 'tasks#index', as: 'index'
  # get '/books', to: 'books#index', as: 'books'
  # get '/puppies', to: 'puppies#index', at: 'puppies'

  get '/tasks/new', to: 'tasks#new', as: 'new_task'
  # get '/books/new', to: 'books#new', as: 'new_book'
  #GETS the form to Update or Add Info, but doesn't do the update

  get '/tasks/:id', to: 'tasks#show', as: 'show'
  # get '/books/:id', to: 'books#show', as: 'book'
  # if youcall the show method, it finds whatever id you put in and then goes to the tasks/id route
  #task_path(task)


  post '/tasks', to: 'tasks#create'
  # post '/books', to: 'books#create'

  # post '/tasks/new', to: 'tasks#new', as: 'add_task'

  get '/tasks/:id/edit', to: 'tasks#edit'
  # , as: 'edit_task'
  #This will just bring you to the edit form
  #
  # get '/books/:id/edit', to: 'books#edit', as: 'edit_book'


  patch '/tasks/:id', to: 'tasks#update', as: 'update'
  # put '/books/:id', to: 'books#update'
  #task_path(task)
  delete '/tasks/:id', to: 'tasks#destroy', as: 'delete'
  # delete '/books/:id', to: 'books#destroy'
  ################
  #
  #GET	/users	index	users_path	page to list all users
  # GET	/users/1	show	user_path(user)	page to show user
  # GET	/users/new	new	new_user_path	page to make a new user (signup)
  # POST	/users	create	users_path	create a new user
  # GET	/users/1/edit	edit	edit_user_path(user)	page to edit user with id 1
  # PATCH	/users/1	update	user_path(user)	update user
  # DELETE	/users/1	destroy	user_path(user)	delete user

  #
  # post '/books/:id/checkout', to: 'books#checkout', as: 'checkout_book'


end
