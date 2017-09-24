
class TasksController < ApplicationController

  def index
    @tasks = Task.all #=> unsorted
  end

  def new #only cares about showing the for
    @task = Task.new #=>acting as a template to generate a form
  end

  def create #has access to user data, from the form
    #create local variables only (no instance variables); you don't want data to be displayed to erb file, you are just redirecting here

    task = Task.new(title: params[:task][:title], description: params[:task][:description], due_date: params[:task][:due_date], status: false)

    task.save
    # redirect_to tasks
    redirect_to("/tasks")


    # examples from Library

    # book = Book.new(title: params[:title], author: params[:author])

    # book = Book.new(title: params[:book][:title], author: params[:book][:title])

    # book = Book.new
    # book.title = params[:book][:title]
    # book.author = params[:book][:title]

    # book.save
    # redirect_to('/books')
  end

  def show
    # must be an instance variable because you will be passing this to view template to display
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    # change :status to true
    task_updates = params[:task] #get user input
    @task = Task.find(params[:id]) #find object that needs updating

    @task.title = task_updates[:title]
    @task.description = task_updates[:description]
    @task.due_date = task_updates[:due_date]
    @task.save
    redirect_to task_path(@task)
  end

  def destroy
    task = Task.find(params[:id])
    task.destroy
    redirect_to("/tasks")
  end

  def mark_as_complete
    @task = Task.find(params[:id])
    @task.status = true

    @task.date_completed = Date.today
    @task.save

    redirect_to("/tasks")
  end

  def mark_as_incomplete
    @task = Task.find(params[:id])
    @task.status = false
    @task.date_completed = ""
    @task.save

    redirect_to("/tasks")
  end

  def completed_tasks
    @tasks = Task.all
  end
end
