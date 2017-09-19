class TasksController < ApplicationController
  TASKS = [
    {id: 1, description: "Feed Harriet", due_date: "Wednesday"},
    {id: 2, description: "Call Car 2 Go", due_date: "Friday"},
    {id: 3, description: "Finish TaskList", due_date: "10/1/17"}
  ]

  def index
    @tasks = TASKS
  end

  def show
  end

  def create
  end

  def update
  end

  def mark_complete
  end

  def edit
  end

  def destory
  end

end
