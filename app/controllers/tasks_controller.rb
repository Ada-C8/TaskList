class TasksController < ApplicationController
  def index
    @tasks = ["Dishes", "Laundry", "Study"]
  end
end
