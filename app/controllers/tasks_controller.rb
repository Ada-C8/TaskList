class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new #only cares about showing the form
  end

  def create #hash access to user data, from the form,
    # x = Task.new(title: "Ada" , description: "it's a name")
    task = Task.new(title: params[:task][:title], description: params[:task][:description], date: params[:task][:date])
    #calls the form, in the first example, you create a new entry by adding the info yourself
    #in the second example you use user input as the values --
    task.save #saves it
    redirect_to('/tasks')
    #return user to main page
  end

  def show
    @task = Task.find(params[:id])

    #@task = Task.find(params[:id])
    # @task = Task.find_by(params[:id])
    # title: params[:book_id]
  end

  def update
  end

  def edit_task
    @task = Task.find(params[:id])
  end

  def destroy
  end

end
