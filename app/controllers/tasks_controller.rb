class TasksController < ApplicationController



  def new
    render plain: "added 'new' task"
  end

  def index
    @tasks = ["complete the death star", "clean the bathroom", "do laundry", "have fun"]
    # render plain: "added 'index' task"
    # render plain: @tasks = ["complete the death star", "clean the bathroom", "do laundry", "have fun"]

  end

  def edit
    render plain: "add 'edit' task"
  end

  def show
    render plain: "add 'show' task"
  end

  def update
    render plain: "add 'update' task"
  end

  def completed
    render plain: "add 'completed' task"
  end

  def create
    render plain: "add 'create' task"
  end

  def destroy
    render plain: "add 'destroy' task"
  end
end
