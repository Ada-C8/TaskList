require 'date'
class TasksController < ApplicationController

  # TASKS = @tasks = [
  #   {id: 1, task: "Re-learn to snowboard"},
  #   {id: 2, task: "fold clothing"},
  #   {id: 3, task: "walk the dogs"},
  #   {id: 4, task: "re-read lecture and take notes"},
  #   {id: 5, task: "clean room"},
  # ]

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

  # private
  # def task_params
  #   return params.require(:task).permit(:name, :description, :completion_date)
  # end

end
