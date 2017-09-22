require 'date'
class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    n = Task.new(title: params[:task][:title], description: params[:task][:description], date: params[:task][:date], status: params[:task][:status])
    n.save
    redirect_to('/tasks')
  end

  def show
    @task  = Task.find(params[:id])


  end

  def edit
    @task = Task.find(params[:id])

  end

  def status_complete
      @task = Task.find(params[:id])
      @task.status = true
      @task.save
      redirect_to('/tasks')
  end

  def update
    task_updates = params[:task]
    @task = Task.find(params[:id])
    @task.title = task_updates[:title]
    @task.description = task_updates[:description]
    @task.date = task_updates[:date]
    @task.status = task_updates[:status]
    @task.save
    redirect_to task_path(@task)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to('/tasks')
  end
end
