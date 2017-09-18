class TasksController < ApplicationController

  TASKS = [{id: 1, task_name: "Complete Weekend Warrior"},
    {id: 2, task_name: "Complete Koans"},
    {id: 3, task_name: "Continue Reaadings"}]


  def index
    @tasks = TASKS
  end

  def show
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
