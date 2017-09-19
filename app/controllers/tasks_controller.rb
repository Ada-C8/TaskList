class TasksController < ApplicationController

  TASKS = @tasks = [
    {id: 1, task: "Re-learn to snowboard"},
    {id: 2, task: "fold clothing"},
    {id: 3, task: "walk the dogs"},
    {id: 4, task: "re-read lecture and take notes"},
    {id: 5, task: "clean room"},
  ]

  def index
    @tasks = TASKS
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

  # might need to add a new file to views/tasks file
  # def complete
  # end


end
