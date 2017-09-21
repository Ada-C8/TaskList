require 'date'
class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new

  end

  def create
    n = Task.new(title: params[:title], description: params[:description], date: params[:date], status: params[:status])
    n.save
    redirect_to('/tasks')
  end

  def show
    @task  = Task.find(params[:id])


  end

  def edit
    @task = Task.find(params[:id])

  end

  def update
  end

  def destroy
  end
end
