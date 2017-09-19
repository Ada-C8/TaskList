class TasksController < ApplicationController

  # create a controller action for the task index page which contains an array of hard-coded tasks
  TASKS = [
    {id: "clean up room"},
    {id: "wash dishes"},
    {id: "clean bathroom"}
  ]

  def index
    @tasks = TASKS
  end

  def create
  end

  def destroy
  end

  def edit
  end

  def new
  end

  def show
  end

  def update
  end
end
