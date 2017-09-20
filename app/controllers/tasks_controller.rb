class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new

  end

  def create
    task = Task.new(task: params[:task], description: params[:description], due_date: params[:due_date], completed: false)
    task.save
    redirect_to('/tasks')
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
