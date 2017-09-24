class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    #puts params
    task = Task.new(task: params[:task][:task] , description: params[:task][:description], due_date: params[:task][:due_date], status: false )
    task.save
    redirect_to tasks_path
  end

  def show
    @task = Task.find(params[:id])
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    task_updates = params[:task]
    @task = Task.find(params[:id])
    # @task.update_attributes(task_updates)
    # @task.save

    @task.task = task_updates[:task]
    @task.description = task_updates[:description]
    @task.due_date = task_updates[:due_date]
    @task.save
    redirect_to task_path(@task.id)
  end

  def complete
    @task = Task.find(params[:id])

    if @task.status == false
      @task.status = true
      @task.completion_date = Date.today
    else
      @task.status = false
    end
    @task.save
    redirect_to tasks_path
  end
end
