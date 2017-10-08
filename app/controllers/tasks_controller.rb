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
      task_updates = params[:task]
      @task = Task.find(params[:id])
      @task.status = true
      @task.completed = task_updates[:completed]
      @task.save
      redirect_to task_path(@task)
  end

  def status_incomplete
    @task = Task.find(params[:id])
    @task.status = false
    @task.completed = nil
    @task.save
    redirect_to task_path(@task)

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

  def delete_complete
    @tasks = Task.all
    @tasks.each do |task|
    task.destroy if task.status == true
    end
    redirect_to('/tasks')
  end

end
