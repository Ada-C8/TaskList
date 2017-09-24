require 'date'
class TasksController < ApplicationController

  def index
    @tasks = Task.order(:id)
  end


  def show
    @task = Task.find( params[:id].to_i)
  end


  def new
    @task = Task.new
  end


  def create
    @task = Task.new(name: params[:task][:name], description: params[:task][:description], completion_date: params[:task][:completion_date])

    if @task.save
      redirect_to root_path
    else
      render :new
      # render just replaces the view within that template.
    end
  end


  def destroy
    @tasks = Task.find(params[:id]).destroy
    redirect_to root_path
  end


  # might need to add a new file to views/tasks file
  def complete
  end


  def update
    task = Task.find_by(id: params[:id].to_i)
    task.name = params[:task][:name]
    task.description = params[:task][:description]
    task.completion_date = params[:task][:completion_date]
    task.save

    if task.save
      redirect_to root_path
    else
      render :edit
    end
  end


  def edit
    @task = Task.find_by(id: params[:id].to_i)
  end


  def completed
    date = Date.today

    task = Task.find_by(id: params[:id].to_i)
    task.completion_date = date
    # task.save

    if task.save
      redirect_to root_path
    end
  end

end
