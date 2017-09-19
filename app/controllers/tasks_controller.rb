class TasksController < ApplicationController
  TASKS = ["Climb Everest", "Finish ADA", "Ironman Triathlon", "Get a PhD"]

  def index
    @tasks = TASKS
  end

  def show
    id = params[:id].to_i
    @task = nil
    TASKS.each do |task|
      if TASKS.index(task) == id
        @task = task
      end
    end
  end

  def create
  end

  def destroy
  end

  def edit
  end

  def new
  end



  def update
  end
end
