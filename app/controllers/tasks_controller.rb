class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def new # Only cares a bout showing the form
  end

  def create # has access to user data, from the form
    task = Task.new(title: params[:title] ,description: params[:description], due_date: params[:due_date], status: params[:status])
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
