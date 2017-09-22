class TasksController < ApplicationController

  def index
    @tasks = Task.order completion_date: :desc, deadline: :asc
  end

  def show
    @task = Task.find_by(id: params[:id].to_i)
  end

  def edit
    @task = Task.find_by(id: params[:id].to_i)
    redirect_to tasks_path unless @task
  end

  def update
    task = Task.find_by(id: params[:id].to_i)
    redirect_to tasks_path unless task
    if task.update_attributes task_params
      redirect_to task_path(task.id)
    else
      render :edit
    end
  end

  def new
    @task = Task.new
  end

  def create

    @task = Task.new(name: params[:task][:name], description: params[:task][:description], deadline: params[:task][:deadline])
    # @task.task_status = false
    @task.completion_date = nil
     #instantiate a new task
    if @task.save # save returns true if the database insert succeeds
      redirect_to tasks_path # go to the index so we can see the task in the list
    else # save failed :(
      render :new # show the new book form view again
    end
  end





  def destroy
    id = params[:id].to_i
    Task.destroy(id)
    if Task.find_by(id: id)
       render :destroy
    else
      redirect_to tasks_path
    end
  end

  def change_status
    @task = Task.find(params[:id].to_i)
    if @task.completion_date == nil
      @task.update(completion_date: Date.today)
    else
      @task.update(completion_date: nil)
    end
    redirect_to tasks_path
  end

  private

  def task_params
    return params.require(:task).permit(:name, :description, :deadline)
  end


end
