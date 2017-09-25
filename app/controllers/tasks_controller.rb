class TasksController < ApplicationController


  def index
    @tasks = Task.all
    # @tasks = ["complete the death star", "clean the bathroom", "do laundry", "have fun"]
    # render plain: "added 'index' task"
    # render plain: @tasks = ["complete the death star", "clean the bathroom", "do laundry", "have fun"]

  end

  def new
    @task = Task.new
  end

  # why do we use a local variable for tasks versus @tasks
  def create
    task = Task.new(
      title: params[:task][:title],
      description: params[:task][:description],
      due_date: params[:task][:due_date],
      completed: params[:task][:completed]
    )
    task.save

    redirect_to tasks_path
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
    # why params[:id]
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])

    # updating attributes
    @task.title = params[:task][:title]
    @task.description = params[:task][:description]
    @task.due_date = params[:task][:due_date]
    @task.completed = params[:task][:completed]

    redirect_to tasks_path
  end

  def destroy
    @task = Task.find(params[:id]).destroy
    redirect_to tasks_path
  end

  def completed
    render plain: "add 'completed' task"
  end
end
