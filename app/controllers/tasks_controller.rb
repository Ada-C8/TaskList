class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def create
    task = Task.new(title: params[:task][:title], description: params[:task][:description], due_date: params[:task][:due_date])



    task.save

    redirect_to task_path(task)
  end

  def new
    @task = Task.new
  end

  def edit
    @task = Task.find(params[:id])
  end

  def show
    @task = Task.find(params[:id])
  end

  def update
    # task_updates = params[:task]
    @task = Task.find(params[:id])
    # @task.update_attributes(task_updates)
    @task.title = params[:task][:title]
    @task.description = params[:task][:description]
    @task.due_date = params[:task][:due_date]



    @task.save

    redirect_to task_path(@task)
  end

  def complete
    @task = Task.find(params[:id])
    @task.complete = !@task.complete
    if @task.complete
      @task.date_complete = DateTime.now
    end
    @task.save

    redirect_back(fallback_location: tasks_path)

  end


  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to tasks_path
  end
end
