class TasksController < ApplicationController

  def index
    @tasks = Task.all

  end

  def edit
    @task = Task.find_by(id: params[:id].to_i)

    unless @task
      redirect_to tasks_path
    end
  end

  def show
    @task = Task.find_by(id: params[:id])
    # task = params.to_s
    # @tasks = ""
    # TASKS.each do |task|
    #
    #   puts @tasks << "#{task} "
    #   end

  end


  def update
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(name: params[:task][:name], description: params[:task][:description], completion: params[:task][:completion])
    if @task.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
  end
end
