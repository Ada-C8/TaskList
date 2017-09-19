class TasksController < ApplicationController
  def index
    @tasks = [
      {title: "Study for Mock Interview", description: "buy tomatoes and apples", due_date:"sept 4, 2017", status: "done"},
      {title: "Bake Bread", description: "clean kitchen", due_date:"sept 22, 2017", status: "done"},
      {title: "Watch Star Wars", description: "read assignment", due_date:"sept 15, 2017", status: "done"}
    ]

  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
