class TasksController < ApplicationController
# TASKS = [
#   {id: 1,
#   title:"pay car insurance",
#   completed: false,
# },
# {id: 2,
# title:"laundry",
# completed: false},
# {id: 3,
# title:"buy groceries",
# completed: true,
# description:"spinach, maybe new bread"}
# ]

  def index
    # @tasks = TASKS
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id].to_i)
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
    # id = params[:id].to_i
    # @task = nil
    # TASKS.each do |task|
    #   if task[:id] == id
    #     @task = task
    #     @task[:completed]= true
    #   end
    # end
  end

  def mark_complete
  end

  def new
  end

  def create
  end

  def destroy
  end
end
