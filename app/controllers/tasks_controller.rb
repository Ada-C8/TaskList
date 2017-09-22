class TasksController < ApplicationController

  def index
    @tasks = Task.order(:completion_date)
  end

  def show
    @task = Task.find(params[:id].to_i)
  end

  def edit
    @task = Task.find(params[:id].to_i)
    unless @task
      redirect_to books_path
    end
  end

  def mark_complete
    task = Task.find(params[:id].to_i)
    redirect_to tasks_path unless task
    status = (task.status == "incomplete" ? "complete":"incomplete")
    task.update(status: status, completion_date: Date.today())
    redirect_to root_path
  end

  def update
    @task = Task.find(params[:id] )

    redirect_to tasks_path unless @task
    @task.name = params[:task][:name]
    if @task.update_attributes params.require(:task).permit(:name, :completion_date, :description)
      redirect_to task_path(@task.id)
    else
      render :edit
    end
  end

  def new #add status here?
    @task = Task.new
  end

  def create
    @task = Task.new(name: params[:task][:name], completion_date: params[:task][:completion_date], description: params[:task][:description], status: "incomplete")
    if @task.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @task = Task.find(params[:id].to_i)
    @task.destroy
    redirect_to root_path
  end
end
