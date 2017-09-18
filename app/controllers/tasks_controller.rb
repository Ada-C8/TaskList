class TasksController < ApplicationController
TASKS = [
  {id: 1,
  title:"pay car insurance",
  status:"incomplete"
},
{id: 2,
title:"laundry",
status:"incomplete"},
{id: 3,
title:"buy groceries",
status:"incomplete",
description:"spinach, maybe new bread"}
]

  def index
    id = params[:id].to_i
    @task = nil
    TASKS.each do |task|
      if task[:id] == id
        @task = task
      end
    end  
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
