class TasksController < ApplicationController

  def index
    @tasks = Task.order(:id)
  end

  def show
    @task = Task.find(params[:id].to_i)
  end

  def edit
  end

  def update
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_parameters)
    if @task.save
      redirect_to @task
    else
      # This line overrides the default rendering behavior, which
      # would have been to render the "create" view.
      render "new"
    end
  end

  def delete
  end

  # Without this, you get ForbiddenAttributeError
  # Allows user to pass in these attributes that they put into the form
  private
  def task_parameters
    params.require(:task).permit(:name, :description)
  end
end

#
