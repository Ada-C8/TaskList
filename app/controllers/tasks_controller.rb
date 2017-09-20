class TasksController < ApplicationController

  # create a controller action for the task index page which contains an array of hard-coded tasks
  # TASKS = [
  #   {id: "clean up room"},
  #   {id: "wash dishes"},
  #   {id: "clean bathroom"}
  # ]

  # def index
  #   @tasks = TASKS
  # end

  def index
    @tasks = Task.all
  end

  def create
    @task = Task.new(name: params[:task][:name], description:params[:task][:description])
    if @task.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @task = Task.find(params[:id].to_i).destroy
    if @task.save
      redirect_to root_path
    end
  end

  def edit
  end

  def new
    @task = Task.new
  end

  def show
    @task = Task.find(params[:id].to_i)
  end

  def update
  end

  # def '#mark_complete'
  # end
end
