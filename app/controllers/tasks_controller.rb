class TasksController < ApplicationController

  # name : string
  # description : string
  # completion_date : string?
  # done : boolean

  def index
    @tasks = Task.order(:id)
  end

  def show
    @task = Task.find(params[:id].to_i)
  end

  def edit
    @task = Task.find(params[:id].to_i)
  end

  def update
    @task = Task.find(params[:id].to_i)
    @task.name = params[:task][:name]
    @task.description = params[:task][:description]
    if params[:task][:done].to_i == 1
      @task.done = true
      @task.completion_date = Date.today
    else
      @task.done = false
      @task.completion_date = nil
    end

    if @task.save
      redirect_to @task
    else
      render "edit"
    end
  end

  def new
    @task = Task.new
  end

  def create
    complete_date = ""
    done_boolean = false
    if params[:task][:done]
      done_boolean = true
      complete_date = Date.today
    end
    @task = Task.new(name: params[:task][:name],
                     description: params[:task][:description],
                     completion_date: complete_date,
                     done: done_boolean)
    if @task.save
      redirect_to @task
    else
      # This line overrides the default rendering behavior, which
      # would have been to render the "create" view.
      render "new"
    end
  end

  def delete
  end

end

#
