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
      task.status ? task.update(completion_date: Date.today.to_s) : task.update(completion_date: " ")
      redirect_to task_path(task.id)
    else
      render :edit
    end
  end

  def destroy
    task = Task.find_by(id: params[:id])

    if task.destroy
      redirect_to root_path
    end
  end

  def mark_completion
    @task= Task.find(params[:id].to_i)
    @task.status ? @task.update(status: false, completion_date: " "): @task.update(status: true, completion_date: Date.today.to_s)
    redirect_to root_path
  end

  def confirm_delete
    @task = Task.find_by(id: params[:id])
  end

  private

  def task_params
    return params.require(:task).permit(:id, :name, :description, :completion_date, :status)
  end
end
