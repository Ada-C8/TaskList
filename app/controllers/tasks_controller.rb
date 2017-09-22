class TasksController < ApplicationController
  def index
    @tasks = Task.all.order(:completed)
  end

  def new
    @task = Task.new
  end

  def create
    task = Task.new(task: params[:task][:task], description: params[:task][:description], due_date: params[:task][:due_date], completed: false)
    task.save
    redirect_to task_path(task)
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
    redirect_to task_path(task)
  end

  def destroy
    Task.destroy(params[:id])
    redirect_to tasks_path
  end

  def toggle_completed
    task = Task.find(params[:id])
    if task.completed
      task.completed = false
    else
      task.completed = true
    end
    task.save
    redirect_to tasks_path
  end
end
