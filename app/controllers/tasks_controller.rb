class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new #only cares about showing the form
    @task = Task.new
  end

  def create # has access to user data, from the form
    task = Task.new(name: params[:task][:name], description: params[:task][:description], completion_date: params[:task][:completion_date])

    # task.name = params[:task][:name]

    task.save
    redirect_to('/tasks')
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
    # will throw error if no record
    @task = Task.find(params[:id])

    # # will return nil if no record,
    # @task = Task.find_by(:id)
    #
    # # will return empty array if no record
    # @task = Task.where(id)
  end

  def update
    task_updates = params[:task]
    @task = Task.find(params[:id])
    # @task.update_attributes(task_updates)
    # @task.save

    @task.name = task_updates[:name]
    @task.description = task_updates[:description]
    @task.completion_date = task_updates[:completion_date]
    @task.save

    redirect_to task_path(@task)

  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to tasks_path
  end

  def mark_complete
    @task = Task.find(params[:id])
    @task.status = !@task.status

    if @task.status
      @task.complete_date = DateTime.now
    end
    @task.save

    redirect_to('/tasks')
  end
end
