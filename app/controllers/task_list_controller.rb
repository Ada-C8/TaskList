class TaskListController < ApplicationController
  TASK_LIST = [
    {id: 1, status: false, action: "master Ruby"},
    {id: 2, status: false, action: "learn how to cook palak paneer"},
    {id: 3, status: false, action: "do laundry"},
    {id: 4, status: false, action: "go for a walk"}
  ]

  def index
    @task_list = TASK_LIST
  end

  def show
    id = params[:id].to_i
    @task = nil
    TASK_LIST.each do |task|
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
