class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def new # Only cares a bout showing the form
    @task = Task.new
  end

  def create # has access to user data, from the form
    #before, using a hand rolled form, the format of the data coming onto the wire
    # was different so the way we pulled it out was also different
    #book = Book.new(title: params[:title] ,description: params[:description], due_date: params[:due_date], status: params[:status])

    task = Task.new(title: params[:task][:title] ,description: params[:task][:description], due_date: params[:task][:due_date], complete: params[:task][:complete])
    task.save
    redirect_to('/tasks')
  end

  def show
    # this needs to be an instance variable b/c you will pass this to HTML to display
    # @tasks = [Task.find(params[:id])]
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
    # @task = Task.find_by(params[:id]) Why is this not working and giving me task 1?
    # @task = Task.where(params[:id]).first same here?
  end

  def update
    task_updates = params[:task] #gets user input
    @task = Task.find(params[:id]) #find the task object that needs to be updated
    @task.title = task_updates[:title]
    @task.description = task_updates[:description]
    @task.due_date = task_updates[:due_date]
    @task.complete = task_updates[:complete]
    @task.save
    redirect_to task_path(@task)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  def mark_complete
    @task = Task.find(params[:id])
    @task.complete = true
    @task.completed_date = Date.today
    @task.save
    redirect_to tasks_path
  end

  def unmark_complete
    @task = Task.find(params[:id])
    @task.complete = false
    @task.completed_date = nil
    @task.save
    redirect_to tasks_path
  end
end
