class TasksController < ApplicationController

  TASKS = [
    {title: "Finish homework", description:"finish all homework assigned", due:"every day", priority: 1, completed: "no"},
    {title: "Prepare lunch", description:"prepare food", due:"every day", priority: 3, completed: "no"},
    {title: "Sleep", description:"defrag brain",due:"every day", priority: 2, completed: "no"},
    {title: "Sweat", description:"work out", due:"every day",priority: 4, completed: "no"}
  ]
  def index
    @tasks = TASKS
  end

  def show

  end

  def new
  end

  def create
  end

  def complete
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
