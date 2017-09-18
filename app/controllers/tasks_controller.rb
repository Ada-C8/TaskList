class TasksController < ApplicationController

  TASKS = [{id:1, chore: "Empty dishwasher", deadline: "Tuesday"},
           {id: 2, chore: "Clean car", deadline: "Friday"},
           {id: 3, chore: "Walk dog", deadline: "Wednesday"},
           {id: 4, chore: "Homework", deadline: "Everyday"},]

  def index
    @tasks = TASKS
  end

  def show
    id = params[:id]
    @task = nil
    TASKS.each do |task|
      if task[:id] == id
        @task = task
      end
    end
  end

  def edit
  end

  def update
  end

  def new
  end

  def create
  end

  def destroy
  end
end
