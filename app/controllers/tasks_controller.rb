class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    #puts params
    task = Task.new(task: params[:task][:task] , description: params[:task][:description], due_date: params[:task][:due_date] )
    task.save
    redirect_to('/tasks')
  end

  def show
    @task = Task.find(params[:id])
  end

  def destroy

  end

end
