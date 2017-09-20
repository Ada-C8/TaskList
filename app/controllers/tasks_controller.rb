class TasksController < ApplicationController
# TASKS = [
#   {id: 1,
#   title:"pay car insurance",
#   completed: false,
# },
# {id: 2,
# title:"laundry",
# completed: false},
# {id: 3,
# title:"buy groceries",
# completed: true,
# description:"spinach, maybe new bread"}
# ]

  def index
    # @tasks = TASKS
    @tasks = Task.order(:completed)
  end

  def show
    @task = Task.find(params[:id].to_i)
    # id  params[:id].to_i
    # @task = nil
    # TASKS.each do |task|
    #   if task[:id] == id
    #     @task = task
    #   end
    # end
  end

  def edit
  end

  def update
    # id = params[:id].to_i
    # @task = nil
    # TASKS.each do |task|
    #   if task[:id] == id
    #     @task = task
    #     @task[:completed]= true
    #   end
    # end
  end

  def mark_complete
    @task = Task.find(params[:id].to_i)
    if @task.completed == true
      @task.completed = false
    else
      @task.completed = true
    end
    @task.save
    redirect_to '/tasks'
  end

  def new
    @task = Task.new
  end

  def create
    task = Task.new(owner: params[:task][:owner], title: params[:task][:title], description: params[:task][:description], deadline: Date.civil(params[:start_date][:year].to_i, params[:start_date][:month].to_i, params[:start_date][:day].to_i))
    if task.save
      redirect_to '/tasks'
    else
      render :new
    end

  end

  def destroy
  end
end
