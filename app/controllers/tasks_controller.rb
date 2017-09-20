class TasksController < ApplicationController

  # TASKS = [
  #   {id:1,title: "Finish homework", description:"finish all homework assigned", due:"every day", priority: 1, completed: "no"},
  #   {id:2,title: "Prepare lunch", description:"prepare food", due:"every day", priority: 3, completed: "no"},
  #   {id:3,title: "Sleep", description:"defrag brain",due:"every day", priority: 2, completed: "no"},
  #   {id:4,title: "Sweat", description:"work out", due:"every day",priority: 4, completed: "no"}
  # ]
  def index
    @tasks = Task.order(:name) #sorted by title
  end

  def show
    @task = Task.find(params[:id].to_i)
    # title = @task = params[:id].to_i
    # @task = nil
    # TASKS.each do |task|
    #   if task[:id] = id
    #     @task = task
    #   end
    # end
  end

  def new
    @task = Task.new
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
    @task = Task.find(params[:id]).destroy
  end
end
