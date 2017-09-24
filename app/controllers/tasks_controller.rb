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
    # @priority_zero = Task.find_by(priority: 0)
    # @priority_one = Task.find_by(priority: 1)
    # @priority_two = Task.find_by(priority: 2)
    # @priority_three = Task.find_by(priority: 3)
    # @priority_four = Task.find_by(priority: 4)

    @tasks = Task.order(:completed).group_by{|task| task.priority}

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
    @task = Task.find(params[:id].to_i)
  end

  def update
    @task = Task.find(params[:id].to_i)
    @task.owner = params[:task][:owner]
    @task.title = params[:task][:title]
    @task.description = params[:task][:description]
    @task.deadline =  Date.civil(params[:start_date][:year].to_i, params[:start_date][:month].to_i, params[:start_date][:day].to_i)
    if @task.save
      redirect_to '/tasks'
    else
      render :new
    end
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
    task = Task.new(owner: params[:task][:owner], title: params[:task][:title], description: params[:task][:description], deadline: Date.civil(params[:start_date][:year].to_i, params[:start_date][:month].to_i, params[:start_date][:day].to_i), completed: false, priority: params[:task][:priority].to_i)
    if task.save
      flash[:notice] = "#{task.title} by #{task.owner} was successfully created"
      redirect_to '/tasks'
    else
      render :new
    end

  end

  def destroy
    @task = Task.find(params[:id].to_i)
    owner = @task.owner
    title = @task.title
    completed = @task.completed
    if @task.destroy
      completed ? (flash[:notice] = "#{title} was successfully deleted, great job #{owner}!") : (flash[:notice] = "#{title} was successfully deleted, better luck next time #{owner}!")
      redirect_to '/tasks'
    else
      render :new
    end
  end
end
