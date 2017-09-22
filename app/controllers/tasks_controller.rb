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
    @task = Task.new(task_params)


    # (name: params[:task][:name], description: params[:task][:description])

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
    @task = Task.find (params[:id].to_i)

    @task.update(task_params)
    #
    # @task.update(
    #   name: params[:task][:name],
    #   description: params[:task][:name]
    #   )

    # @task.update_attributes(task_params)
    # @task.name = params[:task][:name]
    #
    # @task.description = params[:task][:description]
    #
    # @task.save

    if @task.save
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  # # def task_params
  #   return {name: params[:task][:name],
  #   description: params[:task][:description]}

  private

  def task_params
    return params.require(:task).permit(:name, :description, :completion_date)
  end

end
