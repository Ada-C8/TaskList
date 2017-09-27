class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
     @task = Task.new #creating a new object; allows  rails to retrieve all the fields in that model
  end
end
