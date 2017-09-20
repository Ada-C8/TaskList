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

    task = Task.new(title: params[:task][:title] ,description: params[:task][:description], due_date: params[:task][:due_date], status: params[:task][:status])
    task.save
    redirect_to('/tasks')
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy

  end

end
