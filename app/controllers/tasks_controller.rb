class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find ( params[:id].to_i )
    # id = params[:id].to_i
    # @task = nil
    # TASKS.each do |task|
    #   if task[:id] == id
    #     @task = task
    #   end
    # end
  end

  def edit
  end

  def update
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(name: params[:task][:name], description: params[:task][:description], completion_date: params[:task][:description])

    if @task.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
  end
end
