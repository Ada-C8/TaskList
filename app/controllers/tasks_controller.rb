class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new #only cares about showing the form
  end

  def create # has access to user data, from the form
    task = Task.new(name: params[:task][:name], description: params[:task][:description], completion_date: params[:task][:completion_date])

    # task.name = params[:task][:name]

    task.save
    redirect_to('/tasks')
  end

  def show
    @task = Task.find(params[:id])
  end

  def destroy
  end
end
