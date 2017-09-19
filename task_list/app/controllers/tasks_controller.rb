class TasksController < ApplicationController

  TASKS = [ { id: 1, task_name: 'buy groceries', complete: true },
            { id: 2, task_name: 'wash car', complete: false },
            { id: 3, task_name: 'do laundry', complete: false },
            { id: 4, task_name: 'lightning talk', complete: false } ]

  def new
  end

  def index
    @tasks = TASKS
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def create
  end

  def show
    id = params[:id].to_i
    @task = nil

    TASKS.each do |task|
      if task[:id] == id
        @task = task
      end
    end
  end
end
