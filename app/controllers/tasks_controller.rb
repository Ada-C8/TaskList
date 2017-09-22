class TasksController < ApplicationController

  def index
    @tasks = Task.all.order(:status)
  end

  def new
    @task = Task.new
  end

  def create
    task = Task.new(task: params[:task][:task], description: params[:task][:description], due_date: params[:task][:due], status: false)
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
    task_updates = params[:task]
    @task = Task.find( params[:id] )

    @task.title = task_updates[:title]
    @task.description = task_updates[:description]
    @task.due_date = task_updates[:due_date]

    @task.save
    redirect_to task_path(@task)
  end

  def complete?
    if @task.status == false
      return false
    end
    @task.save
    redirect_to '/tasks'
  end

  def destroy
    task = Task.find(params[:id])
    task.destroy
    redirect_to("/tasks")
  end
end
