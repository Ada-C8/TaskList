class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    task = Task.new(title: params[:task][:title], description: params[:task][:description], date: params[:task][:date])
    task.save #saves it
    redirect_to('/tasks')
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.title = params[:task][:title]
    @task.description = params[:task][:description]
    @task.date = params[:task][:date]
    @task.save
    redirect_to task_path(@task)
  end

  def complete
    @task = Task.find(params[:id])
    @task.date = Date.today
    @task.title = @task.title.upcase!
    @task.save
    redirect_to('/tasks')
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

end
