class TasksController < ApplicationController

  def index
    @tasks = Task.order(completion_date: :desc).order(id: :desc)
  end

  def edit
    @task = Task.find_by(id: params[:id].to_i)

    unless @task
      redirect_to root_path
    end
  end

  def new
    @task = Task.new
  end

  def show
    @task = Task.find_by(id: params[:id])
  end

  def update
    task = Task.find_by(id: params[:id])
    redirect_to root_path unless task

    task.update_attributes(task_params) ? (redirect_to root_path) : (render :edit)
  end

  def mark
    task = Task.find_by(id: params[:id])

    if task.completion_date == nil
      task.update_attribute(:completion_date, Date.today)
      redirect_back(fallback_location: root_path)
    else
      task.update_attribute( :completion_date, nil)
      redirect_back(fallback_location: root_path)
    end
  end

  def create
    @task = Task.new(name:params[:task][:name], description:params[:task][:description])

    @task.save ? (redirect_to root_path) : (render :new)
  end

  def destroy
    Task.find_by(id: params[:id]).destroy
    redirect_to tasks_path
  end

  private
  def task_params
    return params.require(:task).permit(:name, :description, :completion_date) #NOTE to self: stranger danger! see strong params
  end
end
