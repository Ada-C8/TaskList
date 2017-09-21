class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def create #Has access to user data, from the form
    task = Took.new(title: params[:title], description: params[:description], duedate: params[:duedate], complete: params[:complete])
    task.save
    redirect_to('/tasks')
  end
end
