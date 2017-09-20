TASKS = ["teach Lupin to hunt for truffles", "buy a farm", "go to space", "work for NASA", "up my style game"]

class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end
end
