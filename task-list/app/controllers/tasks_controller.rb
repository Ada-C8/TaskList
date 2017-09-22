class TasksController < ApplicationController
  def index
    @tasks = Task.all
    # @tasks = [
    #   {title: "Clean kitchen", discription: "Clean the counters and the stove", due_date: "9/30/17", competion_status: "Not completed"},
    #   {title: "Email Jeff", discription: "About meeting for coffee", due_date: "9/25/17", competion_status: "Not completed"},
    #   {title: "Order shoes", discription: "Buy new sneakers for fall", due_date: "9/22/17", competion_status: "Completed"}
    # ]
  end # index

  def show
    @task = Task.find(params[:id])
  end # show

  def new
    @task = Task.new
  end # new

  def create
    task = Task.new(title: params[:task][:title], description: params[:task][:description], due_date: params[:task][:due_date], completion_status: params[:task][:completion_status])
    task.save
    # TODO: update to use a path, tasks_path
    redirect_to('/tasks')
  end # create

  def edit
    @task = Task.find(params[:id])
  end # edit

  def update
    # TODO: edit code to use a local variable to store the params data. Below is class notes for example:
    # book_update = params[:book] # this is a hash with all the updated book data
    #     @book = Book.find(params[:id])
    #     @book.author = book_update[:author]
    #     @book.tite = book_update[:title]
    #     @book.save
    @task = Task.find(params[:id])
    @task.title = params[:task][:title]
    @task.description = params[:task][:description]
    @task.due_date = params[:task][:due_date]
    @task.completion_status = params[:task][:completion_status]
    @task.save
    # TODO: redirect to show! redirect_to task_path(@task)
    redirect_to('/tasks')
  end #update

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end # destroy

  def completed
    @task = Task.find(params[:id])
    # TODO: figure out how to set default value to false instead of true for completion_status column
    @task.competion_status = false
    @task.save
    redirect_to tasks_path
  end # completed
end
