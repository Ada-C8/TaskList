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

  def create
    task = Task.new(name: params[:task][:name], description: params[:task][:description], completion_date: params[:task][:completion_date], due_date: params[:task][:due_date], complete: params[:task][:complete] = false)
    task.save
    redirect_to tasks_path
  end

  def edit
    @task = Task.find_by(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    task_updates = params.require(:task).permit(:name, :description, :completion_date, :due_date, :complete)
    @task.update_attributes(task_updates)
    @task.save

    if params[:refresh]
      redirect_to tasks_path
    else
      redirect_to task_path(@task)
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

end
