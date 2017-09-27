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

  def create
    @task = Task.new(
      title: params[:task][:title],
      description: params[:task][:description],
      due_date: params[:task][:due_date]
    )
      if @task.save
        redirect_to tasks_path
      else
        render :new
      end
  end
end
