class TasksController < ApplicationController

  TASKS = [
    {id: 1, task: "Hotel", status: :incomplete},
    {id: 2, task: "Meowspace", status: :incomplete},
    {id: 3, task: "CS Fun", status: :incomplete}
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
    id = params[:id].to_i
    @tasks = nil
    TASKS.each do |task|
      if task[:id] == id
        @tasks = task
      end
    end
  end

  def update
  end
end
