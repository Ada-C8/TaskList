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
  end

  def create
  end

  def destroy
  end
end
