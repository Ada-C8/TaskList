require 'date'

class TasksController < ApplicationController
  def index
    @tasks = Task.order(:due_date, :completion_date)
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def edit
    @task = Task.find_by(id: params[:id].to_i)
    redirect_to task_path unless @task
  end

  def create
    @task = Task.new(task_params)

    if @task.save
      flash[:notice] = "Task saved"
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
    Task.find_by(id: params[:id]).destroy

    redirect_to root_path, notice: "Task deleted."
  end

  def complete
    task = Task.find_by(id: params[:id].to_i)
    redirect_to tasks_path unless task

    if task.complete?
      task.update_attribute(:completion_date, nil)
    else
      task.update_attribute(:completion_date, Date.current)
    end

    redirect_to root_path
  end

  private
    def task_params
      return params.require(:task).permit(:name, :description, :due_date, :completion_date)
    end
end
