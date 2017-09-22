class TasksController < ApplicationController

  # name : string
  # description : string
  # completion_date : string?
  # done : boolean

  def index
    @tasks = Task.order(:done)
  end

  def show
    @task = Task.find(params[:id].to_i)
  end

  def edit
    @task = Task.find_by(id: params[:id].to_i)
  end

  def update
    @task = Task.find_by(id: params[:id].to_i)
    if @task.update_attributes task_parameters
      redirect_to @task
    else
      render "edit"
    end
  end

  def new
    @task = Task.new
  end

  def create
    done_boolean = false
    if params[:task][:done].to_i == 1
      done_boolean = true
    end
    @task = Task.new(name: params[:task][:name],
                     description: params[:task][:description],
                     completion_date: params[:task][:completion_date],
                     done: done_boolean)
    if @task.save
      redirect_to @task
    else
      # This line overrides the default rendering behavior, which
      # would have been to render the "create" view.
      render "new"
    end
  end

  def markdone
    @task = Task.find(params[:id].to_i)
    if @task.done == true
      @task.update_attribute(:done, false)
    else
      @task.update_attribute(:done, true)
    end
    @task.save
    redirect_to root_path
  end

  def delete
    Task.find_by(id: params[:id]).destroy
    redirect_to root_path
  end

  private

  def task_parameters
    return params.require(:task).permit(:name, :description, :done, :completion_date)
  end

end

#
