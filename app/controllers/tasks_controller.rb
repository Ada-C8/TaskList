class TasksController < ApplicationController
  TASKS = [{task: "Call Mom"}, {task: "Laundry"}, {task: "Groceries"}]

  def index
    @tasks = TASKS
  end

  def add
  end

  def remove
  end

  def edit
  end
end
