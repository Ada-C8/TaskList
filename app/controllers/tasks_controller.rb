class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def add
    @task = Task.new
  end

  def show
    @task = Task.find( params[:id].to_i )
  end

  def remove
    Task.find_by(id: params[:id]).destroy

    redirect_to root_path
  end

  def edit
    @task = Task.find_by(id: params[:id].to_i)
    unless @task
      redirect_to root_path
    end
  end

  def update
    task = Task.find_by(id: params[:id].to_i)
    redirect_to root_path unless task

    task.name = params[:task][:name]
    task.description = params[:task][:description]
    task.date = params[:task][:date]

    if task.update(name: task.name, description: task.description, date: task.date)
      redirect_to task_path
    else
      render :edit
    end
  end

  def create
    @task = Task.new(name: params[:task][:name], description: params[:task][:description])
    if @task.save
      redirect_to root_path
    else
      render :add
    end
  end

  private

  def task_params
    return params.require(task).permit(:name, :description, :date)
  end
end
