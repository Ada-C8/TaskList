class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new #only cares about showing the form
  end

  def create # has access to user data, from the form
    task = Task.new(name: params[:name], description: params[:description], completion_date: params[:completion_date])
    task.save

    redirect_to('/tasks')
  end
end
