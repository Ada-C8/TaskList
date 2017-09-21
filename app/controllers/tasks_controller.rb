class TasksController < ApplicationController

  def index
    @tasks = Task.order(:id)
  end

  def edit
  end

  def new
    @task = Task.new
  end

  def show
    @task = Task.find(params[:id])
  end

  def update
  end

  def create
    @task = Task.new(name:params[:task][:name], description:params[:task][:description])

    if @task.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    Task.find(params[:id]).destroy
  end
end
