TASKS = ["teach Lupin to hunt for truffles", "buy a farm", "go to space", "work for NASA", "up my style game"]

class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def create
  end

  def update
  end

  def destroy
  end

  def edit
  end

  def show
  end

  def new
  end
end
