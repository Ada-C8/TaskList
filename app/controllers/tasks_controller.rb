class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id].to_i)
  end

  def create
  end

  def destroy
  end

  def edit
  end

  def new
  end



  def update
  end
end
