class TasksController < ApplicationController
  TASKS = [
    {id: 1, description: "Do laundry", done: false},
    {id: 2, description: "Take out the trash", done: true},
    {id: 3, description: "Do Task List Homework", done: false},
  ]
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

  def delete
  end
end
