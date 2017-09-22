class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new #only cares about showing the form
    @task = Task.new
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

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.title = params[:task][:title]
    @task.description = params[:task][:description]
    @task.date = params[:task][:date]
    @task.save
    redirect_to task_path(@task)



    # @task = Task.find(params[:id])
    # @task.update(title: params[:title], description: params[:description], date: params[:date])
    # redirect_to task_path(@task)
  end

  def destroy

  end

end
