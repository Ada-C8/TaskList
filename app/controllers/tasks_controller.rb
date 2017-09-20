class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id].to_i)
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(name: params[:task][:name], description: params[:task][:description]) #instantiate a new task
    if @task.save # save returns true if the database insert succeeds
      redirect_to tasks_path # go to the index so we can see the task in the list
    else # save failed :(
      render :new # show the new book form view again
    end
  end

  def edit
  end

  def update
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
    @new_status = ""
    if @task.task_status == "f"
      @task.update(task_status: "t")
      @new_status = "Mark Completed"
    else
      @task.update(task_status: "f")
      @new_status = "Unmark Completed"
    end
  end

end
