class TasksController < ApplicationController

  def index
    @tasks = Task.order(:completion_date)
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
    @task.completion_date = params[:task][:completion_date]
    @task.save
    redirect_to root_path
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(name: params[:task][:name], description: params[:task][:description], completion_date: params[:task][:completion_date], status: "Incomplete")
    @task.save
    redirect_to root_path
  end

  def destroy
    Task.find(params[:id]).destroy
    redirect_to root_path
  end

  def change_status
    @task = Task.find(params[:id])
    @task.status = @task.status == "Incomplete" ? "Complete" : "Incomplete"
    @task.save
    redirect_to root_path
  end
end
