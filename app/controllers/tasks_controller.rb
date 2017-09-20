class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
  end

  def create
    # you would want to use Task.save
    redirect_to('/tasks') # This will redirect to the index page because we are telling where the path should go. This should ultimately direc to the show route
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
