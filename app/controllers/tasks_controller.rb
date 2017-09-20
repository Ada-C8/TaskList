class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    task = Task.new(task: params[:task][:task], description: params[:task][:description], due_date: params[:task][:due_date], completed: false)
    task.save
    redirect_to('/tasks')
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    task = Task.find(params[:id])
    task.update(task: params[:task][:task], description: params[:task][:description], due_date: params[:task][:due_date])
    redirect_to('/tasks')
  end

  def destroy
    Task.destroy(params[:id])
    redirect_to('/tasks')
  end
end
