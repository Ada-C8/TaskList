class TasksController < ApplicationController
  TASKS = [
    {id: 1, task_name: "Create Banner for Thursday and Saturday event"},
    {id: 2, task_name: "Email group about Saturday prep for Sale"},
    {id: 3, task_name: "Project: Prep for sale"},
    {id: 4, task_name: "Draft newsletter for JC to finish"},
    {id: 5, task_name: "/w Post newsletter to blog"},
    {id: 6, task_name: "/w have JC post to FB"}
  ]

  def index
    @tasks = TASKS
  end

  def edit
  end

  def new
  end

  def show
    id = params[:id].to_i
    @task_name = nil
    TASKS.each do |task|
      if task[:id] == id
        @task_name = task
      end
    end
  end

  def update
  end

  def create
  end

  def destroy
  end
end
