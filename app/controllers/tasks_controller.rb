class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    # task = Task.new(title: params[task][:title], description: params[task][:description], due_date: params[task][due_date], complete: params[task][complete])
    # task.save
    # redirect_to('/tasks')
  end

  def show
    @task = Task.find(params[:id])
  end

  # def edit
  #   @book = Task.find(params[:id])
  # end

  def update
  end

  def destroy
  end

end
