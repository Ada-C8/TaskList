class TasksController < ApplicationController

  TASKS = [
    {id: 1, task: "Dishes", status: :incomplete},
    {id: 2, task: "Vacuum", status: :incomplete},
    {id: 3, task: "Homework", status: :incomplete}
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
