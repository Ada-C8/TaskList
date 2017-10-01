class TasksController < ApplicationController
  #write a list of tasks in a hash
  # TASKS =[{id: 1, thing:"Go for a walk", status: "incomplete"}, {id: 2, thing:"groceries", status: "incomplete"}, {id: 3, thing:"Do this task builder project", status: "incomplete"}, {id: 4, thing:"lightening talk", status: "incomplete"}]

  #write an index function that returns

  def index
    @tasks = Task.all.order(:id)
  end

  def show
    @task = Task.find(params[:id].to_i)
  end

  def create
    @task = Task.new(name: params[:task][:name], description:params[:task][:description], due:params[:task][:due], status: "incomplete")
    @task.save

    if @task.save
      redirect_to root_path
    else
      render :new
    end
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

  def destroy
    @task = Task.find_by(id: params[:id].to_i)
    @task.destroy
    redirect_to root_path
  end

  def edit
    @task = Task.find_by(id: params[:id].to_i)
  end

  def new
    @task = Task.new
  end

  def mark_unmark
    @task = Task.find(params[:id].to_i)
    if @task.status == "incomplete"
      @task.status = "complete"
      @task.completion_date = DateTime.now
    else
      @task.status = "incomplete"
      @task.completion_date = nil;
    end
    @task.save
    redirect_to tasks_path
  end
end

private

def task_params
  return params.require(:task).permit(:name, :description, :due)
end
