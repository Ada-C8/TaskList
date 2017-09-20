require 'date'
class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
  end

  def create
    n = Task.new(title: params[:task][:title], description: params[:task][:description], date: params[:task][:date], status: params[:task][:status])

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
