class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new #only cares about showing the form
  end

  def edit_task
  end

  def create #hash access to user data, from the form,
    a = Task.new(title: params[:title], description: params[:description], date: params[:date])
    a.save
    redirect_to('/tasks')
    # puts params
    # x = Task.new(title: "Ada" , description: "it's a name")
    # puts x
    # x.save

  end

  def show
  end

  def update
  end

  def show
  end


end
