class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    # NO INSTANCE METHOD IN A CREATE METHOD
    # task = Task.new(title: params[:title], author: params[:author])
    task = Task.new(title: params[:task][:title], description: params[:task][:description], due_date: params[:task][:due_date])
    task.save
    redirect_to('/tasks')
    # This will redirect to the index page because we are telling where the path should go. This should ultimately direc to the show route
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
    # Directed from index.html
    @task = Task.find(params[:id])
  end

  def update
    # Params task is saving the entire hash into the task_updates variable
    # Save each entry into the specified @Task that was called
    @task = Task.find(params[:id])

    task_updates = params[:task]
    @task.title = task_updates[:title]
    @task.description = task_updates[:description]
    @task.due_date = task_updates[:due_date]
    @task.status = task_updates[:status]
    @task.save
    redirect_to(@task)
  end

  def complete
    @task = Task.find(params[:id])
    @task.status = true
    @task.date_complete = DateTime.now
    @task.save
    redirect_to('/tasks')
  end

  def incomplete
    @task = Task.find(params[:id])
    @task.status = false
    @task.date_complete = nil
    @task.save
    redirect_to('/tasks')
  end

  def destroy
    Task.find(params[:id]).destroy
    redirect_to('/tasks')
  end
end
