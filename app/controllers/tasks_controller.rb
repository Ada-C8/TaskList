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

    if task.update_attributes task_params
      redirect_to root_path # could also be edit_task_path or a way to go back to previous screen
    else
      render :edit
    end
  end

  def mark
    task = Task.find_by(id: params[:id])

    if task.completion_date == nil
      if task.update_attribute :completion_date, Date.today
        redirect_to root_path # could also be edit_task_path or a way to go back to previous screen
      end
    else
      if task.update_attribute :completion_date, nil
        redirect_to root_path # could also be edit_task_path or a way to go back to previous screen
      end
    end
  end

  def create
    @task = Task.new(name:params[:task][:name], description:params[:task][:description])

    if @task.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    Task.find_by(id: params[:id]).destroy
    redirect_to tasks_path
  end

  private
  def task_params
    return params.require(:task).permit(:name, :description, :completion_date) #stranger danger! see strong params
  end
end
