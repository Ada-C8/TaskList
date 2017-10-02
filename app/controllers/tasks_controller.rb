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
    @task = Task.new(name: params[:task][:name], completion_date: params[:task][:completion_date], description:params[:task][:description], status: :incomplete)
    successful = @task.save
    if successful
      redirect_to root_path
    else
      render :new
    end
  end

# nothing works
  # def mark_complete
  #   @today = Date.today
  #
  #   @task = Task.find (params[:id].to_i)
  #   @task.status ? @task.update(status: false, completion_date: nil) : @task.update(status: true, initial_status: true, final_status: true, completion_date: @today)
  #   redirect_to root_path
  # end

  def mark_complete
    @task = Task.find(params[:id])
    @task.status = true

    @task.completion_date = Date.today
    @task.save

    redirect_to("/tasks")
  end

  def mark_incomplete
    @task = Task.find(params[:id])
    @task.status = false
    @task.completion_date = ""
    @task.save

    redirect_to("/tasks")
  end

  def destroy
    Task.find_by(id: params[:id]).destroy
    redirect_to root_path
  end
end
