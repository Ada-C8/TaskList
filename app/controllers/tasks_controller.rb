class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new #only cares about showing the form

  end

  def create # has access to user data, from the form
    # puts params
    task = Task.new(name: params[:task][:name], description: params[:task][:description], due_date: params[:task][:due_date])
    task.save
    redirect_to('/tasks')
  end

  def show
    @task = Task.find (params[:id].to_i)
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
