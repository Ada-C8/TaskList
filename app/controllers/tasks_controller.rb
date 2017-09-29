class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
     @task = Task.new #creating a new object; allows  rails to retrieve all the fields in that model
  end

  def create
    @task = Task.new(
      title: params[:task][:title],
      description: params[:task][:description],
      due_date: params[:task][:due_date]
    )
      if @task.save
        redirect_to tasks_path
      else
        render :new
      end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    result = @task.update({
      title: params[:task][:title],
      description: params[:task][:description],
      due_date: params[:task][:due_date]
      })

      if result
        redirect_to task_path(@task.id)
      else
        render :edit
      end
  end

  def delete
    task = Task.find(params[:id])

      if task.destroy
        redirect_to tasks_path
      else

      end
  end
end
