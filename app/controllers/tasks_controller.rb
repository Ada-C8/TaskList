class TasksController < ApplicationController
  # TASKS = [
  #   {id: 1, description: "Feed Harriet", due_date: "Wednesday"},
  #   {id: 2, description: "Call Car 2 Go", due_date: "Friday"},
  #   {id: 3, description: "Finish TaskList", due_date: "10/1/17"}
  # ]

  def index
    @tasks = Task.order(:completion_date)
  end

  def show
    id = params[:id].to_i
    @task = Task.find(id)
  end

  def create
  end

  def update
  end

  def mark_complete
    id = params[:id].to_i
    @task = Task.find(id)
  end

  def edit
    name = params[:name]
    @task = Task.find_by(name)
  end

  def destory
    name = params[:name]
    @task = Task.find_by(name)
  end

end
