class TasksController < ApplicationController
  #write a list of tasks in a hash
  TASKS =[{id: 1, thing:"Go for a walk"}, {id: 2, thing:"groceries"}, {id: 3, thing:"Do this task builder project"}, {id: 4, thing:"lightening talk"}]

  #write an index function that returns

  def index
    @tasks = TASKS
  end

  def show
    # id = params[:id].to_i
    # @task = nil
    # TASKS.each do |task|
    #   if task[:id] == id
    #     @task = task
    #   end
    # end
  end

  def create
  end

  def update
  end

  def destroy
  end

  def edit
  end

  def new
  end
end
