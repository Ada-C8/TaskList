require 'Date'
class TasksController < ApplicationController

  def index
    @tasks = Task.all #probably change to due date- Task.order(:due_date)
  end

  def show
    @task = Task.find( params[:id].to_i)

    @task = Task.find( params[:id].to_i)
    if @task.due_date == nil
      @task.due_date = DateTime.now
      @task.save
    end

    if @task.due_date < DateTime.now
      @task.status = "Past Due"
    elsif
      @task.due_date > DateTime.now
      @task.status = "Due soon"
    else
      @task.status = "Due in a week"

    end
  end



  def edit
    @task = Task.find_by(id: params[:id].to_i)

    unless @task
      redirect_to tasks_path
    end
  end

  def update
    task = Task.find_by(id: params[:id].to_i) #does not need to be instance var
    redirect_to tasks_path unless task #if couldnt find book, will redirect to home page

    if task.update_attributes task_params
      redirect_to root_path #or root_path - or books_path or flash notice
    else
      render :edit
    end

  end


  private def task_params
    return params.require(:task).permit(:name, :due_date, :description)
  end





  def new
    @task = Task.new
  end

  def create
    @task = Task.new(name: params[:task][:name], description:params[:task][:description])
    successful = @task.save
    if successful
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    Task.find_by(id: params[:id]).destroy
    redirect_to root_path
  end
end
