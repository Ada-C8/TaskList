class TasksController < ApplicationController

  def index
    @tasks = Task.order(:completion_date)
  end

  def show
    id = params[:id].to_i
    @task = Task.find(id)
  end

  def create
    @task = Task.new(name: params[:task][:name], completion_date: params[:task][:completion_date], description: params[:task][:description])
    if @task.save
      redirect_to root_path
    else
      render :new
    end
  end

  def update
  end

  def mark_complete
    id = params[:id].to_i
    @task = Task.find(id)
  end

  def edit
    id = params[:id].to_i
    @task = Task.find(id)
  end

  def destory
    name = params[:name]
    @task = Task.find_by(name)
  end

  def new
    @task = Task.new
  end

end
