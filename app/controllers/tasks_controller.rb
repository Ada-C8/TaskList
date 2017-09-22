class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def edit
    @task = Task.find_by(id: params[:id].to_i)

    unless @task
      redirect_to task_path
    end
  end

  def create
    @task = Task.new(task_params)

    if @task.save
      redirect_to root_path
    else
      render :new
    end
  end

  def update
    task = Task.find_by(id: params[:id].to_i)
    redirect_to tasks_path unless task

    if task.update_attributes task_params
      redirect_to tasks_path
    else
      render :edit
    end
  end

  def destroy
  end

  private
    def task_params
      return params.require(:task).permit(:name, :description, :due_date, :completion_date, :completed)
    end
end
