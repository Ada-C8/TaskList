class TasksController < ApplicationController

  def index
    @tasks = Task.order(:id)
  end

  def show
    @task = Task.find(params[:id].to_i)
  end

  def edit
  end

  def update
  end

  def new
    @task = Task.new
  end

  def create
  end

  def delete
  end
end
