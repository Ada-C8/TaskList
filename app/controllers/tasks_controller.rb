class TasksController < ApplicationController
  def index
    @tasks = [ {name: "Dishes", status: "Done"},
      {name: "Gym", status: "Not Done"},
      {name: "Dinner", status: "Yummy"}]
  end

  def edit_task
  end

  def create
  end

  def show
  end

  def update
  end

  def show
  end


end
