class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new #only cares about showing the form
  end

  def create #hash access to user data, from the form,
    # x = Task.new(title: "Ada" , description: "it's a name")
    task = Task.new(title: params[:title], description: params[:description], date: params[:date])
    #calls the form, in the first example, you create a new entry by adding the info yourself
    #in the second example you use user input as the values --
    task.save #saves it
    redirect_to('/tasks')
    #return user to main page
  end

  def show
    @task = Task.find(2)
    
    #@task = Task.find(params[:id])
    # @task = Task.find_by(params[:id])
    # title: params[:book_id]
  end

  def update
  end

  def edit_task
  end

  def destroy
  end

end
