class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def create
    task = Task.new(title: params[:task][:title], description: params[:task][:description], due_date: params[:task][:due_date], complete: params[:task][:complete])



    task.save

    redirect_to('/tasks')
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

    redirect_to('/tasks')
  end

  def complete
    @task = Task.find(params[:id])
    @task.complete = true


    redirect_to('/tasks')

  end

  def uncomplete
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to('/tasks')
  end
end
