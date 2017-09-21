class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    # NO INSTANCE METHOD IN A CREATE METHOD
    # task = Task.new(title: params[:title], author: params[:author])
    task = Task.new(title: params[:task][:title], description: params[:task][:description], due_date: params[:task][:due_date], status: false)
    task.save
    redirect_to('/tasks')

    # This will redirect to the index page because we are telling where the path should go. This should ultimately direc to the show route
  end

  def show
    @task = Task.find(params[:id])

    # Params key [] will match whatever we put in the route so in this case it is id
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
