class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    task = Task.new(title: params[:task][:title],
     description: params[:task][:description],
     due_date: params[:task][:due_date],
     complete: "f")
    task.save

    redirect_to home_url
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    task_updates = params.require(:task).permit(:title, :description, :due_date, :complete, :completed_at)
    task = Task.find(params[:id])
    task.update_attributes(task_updates)
    task.save
    if params[:refresh]
      redirect_to home_url
    else
      redirect_to task_path(task)
    end

   end
  def destroy
    task = Task.find(params[:id])
    task.destroy

    redirect_to home_url
  end

end
