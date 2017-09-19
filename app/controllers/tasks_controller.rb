class TasksController < ApplicationController

  def index
    @tasks = Task.order(:id)
  end

  def edit
  end

  def new
  end

  def show
    @task = Task.find(params[:id].to_i)
  end

  def update
  end

  def create
  end

  def destroy
  end
end
