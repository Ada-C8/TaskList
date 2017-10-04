class TasksController < ApplicationController
  def index
    @tasks = Task.all #generate all tasks
  end

  def new
    @task = Task.new   #create atemplate of task forrails to use
  end

  def create
    task = Task.new(title: params[:task][:title], description: params[:task][:description], due_date: params[:task][:due_date], complete: false)
    puts params
    task.save

    redirect_to home_url
  end

  def edit
    @task = Task.find(params[:id]) #find a task based on the id requested
  end

  def update
    task_updates = params.require(:task).permit(:title, :description, :due_date, :complete, :completed_date) # only looks at what's required i.e what's passed
    @task = Task.find(params[:id])
    @task.update_attributes(task_updates)
    @task.save

    if params[:refresh]
      redirect_to home_url
    else
      redirect_to task_path(@task) #redirect to show
    end
  end

  def show
    @task = Task.find(params[:id])
  end

  def destroy
    @task = Task.find(params[:id])

    @task.destroy

    redirect_to home_url
  end
end
