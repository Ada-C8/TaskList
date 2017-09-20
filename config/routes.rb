Rails.application.routes.draw do
  get 'tasks/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

get '/tasks', to: 'tasks#index', as: 'index'
  # get '/books', to: 'books#index', as: 'books'
  # get '/puppies', to: 'puppies#index', at: 'puppies'

get '/tasks/new', to: 'tasks#new', as: 'new_task'
  # get '/books/new', to: 'books#new', as: 'new_book'
  #GETS the form to Update or Add Info, but doesn't do the update

post '/tasks', to: 'tasks#create'
# post '/books', to: 'books#create'

# post '/tasks/new', to: 'tasks#new', as: 'add_task'

get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  # get '/books/:id/edit', to: 'books#edit', as: 'edit_book'

get '/tasks/:id', to: 'tasks#show', as: 'show'
  # get '/books/:id', to: 'books#show', as: 'book'
# if youcall the show method, it finds whatever id you put in and then goes to the tasks/id route

patch '/tasks:id', to: 'tasks#update'
  # put '/books/:id', to: 'books#update'

delete '/tasks:id', to: 'tasks#destroy', as: 'delete'
# delete '/books/:id', to: 'books#destroy'
################
  #
  #

  #
  # post '/books/:id/checkout', to: 'books#checkout', as: 'checkout_book'


end
