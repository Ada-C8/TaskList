class TasksController < ApplicationController
  def index
    @all_tasks = ["Dishes", "Laundry", "Study"]
  end
end
