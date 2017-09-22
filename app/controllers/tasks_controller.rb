class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find ( params[:id].to_i )
  end

  def edit
    @task = Task.find_by(id: params[:id].to_i)
    unless @task
      redirect_to task_path
    end
  end

  def update
    task = Task.find_by(id: params[:id].to_i)
    redirect_to tasks_path unless task

      if task.update_attributes task_params
        redirect_to task_path
      else
        render :edit
      end
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(name: params[:task][:name], description: params[:task][:description], completion_date: params[:task][:description])

    if @task.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    Task.find_by(id: params[:id]).destroy
    redirect_to root_path
  end

  def mark_complete
    task = Task.find_by(id: params[:id])

    if task.completed
      task.update_attribute(:completed, false)
      task.update_attribute(:completion_date, Date.today)
    else
      task.update_attribute(:completed, true)
    end
    redirect_to root_path
  end

  private

  def task_params
   return params.require(:task).permit(:name, :description, :completion_date, :completed)
  end
end
