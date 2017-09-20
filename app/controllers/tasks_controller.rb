class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def create
    task = Task.new(title: params[:title], description: params[:description], due_date: params[:due_date])

    # complete: params[:complete]

    task.save

    redirect_to('/tasks')
  end

  def new

  end

  def edit

  end

  def show

  end

  def update

  end

  def complete

  end

  def destroy

  end
end
