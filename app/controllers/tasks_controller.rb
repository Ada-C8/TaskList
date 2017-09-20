class TasksController < ApplicationController

  def index
    @tasks = Task.all.order(:id)
  end

  def new
    @task = Task.new
  end

  def create
    @task= Task.new(name: params[:task][:name], description: params[:task][:description])
    if @task.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def show
    @task = Task.find(params[:id].to_i)
  end

  def update
  end

  def destroy
  end

  def mark_completion
    @task= Task.find(params[:id].to_i)
    @task.status ? @task.update(status: false): @task.update(status: true)
    redirect_to root_path
  end
end
