class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def edit
  end

  def new
    @task = Task.new
  end

  def show
    @task = Task.find( params[:id] )
  end

  def update
  end

  def create
    @task = Task.new(name: params[:task][:name], description: params[:task][:description], completion_date: params[:task][:completion_date])
    if @task.save #successful = @task.save, if successful
      redirect_to tasks_path
    else
      render :new
    end
  end

  def destroy
  end
end
