
class TasksController < ApplicationController

  def index
    @tasks = Task.all #=> unsorted

    #@tasks = Task.order(:title)
  end

  def new #only cares about showing the form

    #@book = Book.new => acting as a template to generate a form
    @task = Task.new

  end

  def create #has access to user data, from the form
    # create local variables only (no instance variables); you don't want data to be displayed to erb file, you are just redirecting here

    task = Task.new(title: params[:task][:title], description: params[:task][:description], due_date: params[:task][:due_date], status: false)

    task.save
    # redirect_to tasks
    redirect_to("/tasks")

    # book = Book.new(title: params[:title], author: params[:title])

    # book = Book.new(title: params[:book][:title], author: params[:book][:title])

    # book = Book.new
    # book.title = params[:book][:title]
    # book.author = params[:book][:title])

    # book = Book.new(title: "Hello", author: "World")
    # book.save
    # redirect_to('/books')

  end

  def show
    # must be an instance variable because you will be passing this to HTML to display
    @task = Task.find( params[:id] )
  end

  def edit
    @task = Task.find( params[:id] )

  end

  def update
    # change :status to true
    task_updates = params[:task] #get user input
    @task = Task.find( params[:id] ) #find object that needs updating

    @task.title = task_updates[:title]
    @task.description = task_updates[:description]
    @task.due_date = task_updates[:due_date]
    # @task.update_attributes(task_updates)
    # @task.save

    @task.save
    redirect_to task_path(@task)

  end

  def destroy
    # book.destroy
    task = Task.find(params[:id])
    task.destroy
    # Task.find( params[:id] ).destroy
    # redirect_to tasks
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
