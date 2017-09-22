class TasksController < ApplicationController

  def index
    @tasks = Task.order(:id)
  end

  def show
    @task = Task.find(params[:id])
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

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.name = params[:task][:name]
    @task.description = params[:task][:description]
    if @task.save
      redirect_to root_path
    else
      render :edit
    end
  end

  def complete
    @task = Task.find(params[:id])
    if @task.completed
      @task.update_attribute(:completed, false)

    else
      @task.completion_date = Time.current
      @task.update_attribute(:completed, true)
    end
    redirect_to tasks_path
  end



  def destroy
    @task = Task.find(params[:id]).destroy
    redirect_to tasks_path
  end
end
