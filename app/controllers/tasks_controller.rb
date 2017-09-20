class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def create
    task = Task.new(title: params[:task][:title], description: params[:task][:description], due_date: params[:task][:due_date])



    task.save

    redirect_to task_path(task[:id])
  end

  def new
    @task = Task.new
  end

  def edit
    @task = Task.find(params[:id])
  end

  def show
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.title = params[:task][:title]
    @task.description = params[:task][:description]
    @task.due_date = params[:task][:due_date]



    @task.save

    redirect_to task_path(params[:id])
  end

  def complete
    @task = Task.find(params[:id])
    @task.complete = true
    @task.save

    redirect_to tasks_path

  end

  def uncomplete
    @task = Task.find(params[:id])
    @task.complete = false
    @task.save


    redirect_to tasks_path
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to tasks_path
  end
end
