class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id].to_i)
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(name: params[:task][:name], description: params[:task][:description])

    if @task.save
      redirect_to root_path
    else
      render :new
    end

  end

  def destroy
  end

  def edit
    @task = Task.find(params[:id].to_i)
  end

  def update
  end
end
