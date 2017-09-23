class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def create #Has access to user data, from the form
    @task = Task.create(title: params[:task][:title], description: params[:task][:description], duedate: params[:task][:duedate], complete: false)
    # task.save
    redirect_to('/tasks')
  end

  def new
    @task = Task.new
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(title: params[:task][:title], description: params[:task][:description], duedate: params[:task][:duedate])
    redirect_to(task_path)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to(tasks_path)
  end

  def mark
    @task = Task.find(params[:id])
    @task.update(complete: params[:task][:complete])
    redirect_to('/tasks')
  end

end
