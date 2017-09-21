class TasksController < ApplicationController

  def index
    @tasks = Task.all.order(:id)
  end

  def new
    @task = Task.new
  end

  def create
    @task= Task.new(name: params[:task][:name], description: params[:task][:description])
    if @task.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @task = Task.find_by(id: params[:id].to_i)
  end

  def show
    @task = Task.find_by(id: params[:id].to_i)
  end

  def update
    task = Task.find_by(id: params[:id].to_i)
  redirect_to tasks_path unless task

    if task.update_attributes task_params
      redirect_to task_path(task.id)
    else
      render :edit
    end
  end

  def destroy
  end

  def mark_completion
    @task= Task.find(params[:id].to_i)
    @task.status ? @task.update(status: false): @task.update(status: true)
    redirect_to root_path
  end

  private

  def task_params
    return params.require(:task).permit(:id, :name, :description, :completion_date, :status)
  end
end
