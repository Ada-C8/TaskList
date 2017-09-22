class TasksController < ApplicationController

  def index
    @tasks = Task.order(:due_date)
  end

  def show
    @task = Task.find(params[:id].to_i)
  end

  def create
    @task = Task.new(name: params[:task][:name], due_date: params[:task][:due_date], description: params[:task][:description], status: :incomplete, completion_date: nil)
    if @task.save
      redirect_to root_path
    else
      render :new
    end
  end

  def update
    @task = Task.find(params[:id].to_i)
    @task.update_attributes task_params
    if @task.save
      redirect_to root_path
    else
      render :new
    end
  end

  def mark_complete
    @task = Task.find(params[:id].to_i)
    @task.completion_date = Date.today
    @task.status = "complete"
    @task.save
    redirect_to root_path
  end

  def mark_incomplete
    @task = Task.find(params[:id].to_i)
    @task.status = "incomplete"
    @task.completion_date = Date.today
    @task.save
    redirect_to root_path
  end

  def edit
    @task = Task.find(params[:id].to_i)
    unless @task
      redirect_to root_path
    end
  end

  def destroy
    if Task.find_by(id: params[:id]).destroy
      redirect_to root_path
    end
  end

  def new
    @task = Task.new
  end

private
  def task_params
    return params.require(:task).permit(:name, :completion_date, :description)
  end

end
