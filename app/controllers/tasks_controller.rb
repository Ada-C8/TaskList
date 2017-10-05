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
    @tasks = Task.order(:created_at)
  end

  def show
    @task = Task.find(params[:id].to_i)
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(name: params[:task][:name], description:params[:task][:description])
    if @task.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @task = Task.find_by(id: params[:id].to_i)

    unless @task
      redirect_to root_path
    end

  end

  def destroy
    @task = Task.find(params[:id].to_i).destroy
    if @task.save
      redirect_to root_path
    end
  end

  def update
    task = Task.find_by(id: params[:id].to_i)
    task.name = params[:task][:name]
    task.description = params[:task][:description]
    task.completion_date = params[:task][:completion_date]
    task.save

    if task.save
      redirect_to root_path
    else
      render :edit
    end

    # task = Task.find_by(id: params[:id].to_i)
    # redirect_to tasks_path unless task
    #
    # if task.update_attributes name: params[:tasks][:name], description: params[:tasks][:description]
    #   redirect_to tasks_path
    # else
    #   render :edit
    # end
  end

  def mark_complete
    task = Task.find_by(id: params[:id].to_i)
    if task.completion_date == nil
      task.completion_date = Date.current
    else
      task.completion_date = nil
    end

    if task.save
      redirect_to root_path
    end
  end
end
