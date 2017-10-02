class TasksController < ApplicationController

  def index
    @tasks = Task.all.order(:status)
  end

  def new
    @task = Task.new
  end

  def create
    task = Task.new(task: params[:task][:task], description: params[:task][:description], due: params[:task][:due], status: false)
    task.save
    redirect_to('/tasks')
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end

  def all
    @tasks = Task.all.order(:status)
  end

  def update
    task = Task.find(params[:id])
    task.update(task: params[:task][:task], description: params[:task][:description], due: params[:task][:due])

    redirect_to('/tasks')
  end

  def status

  end

  def destroy
    task = Task.find(params[:id])
    task.destroy
    redirect_to("/tasks")
  end

  def mark_as_complete
    @task = Task.find(params[:id])
    @task.status = true

    @task.date_completed = Date.today
    @task.save

    redirect_to("/tasks")
  end

  def mark_as_incomplete
    @task = Task.find(params[:id])
    @task.status = false
    @task.date_completed = ""
    @task.save

    redirect_to("/tasks")
  end
end
