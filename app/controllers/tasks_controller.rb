require 'date'
class TasksController < ApplicationController
  def index
    @tasks = Task.order(:due)
  end

  def new
    @task = Task.new
  end

  def create
    task = Task.new(
      name: params[:task][:name],
      description: params[:task][:description],
      created: params[:task][:created],
      due: params[:task][:due],
      status: params[:task][:status]
    )
    task.save
    redirect_to tasks_path
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.name = params[:task][:name]
    @task.description = params[:task][:description]
    @task.created = params[:task][:created]
    @task.due = params[:task][:due]
    @task.status = params[:task][:status]
    @task.save
    redirect_to task_path(@task)
  end

  def update_status
    task = Task.find(params[:id])
    if task.status == "Complete"
      task.status = "Incomplete"
    else
      task.status = "Complete"
    end
    task.save
    redirect_to tasks_path
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end
end
