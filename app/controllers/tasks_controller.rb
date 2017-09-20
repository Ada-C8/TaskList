class TasksController < ApplicationController

  # TASKS = [
  #   {id: 1, task: "Hotel", status: :incomplete},
  #   {id: 2, task: "Meowspace", status: :incomplete},
  #   {id: 3, task: "CS Fun", status: :incomplete}
  # ]

  def index
    @tasks = Task.order(:id)
  end

  def create
  end

  def destroy
    # @task = Task.find( params[:id].to_i)

  end

  def edit
  end

  def new
  end

  def show
    @task = Task.find( params[:id].to_i)
  end

  def update
  end

  def mark_complete

    @task = Task.find (params[:id].to_i)
    if @task.status == false
      @task.update(status: true)
    else
      @task.update(status: false)
    end
    redirect_to root_path
  end

end
